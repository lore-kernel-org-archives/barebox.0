Delivery-date: Mon, 26 Jan 2026 11:56:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkKGo-005W4E-1O
	for lore@lore.pengutronix.de;
	Mon, 26 Jan 2026 11:56:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkKGn-0004Bg-Ev
	for lore@pengutronix.de; Mon, 26 Jan 2026 11:56:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=85dGNghZbBBRuNZyz3omGicfkx17xoHOJsYZ+3hCEyA=; b=2Q98IjLTkFE9BHjXaK5uOCjwAT
	YS3JBg1Xzx3ILxtHX90499fmnwOy1TUrGh7HrSpTYWlBdxpISYgoioEkceKHFuJlO/5jUs6Urd9zH
	NOXDlXIZvZq9BRaWmNZrjlN2rM8QQIw61FvKDd7auXMPRYZVtzz5ALIIfpMHxEFTVEPeKlqXSLhMf
	+MGPiTFVsnLvtmCUu5kd8ByVvuqt5VPsH6IwKRb7h8/mvu0iXRasWibVCMc34GIqZYuMSW081kUbH
	oY9EVCAwcxQEMl7l7h0iDSL6qf/igpRNh+fyu7WgO4IwdRVJkwqptRFgQ5MBtfXDkvDyHwM6NpH1h
	oAfLa7Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkKGR-0000000CMvA-1PPI;
	Mon, 26 Jan 2026 10:56:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkKGQ-0000000CMuw-23wy
	for barebox@bombadil.infradead.org;
	Mon, 26 Jan 2026 10:56:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=85dGNghZbBBRuNZyz3omGicfkx17xoHOJsYZ+3hCEyA=; b=GN+3wOjRylQT/EmQeRlNHoXb+V
	HIQT3AWZhcJB7yTDHR8qLslr65TZdl2F+/iPcq403/cWvjL/BKEhola4aWh9GNgrvn2tSbMFMNmR7
	g1u8YGHAfS9MUZmBKH32FnKwSnw8xNM77U6zbZ0vZLToc/HBg7GhFTpAoXH5qCXuqpFg4UAAcD6dY
	HVmbLYH3EtcqJkCLInq2RrnuFwy5BDwT2pNedZ+dLQ+swaUNEWa3iDkxU9cz5Q6MZCeTXVvgMoaM/
	ZBIUq94SVtB0tbqr7aSj6EwZ+XBvccKCM+rrs+crPvN+AfMp2CacYhervnuL4wti4ke+5FMSmHXAc
	PuJpQXaw==;
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkKGN-000000055NO-2syQ
	for barebox@lists.infradead.org;
	Mon, 26 Jan 2026 10:56:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkKGN-00043W-4I; Mon, 26 Jan 2026 11:56:07 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkKGN-002ZEr-1x;
	Mon, 26 Jan 2026 11:56:06 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkKGN-00000007vF0-1QWP;
	Mon, 26 Jan 2026 11:56:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 26 Jan 2026 11:56:05 +0100
Message-ID: <20260126105606.1887423-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_105607_908872_B27FB878 
X-CRM114-Status: UNSURE (   7.77  )
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
Subject: [PATCH] KASan: turn warning into panic if CONFIG_BUG_ON_DATA_CORRUPTION=y
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Especially for use during automated testing, it's useful to have barebox
panic on KASAN issues.

Let's do so when CONFIG_BUG_ON_DATA_CORRUPTION=y.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/kasan/report.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/lib/kasan/report.c b/lib/kasan/report.c
index b7844e93553c..c15a9c942f35 100644
--- a/lib/kasan/report.c
+++ b/lib/kasan/report.c
@@ -179,6 +179,9 @@ static void __kasan_report(unsigned long addr, size_t size, bool is_write,
 	}
 
 	end_report(&flags);
+
+	if (IS_ENABLED(CONFIG_BUG_ON_DATA_CORRUPTION))
+		panic_no_stacktrace("");
 }
 
 bool kasan_report(unsigned long addr, size_t size, bool is_write,
-- 
2.47.3



