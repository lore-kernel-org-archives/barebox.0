Delivery-date: Mon, 18 May 2026 10:59:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOtpD-0014gN-2L
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 10:59:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOtpD-000128-1L
	for lore@pengutronix.de; Mon, 18 May 2026 10:59:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jOpmg85q8PPbbngDNebcy+Fsy5v3xsCY8xxovhV5Tj8=; b=aX0wV8JW8Sdz/ldBypqhGFh1tl
	KbD3uE3gy0iH3B4++T8lS7DBxQya4S8GQbn+/PnbW2FXEyCbu45K5T/gMjvjTdxQuxHW2+5z/rw3t
	0o6746FPKtTAA0IsBZ3jP4wiCQY4EtRkduRs464zQmFOJjJZ6NIZdfYxeGiIxUyyupL9pEYPL9i/k
	kUqaxP3UcH1qRsmFeW8Y0cpG0nAyZ6GQ3TmEQjo4D8JEUvRc06qV/hTrYe5LITW6BLg4QR8um+7qm
	ko2euB4Zyi6q+MQoulnClzXlnhjks3+/oD6hexvUhZ3rukbnxiuKSYX0Su1ArQPz+n0BGmu27t1U0
	uh6m8pvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOtoY-0000000Ev0P-2Fea;
	Mon, 18 May 2026 08:59:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOtoX-0000000Euzj-0NSl
	for barebox@bombadil.infradead.org;
	Mon, 18 May 2026 08:59:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=jOpmg85q8PPbbngDNebcy+Fsy5v3xsCY8xxovhV5Tj8=; b=MqrIoWFDKNIQp96KfCF1tjnQVs
	+tRmDQ145+RHU+Nc9JFY4pKMDywePCrYg8RrDcAXli2Pzzvih63S1vA2dgO9o4IEU7vW5xloNMfs+
	moInGcKkpp0W5IX7F09LVP5HIKHltrhzy06G7+7CpjVJdXvvmB4Nk/3ZXbJUDZiAKe9hhfEVyBTQV
	GH3ugbLwpiNuw+Iw/B+sRlTsVr6qXi6KGj8fXosxL/X5yTMo+2zDgld0IthafgKaMPCKiR9P+Gj7E
	Buqf+rcI+HTHSAxDEoH5TWiNCG1benoPg/yQ/x41a+Ma8xpaBCrda4jqbxaJf4in2IqtvSPebkfcf
	oSHpFM9g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOtoR-0000000AU4l-2kJM
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 08:59:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wOtoR-0000se-7a; Mon, 18 May 2026 10:58:59 +0200
Message-ID: <33a15b15-bf59-4bf9-894b-eb4b08cde081@pengutronix.de>
Date: Mon, 18 May 2026 10:58:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.7" <noreply@anthropic.com>
References: <20260511-rockchip-emmc-hs400-v1-0-515fb6d20e12@pengutronix.de>
 <20260511-rockchip-emmc-hs400-v1-1-515fb6d20e12@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260511-rockchip-emmc-hs400-v1-1-515fb6d20e12@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_095900_307657_810373B1 
X-CRM114-Status: GOOD (  19.26  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 01/10] mci: sdhci: define VDD_180 and shrink UHS_MASK to
 bits 0..2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 5/11/26 2:07 PM, Sascha Hauer wrote:
> Per SDHCI 3.0+, HOST_CONTROL2's UHS Mode Select is bits 0..2 (3 bits)
> and bit 3 is the 1.8 V Signaling Enable. The current SDHCI_CTRL_UHS_MASK
> of GENMASK(3, 0) is one bit too wide and clears 1.8 V signaling every
> time sdhci_set_uhs_signaling() runs.
> 
> Shrink the mask to GENMASK(2, 0) and add SDHCI_CTRL_VDD_180 = BIT(3) so
> controllers that need to drive 1.8 V on I/O for HS200/HS400/UHS modes
> can OR the bit in without it being clobbered on the next set_clock().
> 
> No functional change for controllers where VDD_180 was unused (most
> in-tree drivers do not touch it; voltage switching there is either
> fixed by board wiring or handled by an external regulator).
> 
> Assisted-by: Claude Opus 4.7 <noreply@anthropic.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/mci/imx-esdhc-common.c | 2 --
>  drivers/mci/sdhci.h            | 3 ++-
>  2 files changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
> index 050621d7fb..eb6a71915f 100644
> --- a/drivers/mci/imx-esdhc-common.c
> +++ b/drivers/mci/imx-esdhc-common.c
> @@ -12,8 +12,6 @@
>  
>  #define	ESDHC_CTRL_D3CD			0x08
>  
> -#define  SDHCI_CTRL_VDD_180         0x0008
> -
>  #define ESDHC_MIX_CTRL			0x48
>  #define  ESDHC_MIX_CTRL_DDREN		(1 << 3)
>  #define  ESDHC_MIX_CTRL_AC23EN		(1 << 7)
> diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
> index 8d21febd7a..a04eb5b7ed 100644
> --- a/drivers/mci/sdhci.h
> +++ b/drivers/mci/sdhci.h
> @@ -132,13 +132,14 @@
>  #define SDHCI_SIGNAL_ENABLE					0x38
>  #define SDHCI_ACMD12_ERR__HOST_CONTROL2				0x3C
>  #define SDHCI_HOST_CONTROL2					0x3E
> -#define  SDHCI_CTRL_UHS_MASK			GENMASK(3, 0)
> +#define  SDHCI_CTRL_UHS_MASK			GENMASK(2, 0)
>  #define   SDHCI_CTRL_UHS_SDR12			0x0
>  #define   SDHCI_CTRL_UHS_SDR25			0x1
>  #define   SDHCI_CTRL_UHS_SDR50			0x2
>  #define   SDHCI_CTRL_UHS_SDR104			0x3
>  #define   SDHCI_CTRL_UHS_DDR50			0x4
>  #define   SDHCI_CTRL_HS400			0x5 /* Non-standard */
> +#define  SDHCI_CTRL_VDD_180			BIT(3)
>  #define  SDHCI_CTRL_DRV_TYPE_MASK		GENMASK(5, 4)
>  #define   SDHCI_CTRL_DRV_TYPE_B			0x0000
>  #define   SDHCI_CTRL_DRV_TYPE_A			0x0010
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



