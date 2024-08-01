Delivery-date: Thu, 01 Aug 2024 12:50:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZTOL-0056VX-1P
	for lore@lore.pengutronix.de;
	Thu, 01 Aug 2024 12:50:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZTOK-0000CZ-Qa
	for lore@pengutronix.de; Thu, 01 Aug 2024 12:50:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wmYRS3EDHWEkBoZk0Fiv5AMAeIEgiZR17pu9Ea4NKH0=; b=uA6aXKu+iD3Vn+wN2Dg5Smvcm6
	tnKOPLVRQhFw3AZeUoy9vzC55S/Xj5lxFqPu7sMJujRposs5PlIIW//EU3mV1isvIcC+3W1rPRPv2
	s+OVtq6sCjP2EOR+ejQqLHH+ulZ9sOzILSDpTUsmnaGUY8N26gvriAyFCJichAqj6D3WoRdliccZd
	kvgwjepRyrR3riXwuUdY+2XLONlrrAEHIpYE867VoC4siyjWr5bloUwgt2t0CpbvOE8D9Oohhw37Z
	2hj+LlBdFKn0o16hSUngauhCv4X+VFwQ5LiyqGCu9k89O7KfNtYt9ELLuQguRBGz1gRImAl+DAd1D
	TQj1eZtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZTNg-00000004nrQ-2fNg;
	Thu, 01 Aug 2024 10:50:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZTNc-00000004nqs-3Pwx
	for barebox@lists.infradead.org;
	Thu, 01 Aug 2024 10:49:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZTNa-00006A-Pz; Thu, 01 Aug 2024 12:49:54 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZTNa-003kVP-DC; Thu, 01 Aug 2024 12:49:54 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZTNa-00Fbui-16;
	Thu, 01 Aug 2024 12:49:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240731080510.364706-1-a.fatoum@pengutronix.de>
References: <20240731080510.364706-1-a.fatoum@pengutronix.de>
Message-Id: <172250939433.3720623.17170861178754459461.b4-ty@pengutronix.de>
Date: Thu, 01 Aug 2024 12:49:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_034956_889162_B396E7BF 
X-CRM114-Status: GOOD (  11.21  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/10] mmc: add SD/eMMC erase support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 31 Jul 2024 10:05:00 +0200, Ahmad Fatoum wrote:
> A common optimization for flashing is to skip gaps between partitions
> and only flash actual data. The problem with that is that data from
> the previous installation may persist and confuse later software, e.g.
> an existing barebox state partition not contained in the image may
> survive, when the expectation is that a new state is created.
> 
> eMMCs can support three different commands for erasing data:
> 
> [...]

Applied, thanks!

[01/10] fs: give erase() a new erase_type parameter
        https://git.pengutronix.de/cgit/barebox/commit/?id=25dcd56dcbdb (link may not be stable)
[02/10] cdev: factor out range identical/overlap check
        https://git.pengutronix.de/cgit/barebox/commit/?id=daef9e140040 (link may not be stable)
[03/10] block: factor out chunk_flush helper
        https://git.pengutronix.de/cgit/barebox/commit/?id=ea2ec31597a6 (link may not be stable)
[04/10] block: allow block devices to implement the cdev erase operation
        https://git.pengutronix.de/cgit/barebox/commit/?id=6d91caf4c2d6 (link may not be stable)
[05/10] mci: turn bool members into bitfield in struct mci
        https://git.pengutronix.de/cgit/barebox/commit/?id=1ded5de0109b (link may not be stable)
[06/10] mci: describe more command structure in mci.h
        https://git.pengutronix.de/cgit/barebox/commit/?id=72fabfcbe197 (link may not be stable)
[07/10] mci: core: use CONFIG_MCI_WRITE, not CONFIG_BLOCK_WRITE
        https://git.pengutronix.de/cgit/barebox/commit/?id=12b96aadefaa (link may not be stable)
[08/10] mci: add support for discarding write blocks
        https://git.pengutronix.de/cgit/barebox/commit/?id=96551caab87c (link may not be stable)
[09/10] commands: sync: add new command to flush cached writes
        https://git.pengutronix.de/cgit/barebox/commit/?id=f858d511f1bb (link may not be stable)
[10/10] commands: blkstats: add command to print block device statistics
        https://git.pengutronix.de/cgit/barebox/commit/?id=4dfa47cd5d44 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



