Delivery-date: Mon, 17 Nov 2025 09:44:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKuq8-001v3S-17
	for lore@lore.pengutronix.de;
	Mon, 17 Nov 2025 09:44:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKuq7-0002um-Kn
	for lore@pengutronix.de; Mon, 17 Nov 2025 09:44:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FbMn4r+IX40nOCELX5clvCWZ2JffbGYgtSNJmRSgeYI=; b=qmCGKUjsdLc8ExVxptJNV+NgLK
	uZeAhi9RdXPKm6sIaZVErbbMc5jSyFqZKFDpjxpEdttXx5v9lTvzmKq7KvP0KXJ4KUueYKOxadHlX
	1gV69mbUveK+/QnBlRV1vCW2ykh4ktv19Hqb0ejnBkHGnG8HgOPg6qa1iEgUlfEEugJoay1hs9FBI
	DTAcxUKOPnNVu99HTMIAbaVaXtmdhv+MdaUUsSkmq+69vNQ1kOhdLHxnGFIFX7FeW2IXJ6SwrXywR
	mhVdI80SClUbZfMIbRENlZAzNN259x3shYL6/5PLbMdFEr7E5tUtf/73TI7V3Ndn6EerWXhiHV0IA
	7yB/iYxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKupe-0000000Fi32-3pf5;
	Mon, 17 Nov 2025 08:43:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKupc-0000000Fi2e-13e7
	for barebox@lists.infradead.org;
	Mon, 17 Nov 2025 08:43:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vKupY-0002op-Ul; Mon, 17 Nov 2025 09:43:24 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vKupY-000siG-2B;
	Mon, 17 Nov 2025 09:43:24 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vKupY-008GKL-1s;
	Mon, 17 Nov 2025 09:43:24 +0100
