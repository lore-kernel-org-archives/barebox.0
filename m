Delivery-date: Tue, 09 Dec 2025 10:48:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSuKX-009W8f-0i
	for lore@lore.pengutronix.de;
	Tue, 09 Dec 2025 10:48:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSuKW-0005Fa-MJ
	for lore@pengutronix.de; Tue, 09 Dec 2025 10:48:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z2s9q3JsShvF1NgrTKqsOMSqtl9ZdsU/vGpjQeD8UVA=; b=34H8peyMaAX15lCVuprdOiNHKy
	4zJjI7s+yjF1pxXz2i6SSwk9rfbwvxiuwC6hwzmezfY5dp8XIlYp3UWQZk7CRHAWkmJmLN9y2GOCV
	r0oDamZ1sE2iK3LMEIMQPRxk4KnML4raR3rxbLLtDsNsNUw2Yteu0/neZ6M6critltgoau7WA+GZ+
	c8Rn4YECFcp6mo/b9DTSSUAL5Ep1zhUiKwL9MsKs+b13nEWHNseOZCEEor0VfLydbXuOavBpbo0w4
	+TQOLUEnze5fEcOzFQINDECh+mCuzfZQ7ftTZxok6hkar+WBWOgF2Z8kKXnc3cyXm330PX9Jk6kuk
	TK5/ml3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSuK1-0000000E4SB-0NXI;
	Tue, 09 Dec 2025 09:47:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSuJw-0000000E4Rd-3y0D
	for barebox@lists.infradead.org;
	Tue, 09 Dec 2025 09:47:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vSuJv-0005Aw-C4; Tue, 09 Dec 2025 10:47:47 +0100
Message-ID: <8c86e290-7e82-417f-943d-cd45fa147e8a@pengutronix.de>
Date: Tue, 9 Dec 2025 10:47:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20251209081731.3444677-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251209081731.3444677-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_014749_011917_81C42482 
X-CRM114-Status: GOOD (  16.61  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX Riotboard: Use eMMC boot partition to boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 12/9/25 9:17 AM, Sascha Hauer wrote:
> The Riotboard boots fine from eMMC boot partitions, so use them to store
> barebox.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Is this worth a migration guide entry?

Cheers,
Ahmad

> ---
>  arch/arm/boards/embest-riotboard/board.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/embest-riotboard/board.c b/arch/arm/boards/embest-riotboard/board.c
> index ebaff48388..83fbf0ee57 100644
> --- a/arch/arm/boards/embest-riotboard/board.c
> +++ b/arch/arm/boards/embest-riotboard/board.c
> @@ -21,7 +21,7 @@
>  
>  static int riotboard_probe(struct device *dev)
>  {
> -	imx6_bbu_internal_mmc_register_handler("emmc", "/dev/mmc3.barebox",
> +	imx6_bbu_internal_mmcboot_register_handler("emmc", "/dev/mmc3",
>  			BBU_HANDLER_FLAG_DEFAULT);
>  	imx6_bbu_internal_mmc_register_handler("sd", "/dev/mmc2", 0);
>  

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



