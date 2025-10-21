Delivery-date: Tue, 21 Oct 2025 17:29:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBEIN-00AIMJ-1n
	for lore@lore.pengutronix.de;
	Tue, 21 Oct 2025 17:29:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBEIN-000701-0m
	for lore@pengutronix.de; Tue, 21 Oct 2025 17:29:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N5pSRscQ2+s/fT1MwmQD4LMTKErkhbutNRIp6rXVvNk=; b=cKQwwEQf22x9oilYCNFWExTUV7
	HDui8iRuwd+U3qzc2d5bjzT4YxnaZzpWv0sIc22KGxtyEAP2Y9ehr1FGzM3vRcXofltTJcRBE10IN
	ziQSWUOQsxE1iSHepjqvn2GZUstwcjZp+XaDSY3ohWMGwFNJORnIOUlmveB3je1ikMKYpS8EOYszX
	in/gA42IaZBmCpcRvmgoMQ54wP3Bd3NF+g0dw+AgtRCqhKONzwunXnIaX+GZuDySFRwjscoWW8j0T
	EXQ1S+t5BXbCjGA9OfbooMXhxaQ0k9XJZ14/y/im33TlilcJAnSCtLKVT3tT5XtjdQy+xYLwrv3dt
	7ruMBfZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBEHt-0000000HVrV-0nY9;
	Tue, 21 Oct 2025 15:28:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBEHo-0000000HVpS-1Knt
	for barebox@lists.infradead.org;
	Tue, 21 Oct 2025 15:28:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBEHm-0006rg-SP; Tue, 21 Oct 2025 17:28:30 +0200
Message-ID: <81684845-be3f-462e-8e4f-7d420d91e241@pengutronix.de>
Date: Tue, 21 Oct 2025 17:28:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pfitzner <f.pfitzner@pengutronix.de>, barebox@lists.infradead.org
References: <20251021144106.1228193-2-f.pfitzner@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251021144106.1228193-2-f.pfitzner@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_082832_358990_8D011DB2 
X-CRM114-Status: GOOD (  17.57  )
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
Subject: Re: [PATCH] ARM: i.MX: karo-tx6: use mmcboot handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 10/21/25 4:41 PM, Fabian Pfitzner wrote:
> Use the mmcboot handler instead. This handler automatically determines
> the boot partition by considering the partition's state, thus avoiding
> to specify it manually.
> 
> Signed-off-by: Fabian Pfitzner <f.pfitzner@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

I think this is worth an entry in the migration guide. See the fixup I
just sent. I think Sascha can squash it if there are no other comments.

Cheers,
Ahmad

> ---
>  arch/arm/boards/karo-tx6x/board.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/karo-tx6x/board.c b/arch/arm/boards/karo-tx6x/board.c
> index f3ff59afb9..43e23f00cd 100644
> --- a/arch/arm/boards/karo-tx6x/board.c
> +++ b/arch/arm/boards/karo-tx6x/board.c
> @@ -115,7 +115,7 @@ static int tx6x_devices_init(void)
>  		of_device_enable_and_register_by_name("environment-nand");
>  		of_device_enable_and_register_by_alias("nand");
>  	} else {
> -		imx6_bbu_internal_mmc_register_handler("eMMC", "/dev/mmc3.boot0",
> +		imx6_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc3",
>  						       BBU_HANDLER_FLAG_DEFAULT);
>  		of_device_enable_and_register_by_name("environment-emmc");
>  		of_device_enable_and_register_by_alias("mmc3");

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



