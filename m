Delivery-date: Mon, 13 Nov 2023 14:05:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2Wcl-00A2fD-2k
	for lore@lore.pengutronix.de;
	Mon, 13 Nov 2023 14:05:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2Wcl-0000j0-Oi
	for lore@pengutronix.de; Mon, 13 Nov 2023 14:05:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fo8jbwb0S1D0j1ai5fP/JI6d0HZM42j3vrmvuWoDbGQ=; b=kQ8HA6Vt3wA0FNOKw3pf9uSrDv
	dIBGOQZZV2Rg1jFAA4AWfBZetoNOKLysOseuidLNLIk2/2NPO2pBHhIXaHudZqg43z7DC9Gn7yJa7
	xe5j5+uNALr1pf6IUCBnk1mZrlrsbUU0XcyUcJzpVye5ISigt+5Msg9XQLm4Sf0SLFeXiNX8GuA0u
	XJZBz8DVsQ3hbquqTNIyALOisC/X8uxXhTyEXJl0EZ/9mxfzdt1eikYABooEeGEsqeJH84giC/LIc
	OQ5iGWIqA08Wkdktpero5nmJIqcOitfy5C802MWJPfIwK/6h2Z2g/3EWIHpEN8McvIPAJ/ZTySMii
	fDTcokjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2Wbc-00E10G-0y;
	Mon, 13 Nov 2023 13:03:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2WbY-00E0zi-2W
	for barebox@lists.infradead.org;
	Mon, 13 Nov 2023 13:03:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r2WbX-0000XO-Dt; Mon, 13 Nov 2023 14:03:51 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r2WbX-008k1S-1Q; Mon, 13 Nov 2023 14:03:51 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r2WbW-001p0J-VG; Mon, 13 Nov 2023 14:03:50 +0100
Date: Mon, 13 Nov 2023 14:03:50 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231113130350.GS3359458@pengutronix.de>
References: <20231109114707.1354502-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231109114707.1354502-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231113_050352_832584_31F964A5 
X-CRM114-Status: GOOD (  32.82  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] console: provide best-effort clk_get_for_console
 helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Nov 09, 2023 at 12:47:06PM +0100, Ahmad Fatoum wrote:
> From: Ahmad Fatoum <ahmad@a3f.at>
> 
> clk_get will return -EPROBE_DEFER if clock provider hasn't yet been
> probed. In a system with deep probe enabled, dependencies are probed
> on demand, so a -EPROBE_DEFER return is final and the console probe
> will never succeed.
> 
> CONFIG_DEBUG_LL is often used to debug this, but because the low-level
> console is not interactive, it's a bit cumbersome. Improve upon this a
> bit, by providing a clk_get_for_console helper that returns NULL if and
> only if we are sure that a clock provider will not be probed.
> 
> In that case, the driver can skip code paths initialization code and
> baud rate setting dependent on having access to the clock and still
> register a console that reuses what was set up by CONFIG_DEBUG_LL.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  include/console.h   | 26 ++++++++++++++++++++++++++
>  include/linux/clk.h | 21 +++++++++++++++++++++
>  2 files changed, 47 insertions(+)
> 
> diff --git a/include/console.h b/include/console.h
> index 586b68f73301..b8c901801e9f 100644
> --- a/include/console.h
> +++ b/include/console.h
> @@ -8,6 +8,7 @@
>  #define _CONSOLE_H_
>  
>  #include <param.h>
> +#include <linux/clk.h>
>  #include <linux/list.h>
>  #include <driver.h>
>  #include <serdev.h>
> @@ -208,4 +209,29 @@ static inline void console_ctrlc_allow(void) { }
>  static inline void console_ctrlc_forbid(void) { }
>  #endif
>  
> +/**
> + * clk_get_for_console - get clock, ignoring known unavailable clock controller
> + * @dev: device for clock "consumer"
> + * @id: clock consumer ID
> + *
> + * Return: a struct clk corresponding to the clock producer, a
> + * valid IS_ERR() condition containing errno or NULL if it could
> + * be determined that the clock producer will never be probed in
> + * absence of modules. The NULL return allows serial drivers to
> + * skip clock handling and rely on CONFIG_DEBUG_LL.
> + */
> +static inline struct clk *clk_get_for_console(struct device *dev, const char *id)
> +{
> +	struct clk *clk;
> +
> +	if (!IS_ENABLED(CONFIG_DEBUG_LL))
> +		return clk_get(dev, id);

There are several SoCs out there where the UART is enabled by the ROM
already, on these we don't need to have CONFIG_DEBUG_LL enabled for a
working UART.

Maybe testing for the UART enable bit in probe() would be a better
indication that the UART is already in a working state?

Sascha

> +
> +	clk = clk_get_if_available(dev, id);
> +	if (clk == NULL)
> +		dev_warn(dev, "couldn't get clock (ignoring)\n");
> +
> +	return clk;
> +}
> +
>  #endif
> diff --git a/include/linux/clk.h b/include/linux/clk.h
> index 61b4ff3127cf..f505f18a75c0 100644
> --- a/include/linux/clk.h
> +++ b/include/linux/clk.h
> @@ -14,6 +14,7 @@
>  #include <linux/spinlock.h>
>  #include <linux/stringify.h>
>  #include <linux/container_of.h>
> +#include <deep-probe.h>
>  #include <xfuncs.h>
>  
>  struct device;
> @@ -982,4 +983,24 @@ static inline struct clk *clk_get_enabled(struct device *dev, const char *id)
>  	return clk;
>  }
>  
> +/**
> + * clk_get_if_available - get clock, ignoring known unavailable clock controller
> + * @dev: device for clock "consumer"
> + * @id: clock consumer ID
> + *
> + * Return: a struct clk corresponding to the clock producer, a
> + * valid IS_ERR() condition containing errno or NULL if it could
> + * be determined that the clock producer will never be probed in
> + * absence of modules.
> + */
> +static inline struct clk *clk_get_if_available(struct device *dev, const char *id)
> +{
> +	struct clk *clk = clk_get(dev, id);
> +
> +	if (clk == ERR_PTR(-EPROBE_DEFER) && deep_probe_is_supported())
> +		return NULL;
> +
> +	return clk;
> +}
> +
>  #endif
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


