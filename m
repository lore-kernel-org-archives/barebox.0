Delivery-date: Fri, 16 Jan 2026 09:18:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgf2i-001tZk-1n
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 09:18:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgf2h-0005Q5-Hq
	for lore@pengutronix.de; Fri, 16 Jan 2026 09:18:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3ZSrW1bpdNd11uatrnF2r8ZAB+xRAf2hTzCPC8lIBXQ=; b=aIme10zH3Brf8rzLcF/RGzh9E7
	vH8qHa0ogAZwlkPYCp0JPNKn3M+6fFyz3ZGBdKL+8M7Zx7WFr+pjU0J66dzYCSEZV6A5kzIZNsGzA
	WM+O7GGr4aRoema+8bfmT21nzB8DcmO1yRA35UVUgJF2PuFpy6fEBW+bh06YuTPRAl9KysA0bXP6H
	MQ9v7dA9grjaSWLQpvSN3fhSe/iKyj2uo6W8YuxOQ6Cak0uBaM+vedk+ChTw7WqWIH8NrzXijb1o/
	qodRGhSw19G5yzu1KVYzdQ1aP5IGJm1wbP9s8cVj61tidk9m4nDwgifaiVBgPl5VBp/+tN4isAaH8
	Fu0UjcSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgf2C-0000000DkRw-2WHs;
	Fri, 16 Jan 2026 08:18:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgf25-0000000DkRC-3avx
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 08:18:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgf23-0005Jb-7p; Fri, 16 Jan 2026 09:18:11 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgf23-000t6Y-0l;
	Fri, 16 Jan 2026 09:18:10 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgf22-00000005hj2-2A2a;
	Fri, 16 Jan 2026 09:18:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260114101214.109449-1-a.fatoum@pengutronix.de>
References: <20260114101214.109449-1-a.fatoum@pengutronix.de>
Message-Id: <176855149051.1359705.8697283550429302159.b4-ty@pengutronix.de>
Date: Fri, 16 Jan 2026 09:18:10 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_001816_290089_E42CA825 
X-CRM114-Status: UNSURE (   9.82  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: mmu: panic after pr_debug_remap if base address
 is unaligned
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 14 Jan 2026 11:12:13 +0100, Ahmad Fatoum wrote:
> It's always a bug to call remap_range with an unaligned address and it's
> the responsibility of the callers (whether it's an ELF parser or code
> walking reserved memory entries) to ensure that this doesn't happen.
> 
> We enforce this on ARM32, but don't yet on ARM64, so have it follow
> suit and have both do the enforcement directly after pr_debug_remap():
> That way, a developer enabling debug ouptut can easily see what was
> last attempted before the BUG().
> 
> [...]

Applied, thanks!

[1/1] ARM: mmu: panic after pr_debug_remap if base address is unaligned
      https://git.pengutronix.de/cgit/barebox/commit/?id=b9fb6845b763 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



