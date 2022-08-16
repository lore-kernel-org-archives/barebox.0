Delivery-date: Tue, 16 Aug 2022 09:59:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNrTe-000SCH-1w
	for lore@lore.pengutronix.de; Tue, 16 Aug 2022 09:59:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNrTb-00051N-RO
	for lore@pengutronix.de; Tue, 16 Aug 2022 09:59:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1v+14Bu+zY+h+LlNGHNPYDHsR39m5G+chTj//ORw/7E=; b=J0BjDqvWVkIzXZN5v9VzOdn9sT
	r3sIrTFTK0bedWLWES+w7acx8JvA12v2/PXxSmqHfnqaf5d/DHBtAEYhrBMCjyGGm/7gFL4+sNLoa
	pAxNq/i0NGCTEo8Ojk6g3PcpwzGqwRe31DGUhnmJH0DXturuHS/Q1fmXvSs0DBnP9SZgxqoMX2KZI
	6w2rhtYAPdytzi6YPkYmkdDJWr8YLZw5wEkXO4aeiLpFzCc8GH9mUxLdriL94ZX1EogVK6VwsSPCt
	B3EiBf29dA6oND7dzQFGVD99JShmLh3kIQwpRT39x9fwJaMv4dnHNZmgxFLLO3N0jQYUf0OEQ4JD+
	81s2RdmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNrRy-00Fsmr-R0; Tue, 16 Aug 2022 07:57:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNrRo-00Fsdm-Lo
	for barebox@lists.infradead.org; Tue, 16 Aug 2022 07:57:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oNrRm-0004k1-VX; Tue, 16 Aug 2022 09:57:10 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oNrRm-0004Jv-Mh; Tue, 16 Aug 2022 09:57:10 +0200
Date: Tue, 16 Aug 2022 09:57:10 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, mfe@pengutronix.de
Message-ID: <20220816075710.GG17485@pengutronix.de>
References: <20220815091733.1973736-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220815091733.1973736-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220816_005713_866983_5FB1C378 
X-CRM114-Status: GOOD (  44.76  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usbgadget: autostart: add usbgadget_autostart helper for
 board code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On Mon, Aug 15, 2022 at 11:17:33AM +0200, Ahmad Fatoum wrote:
> barebox will rerun a setter if a nv variable changes its global variable's
> default. If setter is accessing other nv variables though, the setter
> will not rerun when they change. For this reason, usbgadget_autostart_init()
> must be registered at postenvironment_initcall() level, but this makes
> the variable only reliably usable from the shell as there's no later
> initcall level than postenvironment_initcall() for board code to run at.
> 
> Add a new usbgadget_autostart(boot enable) function that board code can
> use instead.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/usbgadget.c         | 15 ++++++++++++++-
>  include/usb/gadget-multi.h |  3 +++
>  2 files changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/common/usbgadget.c b/common/usbgadget.c
> index 2ec6d9226cca..161fd16fedb7 100644
> --- a/common/usbgadget.c
> +++ b/common/usbgadget.c
> @@ -121,6 +121,12 @@ static int usbgadget_autostart_set(struct param_d *param, void *ctx)
>  	return err;
>  }
>  
> +void usbgadget_autostart(bool enable)
> +{
> +	globalvar_set("usbgadget.autostart", enable ? "1" : "0");
> +	autostart = enable;
> +}
> +
>  static int usbgadget_globalvars_init(void)
>  {
>  	globalvar_add_simple_bool("usbgadget.acm", &acm);
> @@ -132,8 +138,15 @@ device_initcall(usbgadget_globalvars_init);
>  
>  static int usbgadget_autostart_init(void)
>  {
> -	if (IS_ENABLED(CONFIG_USB_GADGET_AUTOSTART))
> +	if (IS_ENABLED(CONFIG_USB_GADGET_AUTOSTART)) {
>  		globalvar_add_bool("usbgadget.autostart", usbgadget_autostart_set, &autostart, NULL);
> +		/* We are already at latest initcall level, yet board code
> +		 * may want to set this variable without resorting to scripts.
> +		 * Check autostart manually here, so we don't miss it.
> +		 */
> +		if (autostart)
> +			globalvar_set("usbgadget.autostart", "1");
> +	}
>  	return 0;
>  }

The code is a bit hard to follow with the approach of starting the
gadget exclusively from the setter function of global.usbgadget.autostart

Can we go with the following approach? It moves the starting of the usb
gadget to a function that first checks if all prerequisites are
fulfilled to start the gadget and then starts it if desired.

Sascha

--------------------------8<---------------------------------

>From e246fc934cbd0423cb8d98353f8cd747f875011d Mon Sep 17 00:00:00 2001
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Aug 2022 11:17:33 +0200
Subject: [PATCH] usbgadget: autostart: add usbgadget_autostart() for board
 code

global.usbgadget.autostart is registered at postenvironment level
initcall, so changing its value before that doesn't have the desired
effect of automatically starting the usb gadget.

Refactor the code so that we have a usbgadget_do_autostart() function
that first checks if it should run at all and that it's the right time
to run. This function can be called at any time and based on that
implement usbgadget_autostart() to let board code be able to trigger
the autorun functionality.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/usbgadget.c         | 37 ++++++++++++++++++++++++++++++++-----
 include/usb/gadget-multi.h |  3 +++
 2 files changed, 35 insertions(+), 5 deletions(-)

diff --git a/common/usbgadget.c b/common/usbgadget.c
index 2ec6d9226c..7291fbf4d5 100644
--- a/common/usbgadget.c
+++ b/common/usbgadget.c
@@ -20,6 +20,7 @@
 #include <system-partitions.h>
 
 static int autostart;
+static int nv_loaded;
 static int acm;
 static char *dfu_function;
 
@@ -98,13 +99,20 @@ err:
 	return ret;
 }
 
