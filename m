Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo1.mail-out.ovh.net ([188.165.38.232]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLZuw-0007DH-59
 for barebox@lists.infradead.org; Mon, 16 Sep 2013 14:36:46 +0000
Received: from mail615.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id C579D10049DB
 for <barebox@lists.infradead.org>; Mon, 16 Sep 2013 16:36:24 +0200 (CEST)
Date: Mon, 16 Sep 2013 16:37:33 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130916143733.GF21829@ns203013.ovh.net>
References: <20130915112850.GC21829@ns203013.ovh.net>
 <1379244654-30716-1-git-send-email-plagnioj@jcrosoft.com>
 <1379244654-30716-2-git-send-email-plagnioj@jcrosoft.com>
 <20130916083304.GW30088@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130916083304.GW30088@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:33 Mon 16 Sep     , Sascha Hauer wrote:
> On Sun, Sep 15, 2013 at 01:30:52PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > so we guarantee that barebox is secured again user interaction
> > 
> > +static bool console_input_allow = false;
> > +
> > +static int console_input_allow_set(struct device_d *dev, struct param_d *p, const char *val)
> > +{
> > +	int ret = dev_param_set_generic(dev, p, val);
> > +
> > +	if (val && simple_strtoul(val, NULL, 10))
> > +		console_input_allow = true;
> > +	else
> > +		console_input_allow = false;
> > +
> > +	return ret;
> > +}
> > +
> > +static int console_global_init(void)
> > +{
> > +	globalvar_add("console.input_allow", console_input_allow_set, NULL, 0);
> > +
> > +	if (IS_ENABLED(CONFIG_CMD_LOGIN) && is_passwd_enable())
> > +		setenv("global.console.input_allow", "0");
> > +	else
> > +		setenv("global.console.input_allow", "1");
> > +
> > +	return 0;
> > +}
> > +late_initcall(console_global_init);
> 
> With the attached patch applied the above would go down to:
> 
> static int console_input_allow;
> 
> static int console_global_init(void)
> {
> 	dev_add_param_bool(&global_device, "console.input_allow",
> 		NULL, NULL, &console_input_allow, NULL);

I'm not a fan to export the global_device but I like the dev_addxxx

as if we decide to allocate it we need to fix up a lot of code :(

Best Regards,
J.
> 	return 0;
> }
> late_initcall(console_global_init);
> 
> 8<----------------------------------------------------------------------
> 
> From ae4a37fce8637280751fa75a58ea658b61c3a190 Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Mon, 16 Sep 2013 10:17:26 +0200
> Subject: [PATCH] globalvar: Make global_device global
> 
> This makes global_device accessible globally so that global variables
> of a certain type can be added with dev_add_param_*
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/globalvar.c  | 2 +-
>  include/globalvar.h | 3 +++
>  2 files changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/common/globalvar.c b/common/globalvar.c
> index edb66dd..6ef4a6a 100644
> --- a/common/globalvar.c
> +++ b/common/globalvar.c
> @@ -6,7 +6,7 @@
>  #include <magicvar.h>
>  #include <generated/utsrelease.h>
>  
> -static struct device_d global_device = {
> +struct device_d global_device = {
>  	.name = "global",
>  	.id = DEVICE_ID_SINGLE,
>  };
> diff --git a/include/globalvar.h b/include/globalvar.h
> index c2a13b3..a9d01d4 100644
> --- a/include/globalvar.h
> +++ b/include/globalvar.h
> @@ -2,6 +2,9 @@
>  #define __GLOBALVAR_H
>  
>  #include <param.h>
> +#include <driver.h>
> +
> +extern struct device_d global_device;
>  
>  #ifdef CONFIG_GLOBALVAR
>  int globalvar_add_simple(const char *name, const char *value);
> -- 
> 1.8.4.rc3
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
