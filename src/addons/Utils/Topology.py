# -*- coding: iso-8859-1 -*-
            seq.append(topo_to_add)
        seq = []
        hashes = [] #list that stores hashes to avoid redundancy
            current_item = self.topExp.Current()
            current_item_hash = current_item.__hash__()
            if not current_item_hash in hashes:
                hashes.append(current_item_hash)
        # Convert occ_seq to python list
        occ_iterator = TopTools_ListIteratorOfListOfShape(occ_seq)
        while occ_iterator.More():
            topo_to_add = topoTypes[topologyType](occ_iterator.Value())
            seq.append(topo_to_add)
            occ_iterator.Next()