Delivery-date: Wed, 22 Oct 2025 08:30:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBSMt-00AW2j-14
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 08:30:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBSMs-000093-Q4
	for lore@pengutronix.de; Wed, 22 Oct 2025 08:30:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wGqv9c0ELADgArdhNMOSD9d6AbJ7nDjao6GvpPSfhPo=; b=FzFYsLUGccoityKkH7SZXH0qJ5
	Sx/8nYEYMBZjJplRcFi/JXIapbaBuczGLyMSvgZ6vYu59K3/XELuYXyMvU1FKwULKC11yV4idZYXk
	5i0CqAD9k7rDFjf/otJOglzzD7YUuu2Zgnko/Gv3OC1WNv/0qtu517sgPBZ2/X1iCqscCWOZ2XO+7
	Q7+Y7vygk+/Q0LGe/FOJf4pEkzrGgU7mvmqHKRioL4xFvl3oiwgoa8ewfM2iq5GLytkVvgWr94stU
	nfwnjQQSB1IQdphnqZlSncB/peE/oKDe+HcybhrDgxFl3nrx8GS1XCDFCbQqHuaSFcPENXIvukwLh
	+6tsHL7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBSMS-00000001fYO-1uLy;
	Wed, 22 Oct 2025 06:30:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBSMP-00000001fWo-33a7
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 06:30:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBSMO-0008Ug-7z; Wed, 22 Oct 2025 08:30:12 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBSMO-004qXo-0D;
	Wed, 22 Oct 2025 08:30:12 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBSMO-0000000H16p-02Iv;
	Wed, 22 Oct 2025 08:30:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Fabian Pfitzner <f.pfitzner@pengutronix.de>
In-Reply-To: <20251021144106.1228193-2-f.pfitzner@pengutronix.de>
References: <20251021144106.1228193-2-f.pfitzner@pengutronix.de>
Message-Id: <176111461200.4055824.4406652101896149334.b4-ty@pengutronix.de>
Date: Wed, 22 Oct 2025 08:30:12 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_233013_772623_AC7E1E22 
X-CRM114-Status: UNSURE (   6.39  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: karo-tx6: use mmcboot handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 21 Oct 2025 16:41:07 +0200, Fabian Pfitzner wrote:
> Use the mmcboot handler instead. This handler automatically determines
> the boot partition by considering the partition's state, thus avoiding
> to specify it manually.
> 
> 

Applied, thanks!

[1/1] ARM: i.MX: karo-tx6: use mmcboot handler
      https://git.pengutronix.de/cgit/barebox/commit/?id=0fc72287d87f (link may not be stable)
[1/1] fixup! ARM: i.MX: karo-tx6: use mmcboot handler
      https://git.pengutronix.de/cgit/barebox/commit/?id=39754cd17d0b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



