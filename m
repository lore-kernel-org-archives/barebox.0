Delivery-date: Fri, 08 Jul 2022 10:28:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9jLt-00AIIt-DJ
	for lore@lore.pengutronix.de; Fri, 08 Jul 2022 10:28:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9jLu-00065Q-DC
	for lore@pengutronix.de; Fri, 08 Jul 2022 10:28:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jFJ0fDNqeAh2XzkxN1tX6djcRpda38cisoLvQMNPJoE=; b=T6nR+TIwNDqolUt3a3GdheD3EL
	Wm8u9Tr4pC98TZaWhff5bPjxcmVnz2xGED1NKm7av9hfLgDqC+cEAl7mb8p4GVzY46cE+HZ7xOBiA
	Uo7odb5Sx6n98+9YGqpFBszbsjdv7QuFIgnh8OayCj1RlJqo+2LE7ysXX3E5pmnlooPoI48bTqtjY
	YblpwuHpcflgXnaJC65OyOCloV72MDQ/t2YZoGFfKxNerpfYazAc5kzVRSPBeyc1Pn/rc8sFJ75vy
	THXRdAoDOyjOV0DfTwpMukNkkVBV2A/ILeHPcV/9dNG9KiJA6VLOu0MRMMJXYOnnAPmenZsawyk2L
	dILSwSEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9jKT-002Wyk-9r; Fri, 08 Jul 2022 08:27:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9jIo-002WLd-Ne
	for barebox@lists.infradead.org; Fri, 08 Jul 2022 08:25:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o9jIn-0005L6-Cm; Fri, 08 Jul 2022 10:25:29 +0200
Message-ID: <c26423bf-bdbf-d8d3-c749-5a935848c4e5@pengutronix.de>
Date: Fri, 8 Jul 2022 10:25:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Steffen Trumtrar <str@pengutronix.de>, barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
References: <20220708062411.711639-1-str@pengutronix.de>
 <20220708062411.711639-5-str@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220708062411.711639-5-str@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220708_012530_882934_247258D9 
X-CRM114-Status: GOOD (  15.15  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 5/5] ARM: socfpga: defconfig: add aa1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 08.07.22 08:24, Steffen Trumtrar wrote:
> From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> 
> Disable KALLSYMS because of image size.

Outdated commit message.

> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/configs/socfpga-arria10_defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/configs/socfpga-arria10_defconfig b/arch/arm/configs/socfpga-arria10_defconfig
> index a37bae6217..5ac2198d41 100644
> --- a/arch/arm/configs/socfpga-arria10_defconfig
> +++ b/arch/arm/configs/socfpga-arria10_defconfig
> @@ -1,4 +1,5 @@
>  CONFIG_ARCH_SOCFPGA=y
> +CONFIG_MACH_SOCFPGA_ENCLUSTRA_AA1=y
>  CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES=y
>  CONFIG_AEABI=y
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


