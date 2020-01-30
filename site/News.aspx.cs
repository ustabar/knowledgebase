using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Caching;

public partial class News : System.Web.UI.Page
{
    int[] bits = new int[100000];

    public void RemovedCallback(String k, Object v, System.Web.Caching.CacheItemRemovedReason r)
    {
        //do stuff when the item is removed
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        string news = "<I>New site launched 2008-02-02</I>";
        string key = Guid.NewGuid().ToString();
        Cache.Add(key, news, null, Cache.NoAbsoluteExpiration, new TimeSpan(0, 5, 0), CacheItemPriority.NotRemovable, new CacheItemRemovedCallback(this.RemovedCallback)); 
        lblNews.Text = ((string)Cache[key]);
    }
}
