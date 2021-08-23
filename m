Delivery-date: Mon, 23 Aug 2021 16:05:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIAaA-0000CD-FF
	for lore@lore.pengutronix.de; Mon, 23 Aug 2021 16:05:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIAa8-0002U0-6s
	for lore@pengutronix.de; Mon, 23 Aug 2021 16:05:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oPnxFgeTETI/yqfvqnuRVP4Eok3YyK9U48iFoZ0lu5o=; b=ymMdCdc8tDwTqIPGGg9srlCiVA
	JtB5+mxo1dIZtvMfiRA08k+MZJPjOSZz0BAfwYV8QDXkXLxr3ahovAEzq7/hmKLvsHUvJavAR4wdf
	9/340qdo6ovYIZGaWqAEucwLWHnH9flR9LVULAkvo0jeT9ZmyamuGb2+fstAuE57rNtq9iw70czNj
	MVoot3i3pkvw4kLErlUVlDfcoF9XqVnL5K0NvZsJ+VzsdJ1NxYU8aQoFFaCXfgHSRsNzNc9f2OGCa
	mv0ovKm6bWkJ+4gV4EgYB8VeO7bj8ApVEqcA3X57uzxbZUL44Jj+0I2zdu9Boc6g7v9RAzV8VrDbU
	YPxeH0cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIAYT-00HB2z-TH; Mon, 23 Aug 2021 14:04:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIAYM-00HB19-7B
 for barebox@lists.infradead.org; Mon, 23 Aug 2021 14:03:58 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mIAYK-0002BN-Hh; Mon, 23 Aug 2021 16:03:52 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mIAYJ-0007Op-VI; Mon, 23 Aug 2021 16:03:51 +0200
Date: Mon, 23 Aug 2021 16:03:51 +0200
To: Renaud Barbier <renaud.barbier@abaco.com>
Cc: barebox@lists.infradead.org
Message-ID: <20210823140351.GN24834@pengutronix.de>
References: <1628842608-17031-1-git-send-email-renaud.barbier@abaco.com>
 <1628842608-17031-4-git-send-email-renaud.barbier@abaco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1628842608-17031-4-git-send-email-renaud.barbier@abaco.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 16:00:29 up 186 days, 17:24, 113 users,  load average: 0.55, 0.20,
 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_070354_307846_0CB8FCF5 
X-CRM114-Status: GOOD (  25.48  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] ls1046ardb: enable IFC NAND.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Aug 13, 2021 at 09:16:48AM +0100, Renaud Barbier wrote:
> Set the NAND timings and enable the IFC NAND driver.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@abaco.com>
> ---
>  arch/arm/configs/layerscape_defconfig | 11 +++++++
>  arch/arm/mach-layerscape/Makefile     |  1 +
>  arch/arm/mach-layerscape/nand.c       | 44 +++++++++++++++++++++++++++
>  3 files changed, 56 insertions(+)
>  create mode 100644 arch/arm/mach-layerscape/nand.c
> 
> diff --git a/arch/arm/configs/layerscape_defconfig b/arch/arm/configs/layerscape_defconfig
> index 394cd95c98..fb8e885353 100644
> --- a/arch/arm/configs/layerscape_defconfig
> +++ b/arch/arm/configs/layerscape_defconfig
> @@ -34,6 +34,10 @@ CONFIG_CMD_GO=y
>  CONFIG_CMD_RESET=y
>  CONFIG_CMD_UIMAGE=y
>  CONFIG_CMD_PARTITION=y
> +CONFIG_CMD_MOUNT=y
> +CONFIG_CMD_UBI=y
> +CONFIG_CMD_UBIFORMAT=y
> +CONFIG_CMD_UMOUNT=y
>  CONFIG_CMD_EXPORT=y
>  CONFIG_CMD_LOADENV=y
>  CONFIG_CMD_PRINTENV=y
> @@ -69,6 +73,7 @@ CONFIG_CMD_GPIO=y
>  CONFIG_CMD_I2C=y
>  CONFIG_CMD_LED=y
>  CONFIG_CMD_SPI=y
> +CONFIG_CMD_NAND=y
>  CONFIG_CMD_LED_TRIGGER=y
>  CONFIG_CMD_WD=y
>  CONFIG_CMD_BAREBOX_UPDATE=y
> @@ -85,6 +90,10 @@ CONFIG_DP83867_PHY=y
>  CONFIG_REALTEK_PHY=y
>  CONFIG_NET_DSA_MV88E6XXX=y
>  CONFIG_DRIVER_SPI_FSL_QUADSPI=y
> +CONFIG_NAND=y
> +CONFIG_NAND_FSL_IFC=y
> +CONFIG_MTD_UBI=y
> +CONFIG_MTD_UBI_BEB_LIMIT=20
>  CONFIG_I2C=y
>  CONFIG_I2C_IMX=y
>  CONFIG_I2C_MUX=y
> @@ -112,5 +121,7 @@ CONFIG_FS_NFS=y
>  CONFIG_FS_FAT=y
>  CONFIG_FS_FAT_WRITE=y
>  CONFIG_FS_FAT_LFN=y
> +CONFIG_FS_UBIFS=y
> +CONFIG_FS_UBIFS_COMPRESSION_LZO=y
>  CONFIG_ZLIB=y
>  CONFIG_LZO_DECOMPRESS=y
> diff --git a/arch/arm/mach-layerscape/Makefile b/arch/arm/mach-layerscape/Makefile
> index 854a327c91..99da7b2af0 100644
> --- a/arch/arm/mach-layerscape/Makefile
> +++ b/arch/arm/mach-layerscape/Makefile
> @@ -6,3 +6,4 @@ obj-pbl-y += boot.o
>  pbl-y += xload-qspi.o xload.o
>  obj-$(CONFIG_ARCH_LAYERSCAPE_PPA) += ppa.o ppa-entry.o
>  obj-$(CONFIG_BOOTM) += pblimage.o
> +obj-$(CONFIG_NAND_FSL_IFC) += nand.o
> diff --git a/arch/arm/mach-layerscape/nand.c b/arch/arm/mach-layerscape/nand.c
> new file mode 100644
> index 0000000000..b36c6b3c46
> --- /dev/null
> +++ b/arch/arm/mach-layerscape/nand.c
> @@ -0,0 +1,44 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +
> +#include <common.h>
> +#include <init.h>
> +#include <of_address.h>
> +#include <linux/fsl_ifc.h>
> +
> +static int rdb_nand_init(void)
> +{
> +	struct device_node *np;
> +	void __iomem *ifc;
> +
> +	if (!of_machine_is_compatible("fsl,ls1046a-rdb"))
> +		return 0;

The code as such is board specific and thus should be in
arch/arm/boards/ls1046ardb/. We could make a architecture specific
helper function from it which is then called by the board code, but the
values written to the registers below are probably very board specific
anyway, so with a generic helper function we wouldn't win that much.

I moved rdb_nand_init() to the board code while applying.

Thanks
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

