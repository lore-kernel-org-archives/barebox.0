Delivery-date: Mon, 29 Jun 2026 10:49:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1we7fv-00B3lR-0e
	for lore@lore.pengutronix.de;
	Mon, 29 Jun 2026 10:49:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1we7fu-0004go-Gr
	for lore@pengutronix.de; Mon, 29 Jun 2026 10:49:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:Cc:To:Subject:From:
	Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=AFVGMqssiv1jWlogFEXOOUTIcK5qUoQ/ge3OYm2qsRM=; b=dT3OFeKL+yzHFiPhn8jSHgxL1n
	IQxkr+3YkOTn3Ndi1NCTK+dbJAApZgGzY2b/CstyDgvkCGWfLPnVA/RqMlpTNFPCfffjeuwgHEdBj
	2W9nWyiPeb9gGLAAbTuo3OMbYi5dYSB7kLqYOE8Ba+z6iu7LYBDQlrbUo3aKRWC8KYQbEZcE5sgzc
	wS0VyKYt1eX6q2sNnpwZy0H5mc6FbC91hxq6nvhJUbmshhLT2eP2AkGHFqDnCHPuoKUkbV4ET9G4r
	QJs7klIiZ2B46XBt/1dOpIujvVYvtZxsFtiWDujo6r3mWJzjDitzVqEacb8yNnvTMjzahSDS1nECM
	yygcjVEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we7ef-0000000E21c-2Op3;
	Mon, 29 Jun 2026 08:47:49 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we7ec-0000000E20r-3CjA
	for barebox@lists.infradead.org;
	Mon, 29 Jun 2026 08:47:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id F23212002FE;
	Mon, 29 Jun 2026 10:47:43 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1we7eZ-005DLB-2w;
	Mon, 29 Jun 2026 10:47:43 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1we7eZ-00000005eQz-3Roc;
	Mon, 29 Jun 2026 10:47:43 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Ahmad Fatoum" <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org, "Ahmad Fatoum" <a.fatoum@barebox.org>
In-Reply-To: <20260626162136.1885999-7-a.fatoum@barebox.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 08:47:43 +0000
Message-Id: <E1we7eZ-00000005eQz-3Roc@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_014746_951359_3A45896F 
X-CRM114-Status: GOOD (  19.39  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 7/9] mci: add PCI SDHCI controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-06-26 18:19, Ahmad Fatoum wrote:
> QEMU can expose eMMC through the class-compliant sdhci-pci device, but
> barebox only had platform SDHCI glue. Add a PCI host driver that maps BAR=
0,
> enables bus mastering, initializes the SDHCI core and registers an MCI ho=
st.
>=20
> This is intentionally small and PIO-based, which is enough for the QEMU R=
PMB
> test environment while reusing the common SDHCI helpers.

Is this comment wrong? The driver depends on HAS_DMA and even calls
sdhci_setup_adma().

>=20
> Assisted-by: Codex:gpt-5.5
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
> v1 -> v2:
>   - new commit
> ---
>  drivers/mci/Kconfig     |   8 ++
>  drivers/mci/Makefile    |   1 +
>  drivers/mci/mci-core.c  |   2 +-
>  drivers/mci/sdhci-pci.c | 203 ++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 213 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/mci/sdhci-pci.c
>=20
> diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
> index b38f7a3bdf8b..55e63aad92d4 100644
> --- a/drivers/mci/Kconfig
> +++ b/drivers/mci/Kconfig
> @@ -90,6 +90,14 @@ config MCI_MMC_RPMB
> =20
>  comment "--- MCI host drivers ---"
> =20
> +config MCI_SDHCI_PCI
> +	bool "PCI SDHCI controller"
> +	depends on PCI && HAS_DMA
> +	select MCI_SDHCI
> +	help
> +	  Enable support for PCI-attached SDHCI controllers, such as QEMU's
> +	  sdhci-pci device used to attach emulated eMMC devices.
> +
>  config MCI_DWC_MSHC
>  	bool "Synopsys DesignWare Cores MSHC"
>  	depends on HAS_DMA
> diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
> index 67a1f7bf1724..761f4187c079 100644
> --- a/drivers/mci/Makefile
> +++ b/drivers/mci/Makefile
> @@ -2,6 +2,7 @@
>  obj-$(CONFIG_MCI)		+=3D mci-core.o
>  pbl-$(CONFIG_MCI)		+=3D mci-pbl.o
>  obj-$(CONFIG_MCI_MMC_RPMB)	+=3D rpmb.o
> +obj-$(CONFIG_MCI_SDHCI_PCI)	+=3D sdhci-pci.o
>  obj-$(CONFIG_MCI_AM654)		+=3D am654-sdhci.o
>  obj-$(CONFIG_MCI_ARASAN)	+=3D arasan-sdhci.o
>  obj-$(CONFIG_MCI_ATMEL)		+=3D atmel_mci.o atmel_mci_common.o
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index 4413fd1655aa..d6746fbec28f 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -2942,7 +2942,7 @@ static struct device_node *mci_get_partition_node(s=
truct device_node *hwnode,
>  	struct device_node *np;
>  	char partnodename[sizeof("bootx-partitions")];
> =20
> -	if (index > 8)
> +	if (!hwnode || index > 8)
>  		return NULL;

Should this be an extra patch?

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


