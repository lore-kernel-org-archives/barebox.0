Delivery-date: Mon, 08 Dec 2025 13:12:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSa6f-009Cxr-2e
	for lore@lore.pengutronix.de;
	Mon, 08 Dec 2025 13:12:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSa6f-0003y8-9s
	for lore@pengutronix.de; Mon, 08 Dec 2025 13:12:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1Omf09yfX9Y37LUrR9K746eP04e2CvJBKLl9+DU+Y8g=; b=24zM1Tg8H+FBCSCa4aqqA94rR9
	GIGZj+4a4fA6RqHq/WwRNaVG2w0ToYuV9/DE2BvbHeils/IYo/okExiB/JxZSoELQ7uNkLQP1ZwSB
	AHfJulvV+HKRMzbEx66dEV1Yg4LvmQsWEYHfd589GcrG4CmgVx2gROluXjS8J+g1kHDVdzdeLfzL2
	Z3i5WpFohVQbdQ8AOC9Aj61fDXMt2s7vqw8yl75JKf1HmKadXZ6fEBI8+7YqqXaAqPeITJajAYach
	CAyGojKkAK559a1DIHSUUZP5qPpPyYEC0m9Qlw4cqVqTGKBg5unduxJ3zlxg1mFb5m+a9UBMs+/Rn
	w7FYD5jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSa6H-0000000D3Kx-0mOU;
	Mon, 08 Dec 2025 12:12:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSa6D-0000000D3KA-2V0W
	for barebox@lists.infradead.org;
	Mon, 08 Dec 2025 12:12:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSa6B-0003sR-Vo; Mon, 08 Dec 2025 13:12:15 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSa6B-004bz7-2Z;
	Mon, 08 Dec 2025 13:12:15 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSa6B-000000028tH-35qv;
	Mon, 08 Dec 2025 13:12:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251208103236.4131639-1-a.fatoum@pengutronix.de>
References: <20251208103236.4131639-1-a.fatoum@pengutronix.de>
Message-Id: <176519593573.510743.10866006513057133528.b4-ty@pengutronix.de>
Date: Mon, 08 Dec 2025 13:12:15 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251208_041217_638242_3E4E9AC1 
X-CRM114-Status: UNSURE (   7.23  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! printf: define printk/no_printk in terms of
 prints
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 08 Dec 2025 11:32:35 +0100, Ahmad Fatoum wrote:
> printf: use printf instead of printk in no_printk
> 
> The original commit was decoupling them a bit to allow for implementing
> a printk with Linux semantics. This also requires us that no_printf has
> no dependency on printk, but that was missed. Add that now.
> 
> 
> [...]

Applied, thanks!

[1/1] fixup! printf: define printk/no_printk in terms of prints
      https://git.pengutronix.de/cgit/barebox/commit/?id=e5a7137b3d1b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



