Delivery-date: Mon, 13 Apr 2026 10:22:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCCYm-00Bea4-0j
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 10:22:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCCYl-0004Q0-KP
	for lore@pengutronix.de; Mon, 13 Apr 2026 10:22:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/cpwTS8keu8I2HyOHN247RPpIzOsqEYO7HGR2gGkWsc=; b=pX9UWaq98IgSyIdL6DrnNRO+kC
	35pjRry8Vk2L0T256GwHBloxT5zCVklsZBU1sgz353s3QyNbV3lhTZVHuoTTZWgETnAiOH9gWes4U
	7Ji5hHxphsKI1E7QYtQUZi/aI5rLsAVfTzs3kNsOVEkIIqCtwFzxcRk/8cBAmkG/zqBVVVNfJ7RPm
	OPmLRaOjgkrREPfMOJshlqQr9n2UWaoVLviZNxl45oWtDtPQAQAgGy1RUfz6BvPsdDiQKxnFwEoJK
	mNzuZAdGCTCEhG54WshmPOVQSkHbnPGRR6eMMLJn1GMRObjGdJN1OSlG69yG8ikn2QwbyPgh9/1WS
	Nd1Qioyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCCYR-0000000FG30-0n1G;
	Mon, 13 Apr 2026 08:21:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCCYP-0000000FG2D-2neE
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 08:21:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=/cpwTS8keu8I2HyOHN247RPpIzOsqEYO7HGR2gGkWsc=; b=THYZCja9s3xLCn7rLW5mGRviBd
	PmmlFU/y1X9KKmNW0ISpWVgNjGkG8LBgkxWof55z1bcnVQGwMu3+sUAU5KthLWp4mPmur4FIf2QJ0
	cIQuIY/IqwzDA1FH6eLQIIEQchIFueproVW+9U3epCL6tFCTEqy6bKegCYjLTNXHP8A5U7Baqcsy7
	1J8a3cL1LA4Pf2ZqrPobOwLaE794kbAQJcu8MfAK9liHmLYcW3v4qEev6X1/vJLouqHNVObh090xo
	pEamcXXmY9WDRlD2SQJQjsc+GjIN5e/lZxxSEP6K4lPlXjrqIc98FVB9LuoDXgrnPtZDNVQmVXWz3
	NaYKdImQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCCYK-0000000GNpg-3xQg
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 08:21:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1wCCYK-0004GO-9T; Mon, 13 Apr 2026 10:21:52 +0200
Message-ID: <0b4961bd-7195-4d73-8692-e6d5828ba02a@pengutronix.de>
Date: Mon, 13 Apr 2026 10:21:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260330-v2026-03-0-topic-soc_bin_id-v1-0-11292f75b196@pengutronix.de>
 <20260330-v2026-03-0-topic-soc_bin_id-v1-2-11292f75b196@pengutronix.de>
Content-Language: en-US
From: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20260330-v2026-03-0-topic-soc_bin_id-v1-2-11292f75b196@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_092154_611464_4DA3D304 
X-CRM114-Status: GOOD (  22.75  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] i.MX: HAB: update text for HABV4_CSF_UNLOCK_UID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-03-30 14:24, Fabian Pflug wrote:
> With the establishment of global.soc_uid_bin, there is no need to look
> for the serial number and reverse it.

I don't believe reverting the byte order manually is something we were
supposed to be doing before.

> Also some SoC's will have 128-bit UID's, so the hint to 64 bit is not
> correct and should be removed.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>   arch/arm/mach-imx/Kconfig | 11 +++--------
>   1 file changed, 3 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 2e4d1ac80a..bfcb6ae402 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -918,17 +918,12 @@ config HABV4_CSF_UNLOCK_UID
>   	depends on HABV4 && HABV4_CSF_UNLOCK_FIELD_RETURN
>   	string "CSF Unlock UID"
>   	help
> -	  Device specific 64-bit UID required to unlock the field-return
> +	  Device specific UID required to unlock the field-return
>   	  feature. This value must match the per device UNIQUE_ID fuses.
>   
>   	  The below example shows the expected format. The UNIQUE_ID is
> -	  printed during boot by barebox:
> -	    i.MX___ unique ID: 7766554433221100
> -	  or it can be queried by Linux via:
> -	    - cat /sys/devices/soc0/serial_number
> -	      7766554433221100
> -
> -	  So this value have to be set:
> +	  is stored in $global.soc_uid_bin, but must be split into bytes.

"The UNIQUE_ID is is stored"?

> +	  The soc_uid_bin 0011223344556677 becomes:
>   	    - 0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77

I never used this feature but is there any good reason why this should
consume a different format from what $global.soc_uid_bin returns?

>   	  Afterwards, the `hab -p -r` command can be used to burn the fuse.
> 

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


