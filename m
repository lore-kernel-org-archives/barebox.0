Delivery-date: Wed, 22 Feb 2023 13:44:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUoU9-00FKBV-7c
	for lore@lore.pengutronix.de; Wed, 22 Feb 2023 13:44:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUoU7-0003yj-VN
	for lore@pengutronix.de; Wed, 22 Feb 2023 13:44:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Afr4a94VCVKoLIwTFAXj9RHUSjBfeSUTN9rYwWqKAw0=; b=2TLQOiclwwYZb6CXl+CJ8HW+2c
	KLy9qW+wpNRP96cqIbTfQf8WxEUFJGEBuMYmDP1Sv1SNQGFXBMwn9pFyeL+9f2rikAAoBF97CAleX
	Cjetot5hcDeANSrihxkwhr6wW+BPFEmk9Z3So4tUE7NFfEr4MIOUFDs8r7wvUh4DUNAh4b4nlSmpf
	MJW5ApxZHd8cMtZtk95p6fAmKXsHiUjdgNa8mpU6wTB5N6CCBLFLWEOyAmWOgU0KIkZL1Ps+grVBT
	bUPacP5O3GybqaCpXwz9nvwaNir31U25dDLvCkFbDyaobY3MHk4XU59KD6h+eEFTY853wkRD52q7n
	oXsC9ODA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUoT0-00CQl5-AT; Wed, 22 Feb 2023 12:43:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUoSv-00CQkO-KL
	for barebox@lists.infradead.org; Wed, 22 Feb 2023 12:43:23 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUoSu-0003sn-Cw; Wed, 22 Feb 2023 13:43:20 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUoSt-0008LY-PV; Wed, 22 Feb 2023 13:43:19 +0100
Date: Wed, 22 Feb 2023 13:43:19 +0100
To: Kopfensteiner_Michael <michael.kopfensteiner@vahle.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <20230222124319.GM10447@pengutronix.de>
References: <20230220090615.4451-1-michael.kopfensteiner@vahle.com>
 <20230220090615.4451-2-michael.kopfensteiner@vahle.com>
 <20230221092017.GY10447@pengutronix.de>
 <AM6PR04MB650360BA128BCF51CF7A18FCE1AA9@AM6PR04MB6503.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <AM6PR04MB650360BA128BCF51CF7A18FCE1AA9@AM6PR04MB6503.eurprd04.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230222_044321_689496_6BDBD3D9 
X-CRM114-Status: GOOD (  36.35  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] ARM: IMX8MP: add initial support for Variscite
 DT8MCustomBoard with iMX8MP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Feb 22, 2023 at 11:15:24AM +0000, Kopfensteiner_Michael wrote:
> Hi Sasha,
> 
> thanks for your remarks on my patches. I agree with your comments.
> I will rework the patches and submit a second version soon.
> 
> I added a small reply to the memory node remark to point out,
> that I have no possibility to test my solution with other hardware
> configurations and I am unsure whether I choose the best solution.
> 
> On Tue, Feb 21, 2023 at 10:20AM +0100, Sascha Hauer wrote:
> 
> [snip]
> 
> >> diff --git a/arch/arm/dts/imx8mp-var-dart-dt8mcustomboard.dts b/arch/arm/dts/imx8mp-var-dart-dt8mcustomboard.dts
> >> new file mode 100644
> >> index 0000000000..704289aa0b
> >> --- /dev/null
> >> +++ b/arch/arm/dts/imx8mp-var-dart-dt8mcustomboard.dts
> >> @@ -0,0 +1,680 @@
> >> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> >> +/*
> >> + * Copyright 2019 NXP
> >> + * Copyright 2020-2021 Variscite Ltd.
> >> + * Copyright 2023 VAHLE Automation GmbH
> >> + */
> >> +
> >> +#include "imx8mp-var-dart.dtsi"
> >> +
> >> +/ {
> >> +     model = "Variscite DART-MX8M-PLUS on DT8MCustomBoard 2.x";
> >> +
> >> +     // use the memory controller instead
> >> +     /delete-node/ memory@40000000;
> >
> > Better don't add this node to the dtsi file. Is the memory size detected
> > correctly? The dtsi file describes 6 GiB of memory which is rather
> > unusual. Is that what your board has?
> >
> 
> I will delete the memory node.
> 
> As for the memory size:
> Those modules are sold with RAM ranging from 1 to 8 GiB, my module actually
> has 4GiB of RAM. The dtsi used was taken from Variscites provided linux sources.
> Hence I thought it might be nice to rely on the memory controller to figure the actual
> configuration out. I ran "memtest" successfully and used "devinfo mem0" to
> validate, that it does see 4GiB of RAM for this node.
> But I haven't checked whether some other RAM size option gets detected correctly
> as well, as I only have this one SOM at hand.

I just stumbled over the 6 GiB in the dtsi file. If your 4 GiB are detected
ok then everything is fine.

> [snip]
> 
> By the way, I have base those patches on the "next" branch, but I realized
> that I have no clue what is preferred by the project's maintainers.
> Shall I base those patches on "master" instead?

It usually doesn't matter. Normally there are no conflicts and I'll
handle trivial conflicts in either direction here at my side. For non
trivial conflicts we'll have to look at the individual case.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


