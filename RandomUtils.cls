global class RandomUtils {
	
	private static final IntegerRange BINARY_RANGE = new IntegerRange(0,1);
	
    global static Boolean nextBoolean(){
        return nextInteger(BINARY_RANGE,true) == 1;
    }

    global static Integer nextInteger(){
        return nextInteger(ApexLangUtils.MAX_INTEGER_RANGE,true);
    }

    global static Integer nextInteger(Integer max){
        return nextInteger(new IntegerRange(0,Math.abs(max)),true);
    }
    
    global static Integer nextInteger(Integer max, Boolean inclusive){
        return nextInteger(new IntegerRange(0,Math.abs(max)),inclusive);
    }
    
    global static Integer nextInteger(Integer min, Integer max){
        return nextInteger(new IntegerRange(min,max),true);
    }

    global static Integer nextInteger(Integer min, Integer max, Boolean inclusive){
        return nextInteger(new IntegerRange(min,max),inclusive);
    }

    global static Integer nextInteger(IntegerRange range){
        return nextInteger(range,true);
    }
    
    global static Integer nextInteger(IntegerRange range, Boolean inclusive){
        if(range == null){
            return null;
        }
        if(inclusive && (range.max() - range.min()) <= 0){
            return range.min();
        }
        if(!inclusive && (range.max() - range.min()) <= 2){
            return range.min();
        }
        return (Integer) (
            Math.round(
                Math.floor(
                    Math.random()
                    * ((range.max()-range.min()+(inclusive ? 1 : -1)))
                )
            ) 
            + range.min()
            + (inclusive ? 0 : 1)
        );
    }
    
    global static Long nextLong(){
        return nextLong(ApexLangUtils.MAX_LONG_RANGE,true);
    }

    global static Long nextLong(Long max){
        return nextLong(new LongRange(0,Math.abs(max)),true);
    }
    
    global static Long nextLong(Long max, Boolean inclusive){
        return nextLong(new LongRange(0,Math.abs(max)),inclusive);
    }
    
    global static Long nextLong(Long min, Long max){
        return nextLong(new LongRange(min,max),true);
    }

    global static Long nextLong(Long min, Long max, Boolean inclusive){
        return nextLong(new LongRange(min,max),inclusive);
    }

    global static Long nextLong(LongRange range){
        return nextLong(range,true);
    }
    
    global static Long nextLong(LongRange range, Boolean inclusive){
        if(range == null){
            return null;
        }
        if(inclusive && (range.max() - range.min()) <= 0){
            return range.min();
        }
        if(!inclusive && (range.max() - range.min()) <= 2){
            return range.min();
        }
        return 
            Math.round(
                Math.floor(
                    Math.random()
                    * ((range.max()-range.min()+(inclusive ? 1 : -1)))
                )
            ) 
            + range.min()
            + (inclusive ? 0 : 1);
    }
    
    
}