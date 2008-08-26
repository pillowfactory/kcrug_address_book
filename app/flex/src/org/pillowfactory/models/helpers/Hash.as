package  org.pillowfactory.models.helpers
{
        public dynamic class Hash
        {
                public function Hash(hash:Object=null) {
                        super();
                        this.merge(hash);
                }

                /**
                 * Adds the contents of other to this, overwriting entries with duplicate keys with those from other.
                 */
                public function merge(other:Object):Hash {
                        if(other) {
                                for( var prop:* in other ) {
                                        this[prop] = other[prop];
                                }
                        }

                        return this;
                }

                /**
                 * Delete the keys and values from the Hash.
                 * Return this Hash.
                 */
                public function remove(keys:Array):Hash {
                        for(var i:int = 0; i<keys.length; i++) {
                                delete this[keys[i]];
                        }

                        return this;
                }
        }
}