Date: Mon, 17 Nov 2025 09:43:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org
Message-ID: <aRrgLDG2tbcJ1dg0@pengutronix.de>
References: <20251117064601.30401-1-akurz@blala.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251117064601.30401-1-akurz@blala.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_004328_294131_E49F5CCF 
X-CRM114-Status: GOOD (  29.10  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/1] Add Kindle generation 6/7 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Nov 17, 2025 at 06:46:00AM +0000, Alexander Kurz wrote:
> Changes in v2:
> - Link to v1: https://lore.barebox.org/barebox/aRMOO3jH4a16GBI6@pengutronix.de/
> - Remove explicit RAM size settings from lowlevel.c and dts since this can be
>   autodetected. As consequence, both DP75SDI variants (Paperwhite 2 and 3) now
>   share the same dts.
> - Rebase to current
> - Attempts to use barebox,deep-probe did unfortunately not work yet.
>   Brief description of the problem:
>   Device specific data is stored in /dev/mmc1.boot0.userdata, this data
>   is read by barebox and passed as ATAGs to the vendor kernel, without this
>   data, the device won't work properly.
>   An attempt has been made to use barebox,deep-probe (see patch below), however,
>   mmc1 will not be available later, resulting e.g. in an error
>   > Could not read board info from /dev/mmc1.boot0.userdata
>   during startup.
>   Example patch:
> # diff --git a/arch/arm/boards/kindle-mx6sl/board.c b/arch/arm/boards/kindle-mx6sl/board.c
> index ff8083a756..5c18e074c9 100644
> --- a/arch/arm/boards/kindle-mx6sl/board.c
> +++ b/arch/arm/boards/kindle-mx6sl/board.c
> @@ -194,15 +194,10 @@ late_initcall(kindle_mx6sl_late_init);
>  
>  static int kindle6_device_init(void)
>  {
> -       struct device *dev;
> -
>         if (!is_mx6sl_kindle())
>                 return 0;
>  
> -       /* Probe the eMMC to allow reading the board serial and revision */
> -       dev = get_device_by_name("mmc1");
> -       if (dev)
> -               dev_set_param(dev, "probe", "1");
> +       of_device_ensure_probed_by_alias("mmc1");

On return of this function the MMC host is probed, but the card is not
yet detected. You can do that by adding a:

	device_detect_by_name("mmc1");

Does it work with this line added?

Sascha

>  
>         defaultenv_append_directory(defaultenv_kindle_mx6sl);
>  
> # diff --git a/arch/arm/dts/imx6sl-kindle-dp75sdi.dts b/arch/arm/dts/imx6sl-kindle-dp75sdi.dts
> index 9dc4a0c867..05fdd77a47 100644
> --- a/arch/arm/dts/imx6sl-kindle-dp75sdi.dts
> +++ b/arch/arm/dts/imx6sl-kindle-dp75sdi.dts
> @@ -12,7 +12,7 @@
>  / {
>         model = "kindle-dp75sdi";
>         compatible = "amazon,imx6sl-kindle-dp75sdi",  "fsl,imx6sl";
> -       barebox,disable-deep-probe;
> +       barebox,deep-probe;
>  };
>  
>  &iomuxc {
> 
> 
> Alexander Kurz (1):
>   ARM i.MX6SL: Add Kindle generation 6/7 support
> 
>  .../boards/imx/amazon-kindle-6-7.rst          |  94 ++++++++
>  arch/arm/boards/Makefile                      |   1 +
>  arch/arm/boards/kindle-mx6sl/Makefile         |   5 +
>  arch/arm/boards/kindle-mx6sl/board.c          | 212 ++++++++++++++++++
>  .../defaultenv-kindle-mx6sl/boot/mmc_kernel   |  11 +
>  .../defaultenv-kindle-mx6sl/init/pmic         |  32 +++
>  .../defaultenv-kindle-mx6sl/init/usbserial    |   4 +
>  .../nv/autoboot_timeout                       |   1 +
>  .../defaultenv-kindle-mx6sl/nv/boot.default   |   1 +
>  .../nv/linux.bootargs.base                    |   1 +
>  .../nv/linux.bootargs.console                 |   1 +
>  .../nv/linux.bootargs.video                   |   1 +
>  .../flash-header-kindle-mx6sl-256m.imxcfg     | 126 +++++++++++
>  .../flash-header-kindle-mx6sl-512m.imxcfg     | 126 +++++++++++
>  arch/arm/boards/kindle-mx6sl/lowlevel.c       |  84 +++++++
>  arch/arm/configs/kindle-gen-6-7_defconfig     |  89 ++++++++
>  arch/arm/dts/Makefile                         |   3 +
>  arch/arm/dts/imx6sl-kindle-common.dtsi        | 167 ++++++++++++++
>  arch/arm/dts/imx6sl-kindle-dp75sdi.dts        |  51 +++++
>  arch/arm/dts/imx6sl-kindle-nm460gz.dts        |  65 ++++++
>  arch/arm/dts/imx6sl-kindle-wp63gw.dts         |  40 ++++
>  arch/arm/mach-imx/Kconfig                     |  17 ++
>  images/Makefile.imx                           |  21 ++
>  23 files changed, 1153 insertions(+)
>  create mode 100644 Documentation/boards/imx/amazon-kindle-6-7.rst
>  create mode 100644 arch/arm/boards/kindle-mx6sl/Makefile
>  create mode 100644 arch/arm/boards/kindle-mx6sl/board.c
>  create mode 100644 arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/boot/mmc_kernel
>  create mode 100644 arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/init/pmic
>  create mode 100644 arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/init/usbserial
>  create mode 100644 arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/nv/autoboot_timeout
>  create mode 100644 arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/nv/boot.default
>  create mode 100644 arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/nv/linux.bootargs.base
>  create mode 100644 arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/nv/linux.bootargs.console
>  create mode 100644 arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/nv/linux.bootargs.video
>  create mode 100644 arch/arm/boards/kindle-mx6sl/flash-header-kindle-mx6sl-256m.imxcfg
>  create mode 100644 arch/arm/boards/kindle-mx6sl/flash-header-kindle-mx6sl-512m.imxcfg
>  create mode 100644 arch/arm/boards/kindle-mx6sl/lowlevel.c
>  create mode 100644 arch/arm/configs/kindle-gen-6-7_defconfig
>  create mode 100644 arch/arm/dts/imx6sl-kindle-common.dtsi
>  create mode 100644 arch/arm/dts/imx6sl-kindle-dp75sdi.dts
>  create mode 100644 arch/arm/dts/imx6sl-kindle-nm460gz.dts
>  create mode 100644 arch/arm/dts/imx6sl-kindle-wp63gw.dts
> 
> -- 
> 2.39.5
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


