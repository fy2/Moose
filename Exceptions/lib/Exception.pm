package Exception;
use Moose;
extends 'Throwable::Error';

package Exception::Argument;
use Moose;
extends 'Exception';

package Exception::Development;
use Moose;
extends 'Exception';

package Exception::NotImplementedYet;
use Moose;
extends 'Exception';

no Moose;