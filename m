Delivery-date: Wed, 16 Jul 2025 10:58:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ubxyZ-000R8b-2L
	for lore@lore.pengutronix.de;
	Wed, 16 Jul 2025 10:58:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ubxyZ-0007LW-64
	for lore@pengutronix.de; Wed, 16 Jul 2025 10:58:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Az7XeVBI+DRw0g59LC9AsM8jnTegvA2q0ncHxSArpH0=; b=LgjOmpxlIWnZVYhJVCwFZDimQd
	WvLvNJRUjIffO3AtIba0gikkrmd7RKiXYheens8K+1zdFRheIrr2oK25tQNPVEqbpoggHSCP93C6/
	WP+6JuVtekTu2/mnOFADXDPdo7PdHxWMbz6k1w8uW8Brl65x7I1rJ/l/OuRtk1PDRGGTWDCFXnVX7
	dJnV67ZoGHwvZx3u/BiSQVKEGiqa7RN1UBu4/mW1/kFroFkJsoU9dbT3DJYvmjZTDjok0zGqiBfMo
	LHbQbgdKlNaZr9/rfQCEbYg6HZQkWPxFN4aKMWczRvLbMY/zrWPPeiYTbwTcOOSNhxk6H+AYlBwoG
	Pdyfnn5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubxxw-00000007Dtw-28ew;
	Wed, 16 Jul 2025 08:58:16 +0000
Received: from cczrelay02.in2p3.fr ([134.158.66.142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubxxu-00000007Dt0-08bu
	for barebox@lists.infradead.org;
	Wed, 16 Jul 2025 08:58:15 +0000
Received: from [134.158.124.135] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay02.in2p3.fr (8.14.4/8.14.4) with ESMTP id 56G8wCER002282
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NO)
	for <barebox@lists.infradead.org>; Wed, 16 Jul 2025 10:58:12 +0200
Message-ID: <9ba2fd9c-4181-40ac-bce5-31e1aebe4611@clermont.in2p3.fr>
Date: Wed, 16 Jul 2025 10:58:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: David Picard <david.picard@clermont.in2p3.fr>
To: barebox@lists.infradead.org
References: <9026c709-5e5f-4545-94ca-ea78ea431082@clermont.in2p3.fr>
 <aGbpedWAZoPS054m@pengutronix.de>
 <3c3f1ff0-c43e-448e-9706-72bf160a6ab4@clermont.in2p3.fr>
 <0f14a473-e238-4e7f-9c4b-5b59c4f6bc0e@pengutronix.de>
 <e9281091-84f3-4572-befa-e14cf713be74@clermont.in2p3.fr>
Content-Language: fr
In-Reply-To: <e9281091-84f3-4572-befa-e14cf713be74@clermont.in2p3.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250716_015814_335362_5D3F100F 
X-CRM114-Status: GOOD (  10.84  )
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
Subject: Re: boards/enclustra-sa2: add new board (HELP NEEDED)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

After disabling the Arria 10, I can boot Linux:
- CONFIG_MACH_SOCFPGA_ENCLUSTRA_AA1
- CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES
- CONFIG_ARCH_SOCFPGA_ARRIA10

I used Enclustra's devicetree, from their BSP. The last Barebox boot log 
(https://paste.debian.net/1386131/) shows an issue with:
- the Ethernet PHY
- the QSPI flash
- the MMC

I pushed my code to 
https://github.com/dpproto/barebox/tree/board-enclustra-sa2 
<https://github.com/dpproto/barebox/tree/board-enclustra-sa2>.

David

Le 11/07/2025 à 10:04, David Picard a écrit :
> Hi,
>
> CONFIG_ARCH_SOCFPGA_ARRIA10 was enabled, indeed. I disabled a bunch of 
> boards.
>
> # CONFIG_MACH_SOCFPGA_ALTERA_SOCDK is not set
> # CONFIG_MACH_SOCFPGA_EBV_SOCRATES is not set
> # CONFIG_MACH_SOCFPGA_ENCLUSTRA_AA1 is not set
> # CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES is not set
> # CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC is not set
> # CONFIG_MACH_SOCFPGA_TERASIC_DE10_NANO is not set
> # CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT is not set
> # CONFIG_ARCH_SOCFPGA_ARRIA10 is not set
>
> However, I won't be able to test until Tuesday morning. I'll report then.
>
> David
>
>
> Le 10/07/2025 à 20:30, Ahmad Fatoum a écrit :
>> As for why it hangs, I suspect you have CONFIG_ARCH_SOCFPGA_ARRIA10
>> enabled, despite that SA2 using a Cyclone V.
>>
>> Can you check if CONFIG_ARCH_SOCFPGA_ARRIA10 is enabled and try again
>> after disabling it if it is?
>
>



