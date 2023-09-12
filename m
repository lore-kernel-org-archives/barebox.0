Delivery-date: Tue, 12 Sep 2023 10:46:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfz2l-00CRsc-2l
	for lore@lore.pengutronix.de; Tue, 12 Sep 2023 10:46:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfz2j-0007XH-8U
	for lore@pengutronix.de; Tue, 12 Sep 2023 10:46:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kqA6hjFGXJqQ4oYwMorB1h4zkqD/cHkcjD7OVH1Ccnc=; b=lwnZXeeUZTD0Zc0NeJqrM5S5d8
	aW6azOllEdx5hua/tiQb0X9HZ1HKzcO2Xs0enUS9Cl/S/tOCq1tgQV35RCpw3rCLHC6sDBoxxxc2x
	0Iw9eAN66khD6GmSmT+T9AHODc9kyWvo3aA/w/p8Y/tRDvaM3PeUcFFAFT9YeA+yT8xz/3JOq+50+
	Pgn6ZX2qkhKNPtOYU6p3Y1tCJjSU6PRb7dPjTEUS8o0hlrzxafgSq13mNR7t7lgjtqX2YuMjDawYc
	GRH1xlV1GFUk6L6U1vuqkEHt05K4D8MBiHIYRGXN1MYq2Tvn4niVv5JOdiPY0IAWF5L08yu2hKoJV
	yn+EXBXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfz1c-002cNj-0w;
	Tue, 12 Sep 2023 08:45:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfz1Z-002cMt-0M
	for barebox@lists.infradead.org;
	Tue, 12 Sep 2023 08:45:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qfz1X-0007Kt-J3; Tue, 12 Sep 2023 10:45:31 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qfz1X-005jow-6g; Tue, 12 Sep 2023 10:45:31 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qfz1X-005YSP-00; Tue, 12 Sep 2023 10:45:31 +0200
Date: Tue, 12 Sep 2023 10:45:30 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, mfe@pengutronix.de
Message-ID: <20230912084530.GR637806@pengutronix.de>
References: <20230911124808.2748160-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230911124808.2748160-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230912_014533_147492_56FBDFAB 
X-CRM114-Status: GOOD (  18.96  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] aiodev: imx_thermal: fix breakage after device tree
 sync
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Sep 11, 2023 at 02:48:08PM +0200, Ahmad Fatoum wrote:
> fsl,tempmon-data is a deprecated property that has been replaced
> upstream by a NVMEM cell pointing at the calibration value and so
> made it into barebox breaking the driver.
> 
> Switch to using the new property to fix the regression.
> 
> We do not keep support for the old binding around as it would be dead code:
> barebox, unlike Linux, is always bundled with a device tree originating
> from its build tree and so we only need to ensure the driver matches that
> version.

This is not entirely true. With board-dt-2nd you would still be able
to start a barebox with another dt possibly using the old binding.

Nevertheless I think this rather exotic case doesn't justify carrying
around compatibility cruft, so: Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


