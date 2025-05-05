Delivery-date: Mon, 05 May 2025 12:05:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBsh1-002QLU-0H
	for lore@lore.pengutronix.de;
	Mon, 05 May 2025 12:05:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBsh0-0006ra-Ge
	for lore@pengutronix.de; Mon, 05 May 2025 12:04:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5qa2/GrclPO7HAr78ngMEDUun8mACiGAiqk3L5g4+iM=; b=MpRkOR/5Tt8O8bdEO9bNKYUCir
	TK+g6PUNMk7qTvdH1er4RuyFTLOUgbXqkr/CkjpGWuZL0HktAIgH4v5pf0Q2yGjmsSntnGDX9PK4f
	We5o/sVIp8zQ2bAXMtoFGdsAAOZMsZN9cQraM2nLScmLZ51qcsuvt/24qBO4gVTyj5PFaX6VfJIpv
	klzzyXJUfmL+rPyr1AWKrtYMM9897Atd/XqqxT9zVtH5yo554HbF23flxRW6ZkjBuspF34//INovF
	rlRdFvvZP1pCxU7dJJLsW0VkR6+WMLc8W0mD/mPDB2S24OZ2lBAhaHoofHlPb5UVqBG1bFmrEPSjA
	sZmx9DdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBsgA-000000070kT-1H5H;
	Mon, 05 May 2025 10:04:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBsg2-000000070jk-0cj1
	for barebox@lists.infradead.org;
	Mon, 05 May 2025 10:04:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uBsg0-0006e8-8S; Mon, 05 May 2025 12:03:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uBsg0-001DC5-0F;
	Mon, 05 May 2025 12:03:56 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uBsfz-002pq6-3C;
	Mon, 05 May 2025 12:03:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250429-k3-asel-v1-0-6f39afaa2dfe@pengutronix.de>
References: <20250429-k3-asel-v1-0-6f39afaa2dfe@pengutronix.de>
Message-Id: <174643943598.675803.11278667070842189179.b4-ty@pengutronix.de>
Date: Mon, 05 May 2025 12:03:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_030358_193787_D1213AAC 
X-CRM114-Status: GOOD (  10.52  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/4] K3: Add Asel support to the DMA driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 29 Apr 2025 16:14:19 +0200, Sascha Hauer wrote:
> This adds Asel aka "Address select" handling to the K3 DMA driver.
> 
> Asel is a four bit field that has to be put in bits 48-51 of the DMA
> addresses. This is needed once the DDR firewalls are enabled.
> 
> The DDR firewalls are needed to protect the OP-TEE memory from accesses
> from the normal world. One would assume that upstream OP-TEE does this
> by default, but apparently it doesn't and once they are enabled ethernet
> in barebox stops working. This series fixes networking in barebox with
> DDR firewalls enabled.
> 
> [...]

Applied, thanks!

[1/4] ti/k3-navss-ringacc: switch to Linux code base
      https://git.pengutronix.de/cgit/barebox/commit/?id=49831c027175 (link may not be stable)
[2/4] firmware: ti_sci: pass struct to ti_sci_rm_ringacc_ops::config
      https://git.pengutronix.de/cgit/barebox/commit/?id=fecb64e6cf2f (link may not be stable)
[3/4] firmware: ti_sci: handle Asel
      https://git.pengutronix.de/cgit/barebox/commit/?id=3e677d242607 (link may not be stable)
[4/4] dma: k3-udma: Handle Asel
      https://git.pengutronix.de/cgit/barebox/commit/?id=cadcb81b7f97 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



