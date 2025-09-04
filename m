Delivery-date: Thu, 04 Sep 2025 10:54:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu5jK-007ybx-1y
	for lore@lore.pengutronix.de;
	Thu, 04 Sep 2025 10:54:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu5jJ-00038W-GZ
	for lore@pengutronix.de; Thu, 04 Sep 2025 10:54:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bYZeuOoRoMkOEtCyIwb2prKIIgd9VbTrS89JrvCT4OM=; b=Og/kp8TuRvqVo7q2mDDW+evLpM
	O/OmeQ7pPNpyxhe85BC41gaJGOh8Pe0RStz83jvL9mY+eW94Ag9bwv0idSU8qKc1i1AHzbqqbeg7I
	2OwERHthoGclp788QFOPSpGlxXJcy+6+ReASxfTwpRUTUwLh2Yn+DIbxp2Yn9Zkfp5HP+QArHu1oY
	3tsU/cw2nIVcVrZU0PvzEXOqiDfFJyNFu86XxpWpJKNYKu6BLPKl4+8yYPQ158O5MGLP9Sgo5iqdz
	REKlF8xkjto9Z8F8fPUkcdZOzirj1Wtu+8ZaSR8TOMMQOq2qgx1WhLgH9xZ2Q+zpeJQaMlGnsR0nI
	tOr0bV1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu5ij-0000000AN9j-1XWT;
	Thu, 04 Sep 2025 08:53:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu53J-0000000A6o0-0eDm
	for barebox@lists.infradead.org;
	Thu, 04 Sep 2025 08:10:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uu53H-0007G9-Q2; Thu, 04 Sep 2025 10:10:39 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uu53H-003hDs-1z;
	Thu, 04 Sep 2025 10:10:39 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uu53H-0000000DH9M-2LE3;
	Thu, 04 Sep 2025 10:10:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250904064930.2867799-1-a.fatoum@barebox.org>
References: <20250904064930.2867799-1-a.fatoum@barebox.org>
Message-Id: <175697343955.3164119.1628540303076115788.b4-ty@pengutronix.de>
Date: Thu, 04 Sep 2025 10:10:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_011041_196099_86B905BF 
X-CRM114-Status: UNSURE (   6.26  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] test: arm: multi_v7_defconfig.yaml: make virt@ the
 default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 04 Sep 2025 08:49:30 +0200, Ahmad Fatoum wrote:
> The vexpress-a9 board is less functional in barebox than the virt board,
> e.g., only the latter has a restart handler registered.
> 
> Switch over the default, so a simple pytest uses the virt labgrid
> environment instead by default.
> 
> 
> [...]

Applied, thanks!

[1/1] test: arm: multi_v7_defconfig.yaml: make virt@ the default
      https://git.pengutronix.de/cgit/barebox/commit/?id=486060a61be1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



