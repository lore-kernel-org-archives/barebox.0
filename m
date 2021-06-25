Delivery-date: Fri, 25 Jun 2021 10:02:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgmq-0008Fq-57
	for lore@lore.pengutronix.de; Fri, 25 Jun 2021 10:02:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgmp-0000MF-2W
	for lore@pengutronix.de; Fri, 25 Jun 2021 10:02:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1NSukZ8XbFb2fdOZNeQHCuHPtVSIuAXFoNHgEQ98znQ=; b=UQC3GOc8nLgT1teffln2LiMSJx
	EKGz1lrATbHt+BVNZcI/NN6f8MODS6DHiFDs3gOtwfVSXAK1UtP3v6L/H9NDnwvX6AmuXxz+dDF+6
	Q8UndmH3GWBf3T1j6m+xFMoVqCJqQSuD+vMagbSiX53fWhn4M4+mkvDpbJumfBSkqsHz+XgyvdIWT
	QxYUruhAusqTbWYQM2MaelGvwf9l04ccIge/R4ORUQZc2Nj/MAi8PH3nYmVTo8Kv4AYEACRvIZO3e
	zoHg3p2215itqXzXfiRMNCusKo8MchTnm2GxbQuhL3gw1yJsoH+wsye/BZgZcfeN4bJo4Bb/C/inR
	kBhSlE5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwglG-000BBB-Bu; Fri, 25 Jun 2021 08:00:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwgR8-0003Ku-RH
 for barebox@lists.infradead.org; Fri, 25 Jun 2021 07:39:40 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgR7-0004IL-AE; Fri, 25 Jun 2021 09:39:37 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgR7-0002be-0t; Fri, 25 Jun 2021 09:39:37 +0200
Date: Fri, 25 Jun 2021 09:39:37 +0200
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210625073936.GC9782@pengutronix.de>
References: <20210624150054.1205422-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210624150054.1205422-1-m.tretter@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:39:26 up 127 days, 11:03, 118 users,  load average: 0.20, 0.42,
 0.26
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_003938_981881_3129D4BC 
X-CRM114-Status: GOOD (  21.76  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/7] ZynqMP: Cleanup and extend board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 24, 2021 at 05:00:47PM +0200, Michael Tretter wrote:
> This is v2 of the series to extend the ZynqMP ZCU104 board support.
> 
> This series adds support for reset source detection, Barebox environment,
> barebox_update and soft reset (via PSCI) for the ZynqMP ZCU104 board. It
> extends the zynqmp_defconfig to enable more features that you would probably
> want by default on a ZynqMP board. I also added some introductory information
> how to build and use Barebox on the ZynqMP.
> 
> Compared to v1, I removed the actually unused zynqmp.h file, and changed the
> reset source from RESET_UKWN to RESET_JTAG on debugger reset.
> 
> Michael
> 
> Changelog:
> 
> - Set RESET_JTAG on debugger reset
> - Remove unused zynqmp.h
> 
> Michael Tretter (7):
>   ARM: zynqmp: set reset source
>   clk: zynqmp: do not enable already enabled clocks
>   dts: zcu104: add Barebox environment
>   ARM: zynqmp: add update handler
>   ARM: zynqmp: zcu104: register update handler
>   ARM: zynqmp: defconfig: enable more features
>   Documentation: zynqmp: add some documentation

Applied, thanks

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

