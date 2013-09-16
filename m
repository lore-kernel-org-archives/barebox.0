Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLaWz-0008Uy-Eu
 for barebox@lists.infradead.org; Mon, 16 Sep 2013 15:16:06 +0000
Date: Mon, 16 Sep 2013 17:15:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130916151543.GA30088@pengutronix.de>
References: <20130915112850.GC21829@ns203013.ovh.net>
 <1379244654-30716-1-git-send-email-plagnioj@jcrosoft.com>
 <1379244654-30716-2-git-send-email-plagnioj@jcrosoft.com>
 <20130916083304.GW30088@pengutronix.de>
 <20130916143733.GF21829@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130916143733.GF21829@ns203013.ovh.net>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/4] login: disable input console if password wrong
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 16, 2013 at 04:37:33PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 10:33 Mon 16 Sep     , Sascha Hauer wrote:
> > On Sun, Sep 15, 2013 at 01:30:52PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > so we guarantee that barebox is secured again user interaction
> > > 
> > > +static bool console_input_allow = false;
> > > +
> > > +static int console_input_allow_set(struct device_d *dev, struct param_d *p, const char *val)
> > > +{
> > > +	int ret = dev_param_set_generic(dev, p, val);
> > > +
> > > +	if (val && simple_strtoul(val, NULL, 10))
> > > +		console_input_allow = true;
> > > +	else
> > > +		console_input_allow = false;
> > > +
> > > +	return ret;
> > > +}
> > > +
> > > +static int console_global_init(void)
> > > +{
> > > +	globalvar_add("console.input_allow", console_input_allow_set, NULL, 0);
> > > +
> > > +	if (IS_ENABLED(CONFIG_CMD_LOGIN) && is_passwd_enable())
> > > +		setenv("global.console.input_allow", "0");
> > > +	else
> > > +		setenv("global.console.input_allow", "1");
> > > +
> > > +	return 0;
> > > +}
> > > +late_initcall(console_global_init);
> > 
> > With the attached patch applied the above would go down to:
> > 
> > static int console_input_allow;
> > 
> > static int console_global_init(void)
> > {
> > 	dev_add_param_bool(&global_device, "console.input_allow",
> > 		NULL, NULL, &console_input_allow, NULL);
> 
> I'm not a fan to export the global_device but I like the dev_addxxx

I'm not a fan of this also. The alternative would be to:

static inline struct param_d *global_add_param_bool(const char *name,
		int (*set)(struct param_d *p, void *priv),
		int (*get)(struct param_d *p, void *priv),
		int *value, void *priv)
{
	return dev_add_param_bool(&global_device, name, get, set,
			value, priv;
}

(We would still export global_device but could convert the above to non
static inline functions later should we have to).

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
