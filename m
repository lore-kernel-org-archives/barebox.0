Delivery-date: Mon, 09 Aug 2021 12:51:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mD2sG-0002MS-QT
	for lore@lore.pengutronix.de; Mon, 09 Aug 2021 12:51:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mD2sF-0002Af-DP
	for lore@pengutronix.de; Mon, 09 Aug 2021 12:51:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eVLJNWAkn//Yq4bJqq0imqoARg35xr26c2aaogA0XKo=; b=AW/7L689oUks7jfSp8pyAe1kFr
	c6NXnhk4qxLIbqrwGDYxjqSAvmhaplqMK6O5SFMc1tmTsx/CnJlXR8j8XpHpo/TuP7Mh8DMx0DWWZ
	yzNbqgNqf6n115hXCxr+dcCDb9e4D1s87/CAEOFCL/xb/oIN1u+6f9HnEarnLqqwGz3TRYbHFSBBr
	9vvNfSodDh6/Rtsz00jW7qpyrHNC9ZJTwLupN0VPpajmbCdXWCftQahmBNjMYu5dcQpfy3nHTwR2G
	cwR1Ma8U3lmcz73zeyRN+DIUeczkq+dVDJd2jw0JInAapcDLengsL8Kru9lbfIjkfsdTAMZ7HHdc4
	5ilxyIzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mD2qm-000EsO-PF; Mon, 09 Aug 2021 10:49:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mD2qh-000ErJ-7X
 for barebox@lists.infradead.org; Mon, 09 Aug 2021 10:49:40 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mD2qf-0001nB-UE; Mon, 09 Aug 2021 12:49:37 +0200
To: Renaud Barbier <renaud.barbier@abaco.com>, barebox@lists.infradead.org
References: <1627900804-15814-1-git-send-email-renaud.barbier@abaco.com>
 <1627900804-15814-4-git-send-email-renaud.barbier@abaco.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <471e6659-459f-f6e6-7abf-9b6141e6c7a3@pengutronix.de>
Date: Mon, 9 Aug 2021 12:49:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <1627900804-15814-4-git-send-email-renaud.barbier@abaco.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210809_034939_334805_942B0B40 
X-CRM114-Status: GOOD (  26.59  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] ls1046ardb: enable IFC NAND.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Renaud,

On 02.08.21 12:40, Renaud Barbier wrote:
> Set the NAND timings and enable the IFC NAND driver.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@abaco.com>
> ---
>  arch/arm/boards/ls1046ardb/board.c    | 42 +++++++++++++++++++++++++++
>  arch/arm/configs/layerscape_defconfig | 11 +++++++
>  2 files changed, 53 insertions(+)
> 
> diff --git a/arch/arm/boards/ls1046ardb/board.c b/arch/arm/boards/ls1046ardb/board.c
> index ef68e9c7f9..b2cfba58a8 100644
> --- a/arch/arm/boards/ls1046ardb/board.c
> +++ b/arch/arm/boards/ls1046ardb/board.c
> @@ -8,10 +8,12 @@
>  #include <fs.h>
>  #include <envfs.h>
>  #include <libfile.h>
> +#include <of_address.h>
>  #include <asm/memory.h>
>  #include <linux/sizes.h>
>  #include <linux/clk.h>
>  #include <linux/clkdev.h>
> +#include <linux/fsl_ifc.h>
>  #include <asm/system.h>
>  #include <mach/layerscape.h>
>  #include <mach/bbu.h>
> @@ -35,6 +37,11 @@ struct nxid {
>  	u32 crc;          /* 0xfc - 0xff CRC32 checksum */
>  } __packed;
>  
> +static const struct of_device_id fsl_ifc_of_ids[] = {
> +	{ .compatible = "fsl,ifc", },
> +	{ },
> +};
> +
>  static int nxid_is_valid(struct nxid *nxid)
>  {
>  	unsigned char id[] = { 'N', 'X', 'I', 'D' };
> @@ -161,3 +168,38 @@ static int rdb_postcore_init(void)
>  }
>  
>  postcore_initcall(rdb_postcore_init);
> +
> +static int rdb_nand_init(void)
> +{
> +	struct device_node *np;
> +	void __iomem *ifc;
> +

If you think this configuration should be done for _all_ boards,
you should move it to arch/arm/mach-layerscape. If you intend it
to be done only for this specific board, you should check the
board compatible, otherwise this function is called even for
boards that don't have NAND physically. Throwing an error
there is inappropriate. If this is board-specific, please add:


	if (!of_machine_is_compatible("fsl,ls1046a-rdb"))

		return 0;

> +	np = of_find_matching_node(NULL, fsl_ifc_of_ids);

You can use of_find_compatible_node, which lets you drop the struct.

> +	if (!np)
> +		return -EINVAL;
> +
> +	ifc = of_iomap(np, 0);
> +	if (!ifc)
> +		return -EINVAL;
> +
> +	set_ifc_cspr(ifc, IFC_CS0, CSPR_PHYS_ADDR(0x7e800000) |
> +			CSPR_PORT_SIZE_8 | CSPR_MSEL_NAND | CSPR_V);
> +	set_ifc_csor(ifc, IFC_CS0, CSOR_NAND_ECC_ENC_EN | CSOR_NAND_ECC_DEC_EN |
> +			CSOR_NAND_ECC_MODE_8 |
> +			CSOR_NAND_RAL_3 | CSOR_NAND_PGS_4K |
> +			CSOR_NAND_SPRZ_224 |  CSOR_NAND_PB(64) |
> +			CSOR_NAND_TRHZ_20);
> +	set_ifc_amask(ifc, IFC_CS0, IFC_AMASK(64*1024));
> +	set_ifc_ftim(ifc, IFC_CS0, IFC_FTIM0, FTIM0_NAND_TCCST(0x07) |
> +			FTIM0_NAND_TWP(0x18) | FTIM0_NAND_TWCHT(0x07) |
> +			FTIM0_NAND_TWH(0x0a));
> +	set_ifc_ftim(ifc, IFC_CS0, IFC_FTIM1, FTIM1_NAND_TADLE(0x32) |
> +			FTIM1_NAND_TWBE(0x39) | FTIM1_NAND_TRR(0x0e)|
> +			FTIM1_NAND_TRP(0x18));
> +	set_ifc_ftim(ifc, IFC_CS0, IFC_FTIM2, FTIM2_NAND_TRAD(0xf) |
> +			FTIM2_NAND_TREH(0xa) | FTIM2_NAND_TWHRE(0x1e));
> +	set_ifc_ftim(ifc, IFC_CS0, IFC_FTIM3, 0);
> +
> +	return 0;
> +}
> +postcore_initcall(rdb_nand_init);
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
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

