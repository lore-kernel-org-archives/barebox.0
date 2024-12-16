Delivery-date: Mon, 16 Dec 2024 09:20:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN6L0-008kUU-2E
	for lore@lore.pengutronix.de;
	Mon, 16 Dec 2024 09:20:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN6L0-0007lL-Kk
	for lore@pengutronix.de; Mon, 16 Dec 2024 09:20:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IQVqseuHZlOQbR78fxvRyvDXLVuOwV5yBhWeivlCM90=; b=cjm+4qfgDxTMIgd6TRJwcyUxZP
	MdmtMaDMhq5WblKtHO+J/t401Y8Dg2kzqUTWXAhuVrBU1Kkc0tFX25o9Xo33ywCljEJLAtWQSmu0u
	7H2UhIKgSi4194hfABtOLBSeQNb1NjsjUvk70eL0IbHNFPXhL+lEXXwXUV9ElVvFCFQcQR6JT5rNF
	VMHvkR+Cn232wqCkmJKqDDBdnOsGvEJh7At2n9U3mfbHxzKF7lrZj6lyJGX+6xESBVweg3sX2FyuW
	z6bqHlgHBnSS79hhriK6n2ZEXyc4LrRuAELzEuFxWTLi/DGKTxSoyDyMbV2kaLo237RDchexKp/Ro
	LWEfc40Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN6KP-00000009N3n-1yj5;
	Mon, 16 Dec 2024 08:19:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN6JN-00000009MvC-0rTl
	for barebox@lists.infradead.org;
	Mon, 16 Dec 2024 08:18:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tN6JK-0007TU-2H; Mon, 16 Dec 2024 09:18:38 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tN6JJ-003f5Y-0N;
	Mon, 16 Dec 2024 09:18:37 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tN6JJ-002WE2-2Z;
	Mon, 16 Dec 2024 09:18:37 +0100
Date: Mon, 16 Dec 2024 09:18:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <Z1_iXdYw8Hpx9uZ6@pengutronix.de>
References: <20241213-toradex-colibri-imx6-v1-1-afb618cbf25b@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241213-toradex-colibri-imx6-v1-1-afb618cbf25b@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_001841_245043_66A865A7 
X-CRM114-Status: GOOD (  17.80  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: boards: Add support for todarex colibri imx6 on iris
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Jonas,

On Fri, Dec 13, 2024 at 03:06:59PM +0100, Jonas Rebmann wrote:
> +static void eth_init(void)
> +{
> +        void __iomem *iomux = (void *)MX6_IOMUXC_BASE_ADDR;

IOMEM() instead of casting to void *.

> +ENTRY_FUNCTION(start_imx6dl_colibri_iris, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	imx6_cpu_lowlevel_init();
> +
> +	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
> +		setup_uart();
> +	}
> +
> +	fdt = __dtb_z_imx6dl_colibri_iris_start + get_runtime_offset();
> +	barebox_arm_entry(0x10000000, SZ_512M, fdt);
> +}

Rather do a:

	relocate_to_current_adr();
	setup_c();

Then jump to a noinline function to continue startup.

Additionally to setting up the UART for _ll access you can do
a

	pbl_set_putc(imx_uart_putc, uart1base);

The advantage is that you no longer have to enable CONFIG_DEBUG_LL to
get early console output, but only CONFIG_PBL_CONSOLE.

You can do the UART setup unconditionally, no need to hide that behind
CONFIG_DEBUG_LL.

> +
> +ENTRY_FUNCTION(start_imx6s_colibri_iris, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	imx6_cpu_lowlevel_init();
> +
> +	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
> +		setup_uart();
> +	}
> +
> +	fdt = __dtb_z_imx6dl_colibri_iris_start + get_runtime_offset();
> +	barebox_arm_entry(0x10000000, SZ_256M, fdt);
> +}

You should be able to call imx6q_barebox_entry() instead here. This
will read the amount of DRAM back from the controller. No need to
distinguish between both board anymore and you can merge both images
into one.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


