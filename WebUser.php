<?php 
class WebUser extends CWebUser
{
    /**
     * Overrides a Yii method that is used for roles in controllers (accessRules).
     *
     * @param string $operation Name of the operation required (here, a role).
     * @param mixed $params (opt) Parameters for this operation, usually the object to access.
     * @return bool Permission granted?
     */
    public function checkAccess($operation, $params=array())
    {
        if (empty($this->id)) {
            // Not identified => no rights
            return false;
        }
      /* Multiple roles based on http://www.yiiframework.com/wiki/328/simple-rbac/#c10792  
		  $roles = explode(',', $this->getState("roles"));
 
		  if (in_array('admin', $roles) || in_array($operation, $roles))
		     return true;
    }
}
