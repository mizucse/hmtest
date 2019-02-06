using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Hotel_management
{
    #region Sett_country
    public class Sett_country
    {
        #region Member Variables
        protected int _id;
        protected string _name;
        protected int _p_id;
        protected int _type;
        protected int _ware;
        protected int _model;
        protected int _pby;
        #endregion
        #region Constructors
        public Sett_country() { }
        public Sett_country(string name, int p_id, int type, int ware, int model, int pby)
        {
            this._name=name;
            this._p_id=p_id;
            this._type=type;
            this._ware=ware;
            this._model=model;
            this._pby=pby;
        }
        #endregion
        #region Public Properties
        public virtual int Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual string Name
        {
            get {return _name;}
            set {_name=value;}
        }
        public virtual int P_id
        {
            get {return _p_id;}
            set {_p_id=value;}
        }
        public virtual int Type
        {
            get {return _type;}
            set {_type=value;}
        }
        public virtual int Ware
        {
            get {return _ware;}
            set {_ware=value;}
        }
        public virtual int Model
        {
            get {return _model;}
            set {_model=value;}
        }
        public virtual int Pby
        {
            get {return _pby;}
            set {_pby=value;}
        }
        #endregion
    }
    #endregion
}