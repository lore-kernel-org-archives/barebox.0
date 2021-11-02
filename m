Delivery-date: Tue, 02 Nov 2021 09:03:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mholC-0003TA-Ah
	for lore@lore.pengutronix.de; Tue, 02 Nov 2021 09:03:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mholB-0000y6-FU
	for lore@pengutronix.de; Tue, 02 Nov 2021 09:03:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4loGAZxG2mTag/0q444JzBLlzPOoeuFbQRMLNfesoA4=; b=cksZbowcoBLmm6BbFqYXy3zSqL
	CLNiMA0FBUHo+Fx8jp+dfmDfyK/jToz7FYIihlz8a1frJmM6ZLySTU2LHBdaFFj6P945XBMXjiwaw
	TxUi/Rc7pAGLHq/YIOIeqtI32kCQxlFZzUqDNzVxmq7pWRWydCA5njv50RoAS+bkWdnkaBoeTFiuV
	LT0z2zgjJnlWPdAo+OHk++utAtnmS+dh/LUAoRmI4vFORJNuRGJUximg6Ywb/K5lgCa+TfLpmr/ex
	m5fgyQ2eqic9K9f00CKE971BSqoNmas7WjsZdJOPO9f6wNcCa/c1vDeZWtBgfsUwzP1h+bDvC8ncu
	Ij5i/QDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhojh-000rbM-Uz; Tue, 02 Nov 2021 08:01:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhojc-000raa-MS
 for barebox@lists.infradead.org; Tue, 02 Nov 2021 08:01:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mhojb-0000m5-Dn; Tue, 02 Nov 2021 09:01:31 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mhoja-0003nQ-VM; Tue, 02 Nov 2021 09:01:30 +0100
Date: Tue, 2 Nov 2021 09:01:30 +0100
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20211102080130.GX25698@pengutronix.de>
References: <20211101174053.68486-1-abbotti@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211101174053.68486-1-abbotti@mev.co.uk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:58:20 up 257 days, 11:22, 129 users,  load average: 0.32, 0.23,
 0.28
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211102_010132_756761_EEEC289F 
X-CRM114-Status: GOOD (  18.79  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: socfpga: Set reset-names property for &mmc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Nov 01, 2021 at 05:40:53PM +0000, Ian Abbott wrote:
> Since commit 90bdf1e5d1e4 ("mci: dw_mmc: match against StarFive MMC
> compatibles"), the dw_mmc driver requires a reset line called "reset".
> The slightly earlier commit a3cf324593ea ("mci: dw_mmc: add optional
> reset line") introduced the reset line support, but made it optional.
> 
> The device tree node for SoCFPGA's MMC device has the "resets" property,
> but is missing the "reset-names" property, so MMC no longer works.
> Barebox produces the error message:
> 
> ERROR: dw_mmc ff704000.dwmmc0@ff704000.of: probe failed: Invalid argument
> 
> Add the missing "reset-names" property to the "&mmc" node in
> "arch/arm/dts/socfpga.dtsi".  It probably needs fixing in the upstream
> Linux device tree sources too!

The reset binding lists reset-names as an optional property, so it seems
our reset code needs fixing and not the dtsi file.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

