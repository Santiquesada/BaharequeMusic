public class Phrasing
{
fun int counting0(int Notes[])
{
    
    
  0=>int counterofm;   
    for(0=>int i;i<Notes.size();i++)
    {
         if (Notes[i]<0)
        {
           counterofm+1=>counterofm;
        }
        
    }
    Notes.size()-counterofm=>int sizedeleting;
    
    return sizedeleting;
    
}
fun int [] deletingminus(int Notes[])
{
    int finalNotes[counting0(Notes)];
    0=>int j;
    0=>int flag;
    for(0=>int i;i<Notes.size();i++)
    {
        
        if ((Notes[i]>=0)&&(flag==0))
        {
            Notes[i]=>finalNotes[j];
            j++;
            
        }
        if ((Notes[i]>=0)&&(flag==1))
        {
           Notes[i]-100000=>finalNotes[j];
            j++;
            
        }
         if ((Notes[i]<0)&&(flag==0))
        {
           1=>flag;
        }
         else if ((Notes[i]<0)&&(flag==1))
        {
           0=>flag;
        }
        
        
    }
    return finalNotes;
}
fun float[] definingBeat(int Notes[], float Beat2, int percentage, int type)
{
    deletingminus(Notes)@=>int NM[];
    float Beat[NM.size()];
    0=>int flag;
    if(type==1)//Binary phrasing
    {
        for(0=>int i;i<NM.size();i++)
           
    {
      if ((NM[i])>=0 &&flag==0)
      {
          
          Beat2*(1+percentage*0.01)=>Beat[i];
          1=>flag;
      }
      else if ((NM[i])>=0 &&flag==1)
      {
          Beat2*(1-percentage*0.01)=>Beat[i];
          0=>flag;
      }
       if ((NM[i])<0 &&flag==0)
      {
          
          0.5*(Beat2*(1+percentage*0.01))=>Beat[i];
           0.5*(Beat2*(1+percentage*0.01))=>Beat[i+1];
          1=>flag;
          i++;
      }
      else if ((NM[i])<0 &&flag==1)
      {
         0.5*( Beat2*(1-percentage*0.01))=>Beat[i];
          0.5*( Beat2*(1-percentage*0.01))=>Beat[i+1];
          0=>flag;
          i++;
      }
      
    }
    }
    else //ternary phrasing 
    {
        if(type==2)//Binary phrasing
    {
        for(0=>int i;i<NM.size();i++)
           
    {
      if ((NM[i])>=0 &&flag==0)
      {
          
          Beat2*(1+percentage*0.01)=>Beat[i];
          1=>flag;
      }
      else if ((NM[i])>=0 &&flag==1)
      {
          Beat2*(1+percentage*0.01)=>Beat[i];
          2=>flag;
      }
      else if ((NM[i])>=0 &&flag==2)
      {
          
          Beat2*(1-percentage*0.02)=>Beat[i];
          0=>flag;
      }
     
       if ((NM[i])<0 &&flag==0)
      {
          
          0.5*(Beat2*(1+percentage*0.01))=>Beat[i];
           0.5*(Beat2*(1+percentage*0.01))=>Beat[i+1];
          1=>flag;
          i++;
      }
      else if ((NM[i])<0 &&flag==1)
      {
         0.5*( Beat2*(1+percentage*0.01))=>Beat[i];
          0.5*( Beat2*(1+percentage*0.01))=>Beat[i+1];
          2=>flag;
          i++;
      }
      else if ((NM[i])<0 &&flag==2)
      {
         0.5*( Beat2*(1-percentage*0.02))=>Beat[i];
          0.5*( Beat2*(1-percentage*0.02))=>Beat[i+1];
          0=>flag;
          i++;
      }
      
    }
    }
    }
    return Beat;
}
fun int[] absNotes(int Notes[])
{
    deletingminus(Notes)@=>int FN[];
    int FNabs[FN.size()];
     for(0=>int i;i<FN.size();i++)
    {
         if (FN[i]>=0)
        {
            FN[i]=>FNabs[i];
        }
        else
            FN[i]+100000=>FNabs[i];
        
    } 
    return FNabs;
}
}
/*
Phrasing s;
[-1,1240,0,-1,1560,1564,0,0,0,0,0,0]@=>int Notes[];
s.absNotes(Notes)@=>int finalNotes[];
s.definingBeat(Notes,1,0,2)@=>float finalBeats[];
for(0=>int i;i< finalBeats.size();i++)
    {
       <<<finalBeats[i]>>>;
        
    }
*/