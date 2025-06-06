Delivery-date: Fri, 06 Jun 2025 16:45:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNYJa-004PmS-2K
	for lore@lore.pengutronix.de;
	Fri, 06 Jun 2025 16:45:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNYJa-0006f4-5C
	for lore@pengutronix.de; Fri, 06 Jun 2025 16:45:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Subject:From:To:MIME-Version:Date:Message-ID:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SqBnZYMHod4qwt463VnIdlkJ+2HGhclpEb1UNQAAJJg=; b=KOIgQEvh8WZ4JKIO+cuoQIOBdG
	rnnTKzs9gnRUBpxq6WzZsIGb45EbWHTXXgpJoFD/vLYUMiXhRZy7XmOHH75QKRH+1aa1uYfI1gSHk
	fnVOU2f8phZ8vfI2rhqRLLXNI42w9J293UxOfTyV1yaZpAeWmZjOggptTiUStdgEWrUukJjNYMAPL
	YGAeb+g706qe2gtRf4zPbou6XBWEdgDFYmIx3tr1ly3H9a3JUDuRcbxyc7NpyOB8ygM3C9K/oSYqu
	MNk5IVKvqFuVv+IQd82B4ktNugSr9uPqDudj3fL+aWTO76E0kwW5F/Vxm3eDG0bAplG+xtRPJd2YZ
	8EwBAeGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNYIh-00000000Rkl-2bCa;
	Fri, 06 Jun 2025 14:44:07 +0000
Received: from cczrelay02.in2p3.fr ([134.158.66.142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNYId-00000000Rk2-1tVU
	for barebox@lists.infradead.org;
	Fri, 06 Jun 2025 14:44:05 +0000
Received: from [134.158.124.135] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay02.in2p3.fr (8.14.4/8.14.4) with ESMTP id 556EhwEC012877
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NO)
	for <barebox@lists.infradead.org>; Fri, 6 Jun 2025 16:43:59 +0200
Message-ID: <f8c5021d-3dcb-47b5-8f27-09e33991d6ea@clermont.in2p3.fr>
Date: Fri, 6 Jun 2025 16:43:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: fr, en-US
To: MList-Barebox <barebox@lists.infradead.org>
From: David Picard <david.picard@clermont.in2p3.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250606_074403_762558_59901CAA 
X-CRM114-Status: UNSURE (   8.18  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: moving to same chip, different board: no console output
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

I am working on a project for which we selected an Intel/Altera Cyclone 
5 SoC FPGA (an FPGA with an ARM core). As the project evolves, I have to 
change boards and I am facing issues to boot: absolutely no output on 
the serial console (USB virtual COM port), not even from Barebox.

Previous working configuration:
- SD card image produced by Buildroot with Barebox as the bootloader
- Terasic ADC-SoC demo board, booting from the SD card.
https://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&No=1061&PartNo=1

Current non-working configuration:
- Eclustra Mercury+ SA2 module, also with a Cyclone 5, plus SDRAM, RTC, 
QSPI flash, etc. I think that the main difference between both Cyclone 5 
chips is the size of the logic section is bigger on the module. The 
module has more RAM.
https://www.enclustra.com/en/products/system-on-chip-modules/mercury-sa2/
- Enclustra ST1 demo baseboard. It has a JTAG port, should this 
information be of interest.
https://www.enclustra.com/en/products/base-boards/mercury-st1/

I the current configuration, I get no output on the serial console.

What I did:
- I checked the hardware configuration (switches to select booting from 
the SD card and USB config) with a bare-metal application provided by 
Enclustra.
- I used Enclutra's .dts and .dtsi files, which differ very slightly 
from the Linux kernel tree files.
- I checked how the SD card is connected: to the exact same pins in both 
configurations.
- I had a look at Barebox menuconfig, but nothing caught my eye.

So, now I'm stuck, and I'm looking for some guidance.

David



