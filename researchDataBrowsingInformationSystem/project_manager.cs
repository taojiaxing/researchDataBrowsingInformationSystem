//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace researchDataBrowsingInformationSystem
{
    using System;
    using System.Collections.Generic;
    
    public partial class project_manager
    {
        public int ID { get; set; }
        public string project_id { get; set; }
        public string Use_id { get; set; }
        public sbyte Right { get; set; }
        public string Remark { get; set; }
    
        public virtual project project { get; set; }
        public virtual user user { get; set; }
    }
}
