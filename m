Delivery-date: Thu, 11 Jan 2024 15:16:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNvrY-00D3fb-2h
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 15:16:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNvrY-0000T1-6i
	for lore@pengutronix.de; Thu, 11 Jan 2024 15:16:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tnh8sHdGGZ9TwMrg2Vd/Aj7XrIYLXJSx8pZFekUx/2Q=; b=cl2nDcrrkVD32gxBaEkL6R72XK
	og8f4mtkYCuJmTahamsTcIVl1cJyrLxAu7k9aivrKuFYz39bdqlzpRs2d8eAbHcEXR2jYXQIzGkbX
	D11wuoJft17gRbzljECLYs7ngu04/LeoPpacgT3Dd7gp+sIJj0lo0wd7cMLWNeOQimj3icpZDay/O
	iAxgYDAADO0beRPasyPqFOJ7/BPqLqN/YzxBCa3Dx8p4TYKS0jpktf3BnMBJmX4xRANd0xgrq2GpL
	qah7sMKN7P8uOfE0xVzUC6d/z/+U+twahdcHxu+9lkrELk4BG3ldzx3d8+tMWJ/CUYi7Uxr4CbhF9
	GuteBAVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNvqO-000GY6-0P;
	Thu, 11 Jan 2024 14:15:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNvqK-000GXW-3D
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 14:15:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNvqJ-00009J-LT; Thu, 11 Jan 2024 15:15:35 +0100
Message-ID: <c09e8b3d-539e-4890-878d-ec699df00fb4@pengutronix.de>
Date: Thu, 11 Jan 2024 15:15:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
References: <20240110160112.4134162-1-a.fatoum@pengutronix.de>
 <170498227339.3258338.12191952900235410621.b4-ty@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <170498227339.3258338.12191952900235410621.b4-ty@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_061537_033306_32B3F070 
X-CRM114-Status: GOOD (  15.21  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 00/11] ARM64: layerscape: make LS1046 DMA coherent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 11.01.24 15:11, Sascha Hauer wrote:
> 
> On Wed, 10 Jan 2024 17:01:02 +0100, Ahmad Fatoum wrote:
>> Upstream DT changed /soc of NXP Layerscape LS1046A to be dma-coherent.
>> This means that:
>>
>>  1) Linux v6.1 expects bootloader to configure DMA masters to snoop
>>     caches
>>  2) bootloader needs to skip cache maintenance when talking to DMA
>>     master when it has set snoop bits
>>
>> [...]
> 
> Applied, thanks!
> 
> [01/11] dma: rename OF_DMA_DEFAULT_COHERENT to ARCH_DMA_DEFAULT_COHERENT
>         commit: 6012c3867777e9e6d6b14d0117f8b37e2b860642

Does the commit hash mean it was applied to master? If it's also for next,
it may be confusing, because these commit hashes aren't stable.

(I don't mind this series going into master though. It fixes a bug after
 all).

Thanks,
Ahmad

> [02/11] dma: select ARCH_DMA_DEFAULT_COHERENT for x86 and sandbox
>         commit: a16e16575ae797e33f1a499b5f6e28f6cf6c3527
> [03/11] dma: introduce CONFIG_OF_DMA_COHERENCY
>         commit: 62753977d4231a160e4fb3bd3fe585e151792eb4
> [04/11] RISC-V: StarFive: J7100: set /soc/dma-noncoherent
>         commit: 4c42bc96da90c88b2dcb2b24bb56aad1f9119f9f
> [05/11] ARM: dts: layerscape: add header for barebox DT overrides
>         commit: 224bbd61d5744b19963f8d0335ef5f355eed9850
> [06/11] ARM: dts: layerscape: mark ls1046a SoC DMA incoherent in DT
>         commit: 5961dae8f9d11c918522c035889045f6f65bca91
> [07/11] of: populate new device_d::dma_coherent attribute
>         commit: 804a07a7bb573334b6eeb4049c92f28421f2a00a
> [08/11] dma: fix dma_sync when not all device DMA is equally coherent
>         commit: f856171ad6bfd067729350d9604622f8cf09ba07
> [09/11] dma: align barebox DMA coherency setting with kernel's
>         commit: de265d926a92462b836749d2633faef2631b459c
> [10/11] ARM: layerscape: configure all DMA masters to be cache-coherent
>         commit: 475a399049ce30c40c86bf9e51cfa993f5ce573d
> [11/11] ARM: layerscape: enable DWC3 snooping on ls1046a
>         commit: f1f215dbef3a49754e03078f61258bd5e06286f7
> 
> Best regards,

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



