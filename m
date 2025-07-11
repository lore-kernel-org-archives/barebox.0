Delivery-date: Fri, 11 Jul 2025 10:56:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ua9Y4-00GL7q-0W
	for lore@lore.pengutronix.de;
	Fri, 11 Jul 2025 10:56:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ua9Y3-00043w-M5
	for lore@pengutronix.de; Fri, 11 Jul 2025 10:56:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i/wlF5Ywh456gU1sj6ZqoBxX9tIhlkZQcRJpIJ0qigU=; b=iewPSSVQlZ9zpczcIF1l3y7rNm
	hRGB3sUr3wZRPR6Yoo4iIqbs2rfKslVgiWt2htsLAdOwl2d1ibqvvfz3O4yYE4M8yS90WoBmYaNgS
	grW5G6SXMCtSe6cV4GRxdGj7mOzMcD/HqP7iodpaMr/xOuMZS9ZAMURRd+UDd2eYr3KKbCescQVOz
	8fXNUvOsjYNL6LcwVuF3XM+H6gVmK2FT2iyfKNHXq5QOWy9KpcZg76lZKM5zmL0nU/MMRbtUsvt/F
	OTXN8Bl1cYbdN0FZIlPGTqEx3iIzOIi2Bfjz4f2Wg1dLX+HJ7NQrkwQnpun/y7Vi27Lt6Prx0aama
	2M7F0bfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ua9XR-0000000EDzA-1kix;
	Fri, 11 Jul 2025 08:55:25 +0000
Received: from cczrelay01.in2p3.fr ([134.158.66.141])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ua8kq-0000000E4g4-3yUG
	for barebox@lists.infradead.org;
	Fri, 11 Jul 2025 08:05:15 +0000
Received: from [192.168.73.10] (91-164-5-217.subs.proxad.net [91.164.5.217])
	(authenticated bits=0)
	by cczrelay01.in2p3.fr (8.14.4/8.14.4) with ESMTP id 56B84qxi026453
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NO)
	for <barebox@lists.infradead.org>; Fri, 11 Jul 2025 10:05:10 +0200
Message-ID: <e9281091-84f3-4572-befa-e14cf713be74@clermont.in2p3.fr>
Date: Fri, 11 Jul 2025 10:04:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: MList-Barebox <barebox@lists.infradead.org>
References: <9026c709-5e5f-4545-94ca-ea78ea431082@clermont.in2p3.fr>
 <aGbpedWAZoPS054m@pengutronix.de>
 <3c3f1ff0-c43e-448e-9706-72bf160a6ab4@clermont.in2p3.fr>
 <0f14a473-e238-4e7f-9c4b-5b59c4f6bc0e@pengutronix.de>
Content-Language: en-US
From: David Picard <david.picard@clermont.in2p3.fr>
In-Reply-To: <0f14a473-e238-4e7f-9c4b-5b59c4f6bc0e@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_010513_256573_09636CC5 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: boards/enclustra-sa2: add new board (HELP NEEDED)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

CONFIG_ARCH_SOCFPGA_ARRIA10 was enabled, indeed. I disabled a bunch of boards.

# CONFIG_MACH_SOCFPGA_ALTERA_SOCDK is not set
# CONFIG_MACH_SOCFPGA_EBV_SOCRATES is not set
# CONFIG_MACH_SOCFPGA_ENCLUSTRA_AA1 is not set
# CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES is not set
# CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC is not set
# CONFIG_MACH_SOCFPGA_TERASIC_DE10_NANO is not set
# CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT is not set
# CONFIG_ARCH_SOCFPGA_ARRIA10 is not set

However, I won't be able to test until Tuesday morning. I'll report then.

David


Le 10/07/2025 à 20:30, Ahmad Fatoum a écrit :
> As for why it hangs, I suspect you have CONFIG_ARCH_SOCFPGA_ARRIA10
> enabled, despite that SA2 using a Cyclone V.
>
> Can you check if CONFIG_ARCH_SOCFPGA_ARRIA10 is enabled and try again
> after disabling it if it is?



