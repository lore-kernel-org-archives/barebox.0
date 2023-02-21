Delivery-date: Tue, 21 Feb 2023 11:11:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUPcd-00DlGr-SN
	for lore@lore.pengutronix.de; Tue, 21 Feb 2023 11:11:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUPcc-0007vn-Jm
	for lore@pengutronix.de; Tue, 21 Feb 2023 11:11:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jd6g3ThjbAB5ShG4zcYM2sDAXP6lEMEHuqz1So5CGHk=; b=C8M4VzPuZBAWMxnbm1FUTjcWPv
	ECnCzRpmIZV2mr3EelyyAWysPfltXqRBZG+03MrrOgZeI2xNaecfpNAIChFCjS9z01FXadsVzRchx
	kNlzXvagnRtj/ioF51IxwRmnZOCgmM8/2R29gm6orvOs/a9uyYLi8c2rMoX4YrPmMHsNlaebzCqLX
	ZDCyDtjAe8hhqyE/43+lQEcEEqVD/D/IIsr8EBVr/DHFkjizye2yq1MOp5lg+d7GsPq36uCxHXXyI
	7epoJ5+lCmm2L2rI2NR7Q4bEgrTtryOnhzAMHHLFQvxQVELY07811QtqR6hHJQ1+9Q/xKaxi9kTuf
	9zn2LdLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUPbR-007LVd-Kl; Tue, 21 Feb 2023 10:10:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUPbN-007LUS-8H
	for barebox@lists.infradead.org; Tue, 21 Feb 2023 10:10:26 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pUPbK-0007LQ-Cp; Tue, 21 Feb 2023 11:10:22 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pUPbJ-0003a4-Rl; Tue, 21 Feb 2023 11:10:21 +0100
Date: Tue, 21 Feb 2023 11:10:21 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20230221101021.gqcfksllqw6e5wor@pengutronix.de>
References: <20230221070758.1130869-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230221070758.1130869-1-ahmad@a3f.at>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230221_021025_307206_C507F172 
X-CRM114-Status: GOOD (  17.18  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] treewide: rename leftover device_d
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On 23-02-21, Ahmad Fatoum wrote:
> We have some instances of device_d and driver_d still lingering in
> documentation and commented out code. Let's drop these as well.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  Documentation/devel/porting.rst        | 2 +-
>  drivers/mtd/nand/nand_omap_gpmc.c      | 2 +-
>  drivers/usb/musb/musb_core.h           | 2 +-
>  fs/cramfs/cramfs.c                     | 2 +-
>  include/linux/mfd/core.h               | 2 +-
>  include/platform_data/eth-smc911x.h    | 2 +-
>  include/platform_data/serial-ns16550.h | 2 +-
>  7 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/devel/porting.rst b/Documentation/devel/porting.rst
> index 8af0456ab2d5..619c5e49e00f 100644
> --- a/Documentation/devel/porting.rst
> +++ b/Documentation/devel/porting.rst
> @@ -258,7 +258,7 @@ tree binding, you can write a driver that matches against your board's
>    	{ /* sentinel */ },
>    };
>  
> -  static struct driver_d my_board_driver = {
> +  static struct driver my_board_driver = {
>    	.name = "board-mine",
>    	.probe = my_board_probe,
>    	.of_compatible = my_board_of_match,
> diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
> index e8e690311148..c7252ce72a27 100644
> --- a/drivers/mtd/nand/nand_omap_gpmc.c
> +++ b/drivers/mtd/nand/nand_omap_gpmc.c
> @@ -12,7 +12,7 @@
>   * A typical device registration is as follows:
>   *
>   * @code
> - * static struct device_d my_nand_device = {
> + * static struct device my_nand_device = {
>   *	.name = "gpmc_nand",
>   *	.id = some identifier you need to show.. e.g. "gpmc_nand0"
>   *	.resource[0].start = GPMC base address
> diff --git a/drivers/usb/musb/musb_core.h b/drivers/usb/musb/musb_core.h
> index a0467ff3c465..c9a0a8eed662 100644
> --- a/drivers/usb/musb/musb_core.h
> +++ b/drivers/usb/musb/musb_core.h
> @@ -324,7 +324,7 @@ struct musb {
>  	u16			int_rx;
>  	u16			int_tx;
>  
> -	//struct device_d		*phydev;
> +	//struct device		*phydev;

IMHO this line can be removed completely.

Regards,
  Marco


