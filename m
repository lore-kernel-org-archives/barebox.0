Delivery-date: Fri, 29 Apr 2022 10:09:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nkLgf-001pF4-B9
	for lore@lore.pengutronix.de; Fri, 29 Apr 2022 10:09:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nkLgc-0005MT-O8
	for lore@pengutronix.de; Fri, 29 Apr 2022 10:09:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KP9YBWKudt5hPeKm0YyJo5SAKHrF1jPkQL0cEE5N3Os=; b=hPeuu1lrfkAjHr8IeMXzgvRfMb
	RGKGkBQlWzXJnHwSd1vII+oRkuANQuAjPegRIK8+mRG4Fu3jx+2LMgjGjMzJAoIfnMbTwDNu1mzju
	8hQv5ynBMpy1esOkWACSnN4YzARIJtAbnbIx1+Awcdb6HciLTnXwLY3+MweD5SR8PfGtTMQ+4ob4e
	kyp31Hj4akX9U4U+dJkc6Bn+zZPxd5TTR0+wnozIKwX2pDa3ew1xBo+lSwXgMgCvErOc+2DO+Xep6
	Mfd+Yy6vbE4ATXAoE8ktEFNqjKO9fw5h7X7JvWXiueS++XjqaK3XAms/+cC1NwD2+P+Rhb08C552H
	A6tci4sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkLf5-00A4aq-Mp; Fri, 29 Apr 2022 08:07:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkLez-00A4ZC-8G
 for barebox@lists.infradead.org; Fri, 29 Apr 2022 08:07:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nkLex-00054c-75; Fri, 29 Apr 2022 10:07:27 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nkLew-0006vW-Tm; Fri, 29 Apr 2022 10:07:26 +0200
Date: Fri, 29 Apr 2022 10:07:26 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220429080726.GV4012@pengutronix.de>
References: <20220427121413.1887458-1-o.rempel@pengutronix.de>
 <20220427121413.1887458-4-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220427121413.1887458-4-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:52:34 up 29 days, 20:22, 78 users,  load average: 0.25, 0.17, 0.11
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_010729_332242_08C65091 
X-CRM114-Status: GOOD (  34.30  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 3/5] of: add generic of_fixup_machine_compatible()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Apr 27, 2022 at 02:14:11PM +0200, Oleksij Rempel wrote:
> Add generic function to extend/fixup machine compatible.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  common/Kconfig   |  5 +++++
>  common/misc.c    | 23 +++++++++++++++++++++++
>  common/oftree.c  | 41 +++++++++++++++++++++++++++++++++++++++++
>  include/common.h |  3 +++
>  include/of.h     |  6 ++++++
>  5 files changed, 78 insertions(+)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index d08302a573..9b65b728c0 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1066,6 +1066,11 @@ config MACHINE_ID
>  	  Note: if no hashable information is available no machine id will be passed
>  	  to the kernel.
>  
> +config MACHINE_FIXUP
> +	bool "fix up machine compatible"
> +	help
> +	  fixup machine compatible supplied by board code info device tree

s/info/into/

> +
>  config SERIAL_NUMBER_FIXUP
>  	bool "fix up board serial number"
>  	help
> diff --git a/common/misc.c b/common/misc.c
> index 3b3bc05bfd..0f6de3e9e5 100644
> --- a/common/misc.c
> +++ b/common/misc.c
> @@ -150,6 +150,7 @@ BAREBOX_MAGICVAR(global.model, "Product name of this hardware");
>  
>  static char *hostname;
>  static char *serial_number;
> +static char *of_machine_compatible;
>  
>  /*
>   * The hostname is supposed to be the shortname of a board. It should
> @@ -195,6 +196,28 @@ const char *barebox_get_serial_number(void)
>  
>  BAREBOX_MAGICVAR(global.serial_number, "Board serial number");
>  
> +void barebox_set_of_machine_compatible(const char *__compatible)
> +{
> +	free(of_machine_compatible);
> +	of_machine_compatible = xstrdup(__compatible);
> +}
> +
> +const char *barebox_get_of_machine_compatible(void)
> +{
> +	return of_machine_compatible;
> +}
> +
> +static int of_kernel_init(void)
> +{
> +	globalvar_add_simple_string("of.kernel.add_machine_compatible",
> +				    &of_machine_compatible);
> +
> +	return 0;
> +}
> +device_initcall(of_kernel_init);
> +
> +BAREBOX_MAGICVAR(global.of.kernel.add_machine_compatible, "Additional machine/board compatible");
> +
>  void __noreturn panic(const char *fmt, ...)
>  {
>  	va_list args;
> diff --git a/common/oftree.c b/common/oftree.c
> index c6d75055cc..76239476e0 100644
> --- a/common/oftree.c
> +++ b/common/oftree.c
> @@ -216,6 +216,15 @@ static int of_fixup_bootargs(struct device_node *root, void *unused)
>  
>  	}
>  
> +	if (IS_ENABLED(CONFIG_MACHINE_FIXUP)) {
> +		const char *compat;
> +
> +		compat = getenv("global.of.kernel.add_machine_compatible");
> +		if (compat)
> +			of_fixup_machine_compatible(root, compat);
> +
> +	}
> +
>  	node = of_create_node(root, "/chosen");
>  	if (!node)
>  		return -ENOMEM;
> @@ -487,3 +496,35 @@ int of_autoenable_i2c_by_component(char *path)
>  
>  	return ret;
>  }
> +
> +int of_fixup_machine_compatible(struct device_node *root, const char *compat)
> +{
> +	int cclen = 0, clen = strlen(compat) + 1;
> +	const char *curcompat;
> +	void *buf;
> +
> +	if (!root) {
> +		root = of_get_root_node();
> +		if (!root)
> +			return -ENODEV;
> +	}
> +
> +	curcompat = of_get_property(root, "compatible", &cclen);
> +
> +	buf = xzalloc(cclen + clen);
> +
> +	memcpy(buf, compat, clen);
> +
> +	if (curcompat)
> +		memcpy(buf + clen, curcompat, cclen);
> +
> +	/*
> +	 * Prepend the compatible from board entry to the machine compatible.
> +	 * Used to match bootspec entries against it.
> +	 */

This sentence doesn't make sense in the context this function is called
in this patch. In this patch this function is called in a of_fixup which
fixes up the kernel device tree, but the sentence above reads as it
should be called on the barebox internal device tree.

maybe of_prepend_machine_compatible() would be a better name for this
function.

Also, should we check if the passed device tree already is compatible to
@compat before we potentially add the same compatible again?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

