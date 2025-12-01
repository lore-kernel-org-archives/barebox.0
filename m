Delivery-date: Mon, 01 Dec 2025 12:04:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ1iE-006nHg-0h
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 12:04:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ1iD-0003ae-MS
	for lore@pengutronix.de; Mon, 01 Dec 2025 12:04:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pN24Hb0D4yUfMRS1YIxB7NsNj/p8tJ3pqWN1RjLvK0Y=; b=aPyYezuyCGd+FgL71clZ5NBdXC
	xtY6qIjTxSQXPXqxlLpZEjsZEoI7N7aJ4Lsqk+qgLy2V95EwGfDVonyJM2eyPk3nWDR8Qybmctwm9
	bOAtxQxXshbV5B9ckKqUVijYxJ6LkdbYGrCeZ/9SFDZl+coouPtD706K42Ov7A5zcjpW65oj5dzDn
	yG3JPP6zYoD0+3oZ3RdBf2u23gmjjb2C1IiUU02sfy2Bdp9Tl7I4o8MJKDIqRW8nbP/shiv6wo82t
	PCChFwJMVUq1TIPxtbpfyZOF76yXpoAZCbASNkbi+gpkxquaDofyourjF3w9+MdyaOJXtwZHuYQnP
	Z/l0E97g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ1hp-00000003OQK-0TZW;
	Mon, 01 Dec 2025 11:04:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ1hk-00000003OPr-3dCV
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 11:04:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ1hj-0003Vg-5l; Mon, 01 Dec 2025 12:04:27 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ1hi-003Qkl-3A;
	Mon, 01 Dec 2025 12:04:26 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ1hi-00000000iLK-3syv;
	Mon, 01 Dec 2025 12:04:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251128172206.36551-1-a.fatoum@pengutronix.de>
References: <20251128172206.36551-1-a.fatoum@pengutronix.de>
Message-Id: <176458706692.170433.16686292602808771279.b4-ty@pengutronix.de>
Date: Mon, 01 Dec 2025 12:04:26 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_030428_910878_B3F1B185 
X-CRM114-Status: UNSURE (   9.95  )
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
Subject: Re: [PATCH] ARM: mmu: set up vectors prior to full MMU setup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 28 Nov 2025 18:22:05 +0100, Ahmad Fatoum wrote:
> Interleaving vector table setup with zero page setup introduces an
> unfortunate dependency: We need to call setup_pages after mapping the
> SDRAM, so mapping the zero page as faulting is not overridden and we
> need to do it before mapping the text area read-only, because the
> vectors are relocated on ARM32.
> 
> Avoid this issue by setting up the vectors at core_initcall and only do
> trap page setup during MMU init. This is already what is being done on
> arm64.
> 
> [...]

Applied, thanks!

[1/1] ARM: mmu: set up vectors prior to full MMU setup
      https://git.pengutronix.de/cgit/barebox/commit/?id=c036c7a1d7d0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



