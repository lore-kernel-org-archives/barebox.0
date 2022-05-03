Delivery-date: Tue, 03 May 2022 09:05:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlmbU-000KVX-DU
	for lore@lore.pengutronix.de; Tue, 03 May 2022 09:05:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlmbT-0007mh-3z
	for lore@pengutronix.de; Tue, 03 May 2022 09:05:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aM8ioKsegcYMaJeT3gxUh2b52dz8G7aVnnD4MIMyjtQ=; b=yw9UBXmsZ5iDz8q8LeHX8g4FEm
	SVLEJVxvS7RxVdeyfVDu9zIWjfGeZjzQomh5Aqyoe8/X98SrwkV6dz0ZGC0n9Lm/2/oUtw4yzteqm
	Nr0/7tLyO3gnZrvaNuaULZTXEPBoJswAW7SFv8R4jWtPnjfe8MHGn83Xf9edamNVthuazGuVqYPyV
	ub6zn9949QgVUnEH3kuXfU952H4u2BKp96kVPh5Ljj0BFEdPSBFzyvPV2I1tgrehUHF9RN8beSYfP
	tQNYkyTebwnKgTCpIKB+aIOpx4kVVcKNygcrAXhRopld58LrssfqpCTXTxoFyRRJbhpiSJFp1W4rT
	F1mvxCug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlmZk-0046zg-7H; Tue, 03 May 2022 07:04:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlmZd-0046xm-RR
 for barebox@lists.infradead.org; Tue, 03 May 2022 07:03:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nlmZZ-0007TV-Ii; Tue, 03 May 2022 09:03:49 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nlmZZ-00020O-9I; Tue, 03 May 2022 09:03:49 +0200
Date: Tue, 3 May 2022 09:03:49 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220503070349.GZ4012@pengutronix.de>
References: <20220503044206.3232712-1-o.rempel@pengutronix.de>
 <20220503044206.3232712-4-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220503044206.3232712-4-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:44:43 up 33 days, 19:14, 73 users,  load average: 0.00, 0.08, 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220503_000353_932873_ABE2B670 
X-CRM114-Status: GOOD (  35.64  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v5 3/5] of: add generic of_fixup_machine_compatible()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 03, 2022 at 06:42:04AM +0200, Oleksij Rempel wrote:
> Add generic function to extend/fixup machine compatible.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  common/Kconfig   |  5 +++++
>  common/misc.c    | 23 +++++++++++++++++++++++
>  common/oftree.c  | 43 +++++++++++++++++++++++++++++++++++++++++++
>  include/common.h |  3 +++
>  include/of.h     |  6 ++++++
>  5 files changed, 80 insertions(+)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index f7a6a96e87..7385848dfc 100644
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

Once again: s/info/into/


> +
>  config SYSTEMD_OF_WATCHDOG
>  	bool "inform devicetree-enabled kernel of used watchdog"
>  	depends on WATCHDOG && OFTREE && FLEXIBLE_BOOTARGS
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
> index 995e7201bf..5b183192bc 100644
> --- a/common/oftree.c
> +++ b/common/oftree.c
> @@ -212,6 +212,15 @@ static int of_fixup_bootargs(struct device_node *root, void *unused)
>  	if (serialno)
>  		of_property_write_string(root, "serial-number", serialno);
>  
> +	if (IS_ENABLED(CONFIG_MACHINE_FIXUP)) {

The variable itself is added unconditionally, but it's used only when
CONFIG_MACHINE_FIXUP is enabled. This seems inconsistent. I don't think
we need this option, so drop it.

> +		const char *compat;
> +
> +		compat = getenv("global.of.kernel.add_machine_compatible");

You introduced barebox_get_of_machine_compatible() with this patch.
Please use it.

> +		if (compat)
> +			of_prepend_machine_compatible(root, compat);
> +
> +	}
> +
>  	node = of_create_node(root, "/chosen");
>  	if (!node)
>  		return -ENOMEM;
> @@ -483,3 +492,37 @@ int of_autoenable_i2c_by_component(char *path)
>  
>  	return ret;
>  }
> +
> +int of_prepend_machine_compatible(struct device_node *root, const char *compat)
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
> +	if (of_machine_is_compatible(compat)) {

You have to check the device tree you are adding the compatible to, not
the barebox internal device tree. These are not necessarily the same.

> +		pr_warn("Machine is already compatible to %s. Skip compatible modification\n",
> +			compat);

This might be a regular usecase, I don't think we need to warn here.

> +		return 0;
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
> +	of_set_property(root, "compatible", buf, cclen + clen, true);
> +
> +	free(buf);
> +
> +	return 0;
> +}

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

