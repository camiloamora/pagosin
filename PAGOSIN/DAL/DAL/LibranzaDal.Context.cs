﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAL
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Objects;
    using System.Data.Objects.DataClasses;
    using System.Linq;
    
    public partial class PAGOSIN : DbContext
    {
        public PAGOSIN()
            : base("name=PAGOSIN")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
    
        public virtual ObjectResult<Ano_SelectAll_Result> Ano_SelectAll()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Ano_SelectAll_Result>("Ano_SelectAll");
        }
    
        public virtual ObjectResult<Dpto_SelectAll_Result> Dpto_SelectAll()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Dpto_SelectAll_Result>("Dpto_SelectAll");
        }
    
        public virtual ObjectResult<Fuerza_SelectAll_Result> Fuerza_SelectAll()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Fuerza_SelectAll_Result>("Fuerza_SelectAll");
        }
    
        public virtual ObjectResult<Grado_SelectAll_Result> Grado_SelectAll()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Grado_SelectAll_Result>("Grado_SelectAll");
        }
    
        public virtual ObjectResult<Mes_SelectAll_Result> Mes_SelectAll()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Mes_SelectAll_Result>("Mes_SelectAll");
        }
    
        public virtual ObjectResult<Movimientos_SelectAll_Result> Movimientos_SelectAll()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Movimientos_SelectAll_Result>("Movimientos_SelectAll");
        }
    }
}
