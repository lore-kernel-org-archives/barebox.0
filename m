Delivery-date: Fri, 03 Feb 2023 09:00:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNqza-00CPVj-QO
	for lore@lore.pengutronix.de; Fri, 03 Feb 2023 09:00:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNqzY-0002M9-3z
	for lore@pengutronix.de; Fri, 03 Feb 2023 09:00:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CLWyg+7GfVbSn4Lu6adng2Z9nmzu1tfBrJoBQdbriUs=; b=P5AMX0OYq6E08AUJ2z7TyzDN3C
	teHVN2jaaExOLSk86ump9DIjb5Vei2tlAbZ34QBwQT9ukROmngWWd1tLdbfBkgvN5q6aku//kMgBe
	UaUOmArkxMCzRJBQAzFcM2Yps93X+2NeF1r6c0upUBYLKi/GkWyJYUFkKn7WlGlK0jZGytTa9FBDh
	zkp0FaLTTBWWjp5KBos3GCtaOTnoeZE7y3rEDNL1U9W7Ue1yXwarxTGP7X4HibCbMaXz3MUi6Rkif
	3KEGuWxarvrd0Pfw5S/z0sV5RZFK8yguH1+n8bhFQOKJAF3P/CUwr9REvTBJS6dfxhy5qBgqVTODF
	C4MnJtPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNqyQ-000tnG-Qg; Fri, 03 Feb 2023 07:59:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNqyL-000tlE-Pm
	for barebox@lists.infradead.org; Fri, 03 Feb 2023 07:59:03 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pNqyK-0002CL-Bc; Fri, 03 Feb 2023 08:59:00 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pNqyI-0004yP-Nk; Fri, 03 Feb 2023 08:58:58 +0100
Date: Fri, 3 Feb 2023 08:58:58 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Christian Melki <christian.melki@t2data.com>
Message-ID: <20230203075858.GP13319@pengutronix.de>
References: <20230202133415.319020-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230202133415.319020-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_235901_862320_F5137CD5 
X-CRM114-Status: GOOD (  18.16  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master v2 1/3] include: linux/printk: implement pr_*_once
 macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Feb 02, 2023 at 02:34:13PM +0100, Ahmad Fatoum wrote:
> These are useful as a less verbose alternative to WARN_ONCE, which also
> prints a stack trace if possible.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   unchanged
> ---
>  include/linux/printk.h | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/include/linux/printk.h b/include/linux/printk.h
> index 2fd6551e0ccb..a9d1b05f6f0f 100644
> --- a/include/linux/printk.h
> +++ b/include/linux/printk.h
> @@ -94,6 +94,15 @@ static inline int dev_err_probe(struct device *dev, int err, const char *fmt,
>  		(level) <= LOGLEVEL ? pr_print((level), (format), ##args) : 0; \
>  	 })
>  
> +#define __pr_printk_once(level, format, args...) do {	\
> +	static bool __print_once;			\
> +							\
> +	if (!__print_once && (level) <= LOGLEVEL) {	\
> +		__print_once = true;			\
> +		pr_print((level), (format), ##args);	\
> +	}						\
> +} while (0)
> +
>  #ifndef pr_fmt
>  #define pr_fmt(fmt) fmt
>  #endif
> @@ -110,7 +119,18 @@ static inline int dev_err_probe(struct device *dev, int err, const char *fmt,
>  #define pr_vdebug(fmt, arg...)	__pr_printk(8, pr_fmt(fmt), ##arg)
>  #define pr_cont(fmt, arg...)	__pr_printk(-1, fmt, ##arg)
>  
> +#define pr_emerg_once(fmt, arg...)	__pr_printk_once(0, pr_fmt(fmt), ##arg)
> +#define pr_alert_once(fmt, arg...)	__pr_printk_once(1, pr_fmt(fmt), ##arg)
> +#define pr_crit_once(fmt, arg...)	__pr_printk_once(2, pr_fmt(fmt), ##arg)
> +#define pr_err_once(fmt, arg...)	__pr_printk_once(3, pr_fmt(fmt), ##arg)
> +#define pr_warning_once(fmt, arg...)	__pr_printk_once(4, pr_fmt(fmt), ##arg)
> +#define pr_notice_once(fmt, arg...)	__pr_printk_once(5, pr_fmt(fmt), ##arg)
> +#define pr_info_once(fmt, arg...)	__pr_printk_once(6, pr_fmt(fmt), ##arg)
> +#define pr_debug_once(fmt, arg...)	__pr_printk_once(7, pr_fmt(fmt), ##arg)
> +#define pr_vdebug_once(fmt, arg...)	__pr_printk_once(8, pr_fmt(fmt), ##arg)
> +
>  #define pr_warn			pr_warning
> +#define pr_warn_once		pr_warning_once
>  
>  int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size,
>  		   int swab);
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


