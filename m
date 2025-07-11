Delivery-date: Fri, 11 Jul 2025 12:08:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uaAfn-00GMGl-1g
	for lore@lore.pengutronix.de;
	Fri, 11 Jul 2025 12:08:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uaAfm-0005k9-Un
	for lore@pengutronix.de; Fri, 11 Jul 2025 12:08:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Pq8DJ2ygJaVm7IHzsEpCX90YpUwveufFy55egWTEAnw=; b=nrXVvSR4efNpiLqG0MyNPv94Bb
	UFwQ2JP/CboXAd2ScIaStHZGJUhFrMjV48/OhIu/j1e9JepQ8g+iI11Tj1LICF8e+E4G8AnnEbE+i
	csonCbhdJMu/bLovSlf8HTPXtZYNjqrwfoeo/jpk4EBq9EjgfA9nfM5wuH3h4BVeaSAR1G3YB1Kmz
	rUr0bDhRqw2QtqeLXHrEGS5+H7qcLsosKLoDhuLSzsUDRqGccceLFISNqABpG0obZjZ+Y5e6FJgPd
	OUHhPLuhkHfhqYeJ263hpi7PN0bNIUsgE0Thf7WfVSYeVLoTePWjinM0J8MRAZY5a2pmpssj/CVtX
	attNlOzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaAfD-0000000ERPE-0JzY;
	Fri, 11 Jul 2025 10:07:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ua9w0-0000000EHpw-2VBv
	for barebox@lists.infradead.org;
	Fri, 11 Jul 2025 09:20:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ua9vy-0004Id-QK; Fri, 11 Jul 2025 11:20:46 +0200
Message-ID: <679f605b-dd8c-4e8a-8452-b27fce57ff77@pengutronix.de>
Date: Fri, 11 Jul 2025 11:20:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: David Picard <david.picard@clermont.in2p3.fr>,
 MList-Barebox <barebox@lists.infradead.org>
References: <9026c709-5e5f-4545-94ca-ea78ea431082@clermont.in2p3.fr>
 <aGbpedWAZoPS054m@pengutronix.de>
 <3c3f1ff0-c43e-448e-9706-72bf160a6ab4@clermont.in2p3.fr>
 <0f14a473-e238-4e7f-9c4b-5b59c4f6bc0e@pengutronix.de>
 <e9281091-84f3-4572-befa-e14cf713be74@clermont.in2p3.fr>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <e9281091-84f3-4572-befa-e14cf713be74@clermont.in2p3.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_022048_631957_7AD8EFD6 
X-CRM114-Status: GOOD (  15.01  )
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

Hi David,

On 7/11/25 10:04, David Picard wrote:
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

Normally, barebox should be able to deal fine with different boards or
even SoCs being enabled, so this is a bug that should preferably be
fixed anyways once we have determined it was indeed the issue.

By the way, the barebox IRC is bridged to Matrix[1], which makes it easy
to see messages sent while offline.

[1]: https://app.element.io/#/room/#barebox:matrix.org

Cheers,
Ahmad

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
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