-static int usbgadget_autostart_set(struct param_d *param, void *ctx)
+static int usbgadget_do_autostart(void)
 {
 	struct usbgadget_funcs funcs = {};
 	static bool started;
 	int err;
 
-	if (!autostart || started)
+	if (!IS_ENABLED(CONFIG_USB_GADGET_AUTOSTART))
+		return 0;
+
+	/*
+	 * We want to run this function exactly once when the
+	 * environment is loaded and autostart is requested
+	 */
+	if (!nv_loaded || !autostart || started)
 		return 0;
 
 	if (get_fastboot_bbu())
@@ -121,19 +129,38 @@ static int usbgadget_autostart_set(struct param_d *param, void *ctx)
 	return err;
 }
 
+static int usbgadget_autostart_set(struct param_d *param, void *ctx)
+{
+	usbgadget_do_autostart();
+
+	return 0;
+}
+
+void usbgadget_autostart(bool enable)
+{
+	autostart = enable;
+
+	usbgadget_do_autostart();
+}
+
 static int usbgadget_globalvars_init(void)
 {
 	globalvar_add_simple_bool("usbgadget.acm", &acm);
 	globalvar_add_simple_string("usbgadget.dfu_function", &dfu_function);
+	if (IS_ENABLED(CONFIG_USB_GADGET_AUTOSTART))
+		globalvar_add_bool("usbgadget.autostart", usbgadget_autostart_set,
+				   &autostart, NULL);
 
 	return 0;
 }
-device_initcall(usbgadget_globalvars_init);
+coredevice_initcall(usbgadget_globalvars_init);
 
 static int usbgadget_autostart_init(void)
 {
-	if (IS_ENABLED(CONFIG_USB_GADGET_AUTOSTART))
-		globalvar_add_bool("usbgadget.autostart", usbgadget_autostart_set, &autostart, NULL);
+	nv_loaded = true;
+
+	usbgadget_do_autostart();
+
 	return 0;
 }
 postenvironment_initcall(usbgadget_autostart_init);
diff --git a/include/usb/gadget-multi.h b/include/usb/gadget-multi.h
index 2d8d7533a8..e67ca165c1 100644
--- a/include/usb/gadget-multi.h
+++ b/include/usb/gadget-multi.h
@@ -3,6 +3,7 @@
 #ifndef __USB_GADGET_MULTI_H
 #define __USB_GADGET_MULTI_H
 
+#include <linux/types.h>
 #include <usb/fastboot.h>
 #include <usb/dfu.h>
 #include <usb/usbserial.h>
@@ -36,4 +37,6 @@ struct usbgadget_funcs {
 
 int usbgadget_register(const struct usbgadget_funcs *funcs);
 
+void usbgadget_autostart(bool enable);
+
 #endif /* __USB_GADGET_MULTI_H */
-- 
2.30.2

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


