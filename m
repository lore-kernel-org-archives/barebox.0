Delivery-date: Tue, 05 Dec 2023 09:20:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAQeu-003wTU-2x
	for lore@lore.pengutronix.de;
	Tue, 05 Dec 2023 09:20:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAQeu-00068G-TD
	for lore@pengutronix.de; Tue, 05 Dec 2023 09:20:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1lE/tu/kgJw33JqXXXljp8hhjkGdOP2NK30QNR94Tdk=; b=hlxgdWfAADxkGRuKBM06BBlD6I
	fVa4ivdn8FK3kcfccSZ6pVJvICjEST56Hd1zJQIklhdolxUGhQQ3QSzoIVCQSR7aOIXi7owmPpUDX
	LjzDsvkxZkV9DV/Imr09B+hi90YF+2DD96DYxBOFjsl7s3PxiFSh/UV1/b3ZTuNjnLw5z2hrcPHho
	zNrxxakofOSzpEAWsolWgBcfZELcbfFt3K997PhXkriK0TZoyqECwcIR4Pt+iEjQpKO7Adz23mT1j
	FvzReGxTkNZvx8/1UEdQT8LkThn5s2xM6PDVPhnkHo0b1PpHoIf2cBSKc185jthWHdluF3A7tgnVS
	H/u6r+5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQdd-006cts-0E;
	Tue, 05 Dec 2023 08:18:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQdZ-006csy-0h
	for barebox@lists.infradead.org;
	Tue, 05 Dec 2023 08:18:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQdX-0005vF-W9; Tue, 05 Dec 2023 09:18:36 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQdX-00DhXY-Jq; Tue, 05 Dec 2023 09:18:35 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQdX-005M15-Hb; Tue, 05 Dec 2023 09:18:35 +0100
Date: Tue, 5 Dec 2023 09:18:35 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231205081835.GS1057032@pengutronix.de>
References: <20231204165238.1131311-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231204165238.1131311-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_001837_252246_FD37C579 
X-CRM114-Status: GOOD (  22.08  )
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
Subject: Re: [PATCH master] clk: ti-sci: fix build failure without
 TI_SCI_PROTOCOL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Dec 04, 2023 at 05:52:38PM +0100, Ahmad Fatoum wrote:
> The SCI clk driver has an unconditional reference to
> ti_sci_get_handle(), but no dependency is specific in the Kconfig.
> Add a dependency and change defaults, so it's enabled by default.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/clk/Kconfig      | 9 +++++++++
>  drivers/clk/Makefile     | 2 +-
>  drivers/firmware/Kconfig | 1 +
>  3 files changed, 11 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
> index 076e77c8590f..a3772ed56d2a 100644
> --- a/drivers/clk/Kconfig
> +++ b/drivers/clk/Kconfig
> @@ -38,6 +38,15 @@ config COMMON_CLK_SCMI
>  	  This driver uses SCMI Message Protocol to interact with the
>  	  firmware providing all the clock controls.
>  
> +config TI_SCI_CLK
> +	tristate "TI System Control Interface clock drivers"
> +	depends on TI_SCI_PROTOCOL
> +	default ARCH_K3
> +	help
> +	  This adds the clock driver support over TI System Control Interface.
> +	  If you wish to use clock resources from the PMMC firmware, say Y.
> +	  Otherwise, say N.
> +
>  config COMMON_CLK_GPIO
>  	bool
>  	default y
> diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
> index 3ebafbf7fdad..3a2983c0a030 100644
> --- a/drivers/clk/Makefile
> +++ b/drivers/clk/Makefile
> @@ -29,4 +29,4 @@ obj-$(CONFIG_MACH_RPI_COMMON)	+= clk-rpi.o
>  obj-y				+= bcm/
>  obj-$(CONFIG_COMMON_CLK_SCMI)	+= clk-scmi.o
>  obj-$(CONFIG_COMMON_CLK_GPIO)   += clk-gpio.o
> -obj-$(CONFIG_ARCH_K3)		+= ti-sci-clk.o
> +obj-$(CONFIG_TI_SCI_CLK)	+= ti-sci-clk.o
> diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
> index ee91b2b7fa6d..e37099aa6141 100644
> --- a/drivers/firmware/Kconfig
> +++ b/drivers/firmware/Kconfig
> @@ -46,6 +46,7 @@ config QEMU_FW_CFG
>  config TI_SCI_PROTOCOL
>  	bool "TI System Control Interface (TISCI) Message Protocol"
>  	depends on TI_MESSAGE_MANAGER
> +	default ARCH_K3
>  	help
>  	  TI System Control Interface (TISCI) Message Protocol is used to manage
>  	  compute systems such as ARM, DSP etc with the system controller in
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


