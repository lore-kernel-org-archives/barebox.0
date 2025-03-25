Delivery-date: Tue, 25 Mar 2025 18:08:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tx7lp-004605-2D
	for lore@lore.pengutronix.de;
	Tue, 25 Mar 2025 18:08:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tx7lo-0000PK-Gh
	for lore@pengutronix.de; Tue, 25 Mar 2025 18:08:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AaV5MImzKxnX8BuJdFQxk8V3TN0U33EDgMH4gN3lJSk=; b=LISYybsCtJYaNxIbCkuWtUKGrL
	+XB9xko2LW3JV5zKThPIXxHW8r7AOA/b6xrcvRNYvZnS+H1FtPnTz0mY3OpPbeUYA0uPq5XUCJztI
	FrEVQ/DxOO2IB/syoIyRiWGDCwpzfJ/QBZV5W5ff3OYql70rs53wnNJLmjSf/jQ9W4OgMt2/pERje
	00xFMTzbWavgDOomyV3lworPMNA0i1L+sF7VEIiRFxJQMrufidViAWEHIHZ7yk3UUI5yCJQIuKDYs
	gR93MC/HKvMYHAzbNcoK82N2XokjaGIgw1bJE4a9/KodOXe/b7ZZ66PD4PG3kUH/kNm9+M/JUZmsq
	DfutSROQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx7lc-00000006ZdX-1vvP;
	Tue, 25 Mar 2025 17:08:44 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx6av-00000006ORp-41Km
	for barebox@lists.infradead.org;
	Tue, 25 Mar 2025 15:53:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1742918016;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=AaV5MImzKxnX8BuJdFQxk8V3TN0U33EDgMH4gN3lJSk=;
	b=Ei3BREacHvnnJuffG7JCXEOXIN52tdsngU61dPI9qdvbiqjGguUAv/2epZQSxjQ6yNGgGX
	fRyLLFyp1I3nXCbvn5oL8PU6AgxJ/wqYmji5nz1wvWfoVVORqIr844V6f14z/zc+56hHkd
	a6vZ/Ij9ug51R075rJBB/WLdMnjFW+cg3O+cK/spt5oXxCQutRt52en2b4d4LcnWvKn/mh
	dyE9Uyft2uxyCAngKBKojJNdtL9sI0miMgcvo+Hx+vo32mmZv5d8oVhXkjvd9wtwUB8AOX
	Z8Dw051Gxk3NdKLkJ0esakSdD6FENx+2hllaqNIHpSXgwFEC/32Y/8ksEWg1BQ==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:cc87:df5e:1bf7:9f4c])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 6b2ebf9b (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Tue, 25 Mar 2025 16:53:36 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Tue, 25 Mar 2025 16:53:27 +0100
Message-ID: <20250325155327.31981-2-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250325155327.31981-1-jmaselbas@zdiv.net>
References: <20250325155327.31981-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250325_085338_283184_31DDEDB5 
X-CRM114-Status: UNSURE (   5.96  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] vsprintf: add explicit fallthrough
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 lib/vsprintf.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 0656ba3620..32429dd76c 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -775,6 +775,7 @@ int vsnprintf(char *buf, size_t size, const char *fmt, va_list args)
 
 			case 'x':
 				flags |= SMALL;
+				fallthrough;
 			case 'X':
 				base = 16;
 				break;
@@ -782,6 +783,7 @@ int vsnprintf(char *buf, size_t size, const char *fmt, va_list args)
 			case 'd':
 			case 'i':
 				flags |= SIGN;
+				fallthrough;
 			case 'u':
 				break;
 
-- 
2.48.1



