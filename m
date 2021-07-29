Delivery-date: Thu, 29 Jul 2021 12:15:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m934S-00087i-Fl
	for lore@lore.pengutronix.de; Thu, 29 Jul 2021 12:15:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m934R-0003HI-Gp
	for lore@pengutronix.de; Thu, 29 Jul 2021 12:15:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CQ8pU4PJjq6yfEErJrZBSx6f9JnumU/dsPHrmRmBXnk=; b=FipXLKMGVT5fsRTO6xQCHaD2Gg
	RloMqBUEl2wzMIWQ2o5JNtSX7uziPhx0G0G0HA67rNvie2wySVAs4MdIR+NL38sSAZUjOuORq4Ql8
	eTgK7v6kHv9zL2tzTWWDWZw/nXHOczF2W99Px/YZC0+ZayPG23gxmP+jY64jrf0FtDbhwaHBoLMC/
	fBMhVpAyDLOEtsbffBRhYp976QwUd8yHWZX445PBhGC19rHI/lNlCZzV1m+QJtGyUTChPVQob86aA
	dSGRvo6uiMSBoMT9nmC7X6aRE2flPwtLbnG/tTC4chQkSc1ciRp7auntIU2Fn7mCZ2YaxiuJKLULx
	/eRzKZbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m933C-003o3l-Ft; Thu, 29 Jul 2021 10:14:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m9338-003o2O-5g
 for barebox@lists.infradead.org; Thu, 29 Jul 2021 10:13:59 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1m9336-00037z-Ux; Thu, 29 Jul 2021 12:13:57 +0200
To: Renaud Barbier <renaud.barbier@abaco.com>, barebox@lists.infradead.org
References: <1627476428-16318-1-git-send-email-renaud.barbier@abaco.com>
 <1627476428-16318-5-git-send-email-renaud.barbier@abaco.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <83f012a3-a035-2d4c-e5b9-a1719914de76@pengutronix.de>
Date: Thu, 29 Jul 2021 12:13:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <1627476428-16318-5-git-send-email-renaud.barbier@abaco.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210729_031358_278316_AB65BC3C 
X-CRM114-Status: GOOD (  22.54  )
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
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 4/4] ls1046ardb: enable IFC NAND.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 28.07.21 14:47, Renaud Barbier wrote:
> Set the NAND timings and enable the IFC NAND driver.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@abaco.com>
> ---
>  arch/arm/boards/ls1046ardb/board.c    | 26 ++++++++++++++++++++++++++
>  arch/arm/configs/layerscape_defconfig | 12 ++++++++++++
>  2 files changed, 38 insertions(+)
> 
> diff --git a/arch/arm/boards/ls1046ardb/board.c b/arch/arm/boards/ls1046ardb/board.c
> index ef68e9c7f9..5573d5b486 100644
> --- a/arch/arm/boards/ls1046ardb/board.c
> +++ b/arch/arm/boards/ls1046ardb/board.c
> @@ -12,6 +12,7 @@
>  #include <linux/sizes.h>
>  #include <linux/clk.h>
>  #include <linux/clkdev.h>
> +#include <linux/fsl_ifc.h>
>  #include <asm/system.h>
>  #include <mach/layerscape.h>
>  #include <mach/bbu.h>
> @@ -147,6 +148,31 @@ static int rdb_mem_init(void)
>  }
>  mem_initcall(rdb_mem_init);
>  
> +static int rdb_nand_init(void)
> +{

You should check against board compatible here.

> +	/* NAND mapping and timings. Only for Linux use. */

Why is this only for Linux use? You use the driver in barebox, don't you?

> +	set_ifc_cspr(IFC_CS0, CSPR_PHYS_ADDR(0x7e800000) | CSPR_PORT_SIZE_8 |
> +				CSPR_MSEL_NAND | CSPR_V);
> +	set_ifc_csor(IFC_CS0, CSOR_NAND_ECC_ENC_EN | CSOR_NAND_ECC_DEC_EN |
> +			CSOR_NAND_ECC_MODE_8 |
> +			CSOR_NAND_RAL_3 | CSOR_NAND_PGS_4K |
> +			CSOR_NAND_SPRZ_224 |  CSOR_NAND_PB(64) |
> +			CSOR_NAND_TRHZ_20);
> +	set_ifc_amask(IFC_CS0, IFC_AMASK(64*1024));
> +	set_ifc_ftim(IFC_CS0, IFC_FTIM0, FTIM0_NAND_TCCST(0x07) |
> +			FTIM0_NAND_TWP(0x18) | FTIM0_NAND_TWCHT(0x07) |
> +			FTIM0_NAND_TWH(0x0a));
> +	set_ifc_ftim(IFC_CS0, IFC_FTIM1, FTIM1_NAND_TADLE(0x32) |
> +			FTIM1_NAND_TWBE(0x39) | FTIM1_NAND_TRR(0x0e)|
> +			FTIM1_NAND_TRP(0x18));
> +	set_ifc_ftim(IFC_CS0, IFC_FTIM2, FTIM2_NAND_TRAD(0xf) |
> +			FTIM2_NAND_TREH(0xa) | FTIM2_NAND_TWHRE(0x1e));
> +	set_ifc_ftim(IFC_CS0, IFC_FTIM3, 0);

I assume there are no DT bindings describing these parameters for the
IFC driver to consume?

> +
> +	return 0;
> +}
> +core_initcall(rdb_nand_init);

Cheers,
Ahmad


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

