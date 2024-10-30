Delivery-date: Wed, 30 Oct 2024 17:23:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6BU7-002lBc-1m
	for lore@lore.pengutronix.de;
	Wed, 30 Oct 2024 17:23:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6BU8-00050J-43
	for lore@pengutronix.de; Wed, 30 Oct 2024 17:23:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ah+HA1XbaAd0MxoctSFh4C09e3LnTgWcDgEpNapaSgA=; b=wmOtI7osFEuwprGXHg/6msUddL
	maVPGS0Q2SAcUSb5T1Tfp5rRsKHtvSPte/Cs4RhzRFfDeQbrvH75PmkqoP5Ckxj/dfEai8mRsS1I0
	LcK1313Dxigv6awcd0m7gy/Yzgjxjn1s/5ggk9SB7DoWb+jydsl11ki9EQ+ASCglVJRaTCvLfGQQ1
	SaetTEl8coBFXBHqIFbJi1/wNNDAuEH8xQFDSwSQFPCS5TKsxrV6j8z5Mvh6l14l/WfJmCpIK+mRE
	BvFzT7PWFTxepLNL75sperRTt0f18iQEYyNyBvRkUZjntEcZN5RRvosudrM0sfLXX9ZGX5uwX7EYu
	hJfIH/Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6BTd-0000000145u-2GYI;
	Wed, 30 Oct 2024 16:23:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6BT7-0000000142D-2jos
	for barebox@lists.infradead.org;
	Wed, 30 Oct 2024 16:22:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t6BT6-0004uJ-92; Wed, 30 Oct 2024 17:22:48 +0100
Message-ID: <c79699ff-49d9-4cb5-9292-eeb8bdf85702@pengutronix.de>
Date: Wed, 30 Oct 2024 17:22:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Shiyan <eagle.alexander923@gmail.com>,
 barebox@lists.infradead.org
References: <20241030115407.841758-1-eagle.alexander923@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241030115407.841758-1-eagle.alexander923@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_092249_728282_6AE5C0A6 
X-CRM114-Status: GOOD (  20.83  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Revert "mtd: nand: make interleaved placement optional"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Alexander,

On 30.10.24 12:54, Alexander Shiyan wrote:
> This reverts commit d1fe68f1b010b83ddd3559ffbfcb70dca68b2563
> and ec3b8c646bdc8c2ea0a78923ccb745012eabc097 (as a fixup).
> 
> The message "CONFIG_NAND_NEED_ECC_PLACEMENT_INTERLEAVED is disabled"
> is always issued, regardless of the MTD ECC layout used, since it
> is executed through "fallthrough" from the previous case statement.
> 
> Additionally, if !IS_ENABLED(CONFIG_NAND_NEED_ECC_PLACEMENT_INTERLEAVED)
> is triggered, the patch calls break, which disables the additional checks.
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  drivers/mtd/nand/raw/Kconfig     | 4 ----
>  drivers/mtd/nand/raw/nand_base.c | 4 ----
>  2 files changed, 8 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/Kconfig b/drivers/mtd/nand/raw/Kconfig
> index b6c6e62731..e9d1b83706 100644
> --- a/drivers/mtd/nand/raw/Kconfig
> +++ b/drivers/mtd/nand/raw/Kconfig
> @@ -35,9 +35,6 @@ config NAND_ALLOW_ERASE_BAD
>  config NAND_NEED_EXEC_OP
>  	bool
>  
> -config NAND_NEED_ECC_PLACEMENT_INTERLEAVED
> -	bool
> -
>  comment "Raw/parallel NAND flash controllers"
>  
>  config NAND_IMX
> @@ -159,7 +156,6 @@ config MTD_NAND_DENALI
>  	tristate "Support Denali NAND controller"
>  	depends on HAS_DMA
>  	select NAND_NEED_EXEC_OP
> -	select NAND_NEED_ECC_PLACEMENT_INTERLEAVED
>  	help
>  	  Enable support for the Denali NAND controller.  This should be
>  	  combined with either the PCI or platform drivers to provide device
> diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> index b6bef46499..9769725026 100644
> --- a/drivers/mtd/nand/raw/nand_base.c
> +++ b/drivers/mtd/nand/raw/nand_base.c
> @@ -5671,10 +5671,6 @@ static int nand_set_ecc_on_host_ops(struct nand_chip *chip)
>  		fallthrough;
>  
>  	case NAND_ECC_PLACEMENT_INTERLEAVED:
> -		if (!IS_ENABLED(CONFIG_NAND_NEED_ECC_PLACEMENT_INTERLEAVED)) {
> -			WARN(1, "CONFIG_NAND_NEED_ECC_PLACEMENT_INTERLEAVED is disabled\n");
> -			break;
> -		}

These config options were added to control barebox size. We need something
here, so size conscious users can opt out.

Cheers,
Ahmad

>  		if ((!ecc->calculate || !ecc->correct || !ecc->hwctl) &&
>  		    (!ecc->read_page ||
>  		     ecc->read_page == nand_read_page_hwecc ||


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


