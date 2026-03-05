Delivery-date: Thu, 05 Mar 2026 11:14:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy5in-008IRd-2b
	for lore@lore.pengutronix.de;
	Thu, 05 Mar 2026 11:14:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy5io-0001oA-48
	for lore@pengutronix.de; Thu, 05 Mar 2026 11:14:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eAhIvs3mxapK5VhdJr86ZPLALRWWHdPvzE+1iEq1WGg=; b=PkFxA2UmK+1pMsQ1GOWIcr3lsD
	0uJY+k6fu4fzhYWGzBcyDI4hwV25fVB4XMy9LkHG28XWCl8a+GO2zZSkN57WjqtpoUdkRuGOl4pfn
	so9t9c5gc7sqVENpVfto8/6ZJJe/5HrX6xXHeL3uwitKMsvWnjJMZcTHuPQm8tvwT1GtXKGMmfqDW
	ZlKZQ7QD5dsKqrWSZIIQSnWeF5SzwMJHg3e9rwsGi7pEAMtaAt25PgvO/l0pMU5pl4XEL0Et7yfIZ
	/sgi04bN5SVedy7QCcoaWhMUWgeI6WaUM0RLwMsdiTXFTOFu5wI8zYL0CAo1/miuQlefbHwtPBFFM
	wKdvrSVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy5iU-00000001X74-11A0;
	Thu, 05 Mar 2026 10:14:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy5iT-00000001X6F-1q4B
	for barebox@bombadil.infradead.org;
	Thu, 05 Mar 2026 10:14:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=eAhIvs3mxapK5VhdJr86ZPLALRWWHdPvzE+1iEq1WGg=; b=kImGKHzb1ZLdIVMlrxj2zLcEJb
	W/vaMe4XaRFo55TpkTTaXfSPHrzMG5tCUvq9oLqDTuP8d2D7ObOnB942h8ZD8igujNqoVRdTuTKAq
	lFoKmS9v8BG7vzeSmQGBdsepRkr66E5v5oguJutg/ri+Kh41uipkrXnqSoXvbVhyYz/0mCyzCfEJt
	XpW7u0kpbfo/tkck91duhhEWu4N2oVsycoU+09vO7HudmAHpemedrGqiwzZ+NP4EqXM5eEieC0h0s
	Uaj56kkdDbDaM9CNrWd7Dp+rUJYlB/iA6cT0j1gbG8FApx3k9pGBm9Yxk3Nb2TsQC17dlL3mK6+s0
	oOoB4sPw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy5iP-00000006SEe-2Ane
	for barebox@lists.infradead.org;
	Thu, 05 Mar 2026 10:14:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vy5iN-0001bi-6Q; Thu, 05 Mar 2026 11:13:55 +0100
Message-ID: <ba330cb2-1959-45f6-a39e-8dea70ffea60@pengutronix.de>
Date: Thu, 5 Mar 2026 11:13:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: David Picard <david.picard@clermont.in2p3.fr>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260305-b4-sa2-usb-v2-0-cf377c10efd5@clermont.in2p3.fr>
 <20260305-b4-sa2-usb-v2-3-cf377c10efd5@clermont.in2p3.fr>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260305-b4-sa2-usb-v2-3-cf377c10efd5@clermont.in2p3.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_101357_654967_C4F91B45 
X-CRM114-Status: GOOD (  16.59  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 3/3] ARM: socfpga: xload: compress image with xz
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 3/5/26 10:55 AM, David Picard wrote:
> Compress the image of the first stage of Barebox with xz because it
> features a good compression ratio.
> Rationale: on some devices, the image has to fit in a ROM as small
> as 64KiB.

With Signed-off-by added:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/configs/socfpga-xload_defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/configs/socfpga-xload_defconfig b/arch/arm/configs/socfpga-xload_defconfig
> index 22bab8d607..ec966c91a8 100644
> --- a/arch/arm/configs/socfpga-xload_defconfig
> +++ b/arch/arm/configs/socfpga-xload_defconfig
> @@ -12,6 +12,7 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
>  # CONFIG_ARM_EXCEPTIONS is not set
>  CONFIG_NAME="socfpga-xload_defconfig"
>  # CONFIG_MEMINFO is not set
> +CONFIG_IMAGE_COMPRESSION_XZKERN=y
>  CONFIG_MMU=y
>  CONFIG_MALLOC_SIZE=0x0
>  CONFIG_MALLOC_DUMMY=y
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



