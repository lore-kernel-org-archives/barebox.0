Delivery-date: Sat, 26 Apr 2025 10:15:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u8ah2-005VMc-0q
	for lore@lore.pengutronix.de;
	Sat, 26 Apr 2025 10:15:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u8ah1-0005Pa-MN
	for lore@pengutronix.de; Sat, 26 Apr 2025 10:15:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lEOXAOYTnWNeC2F6Aa9JAvomYPTf+JChnoT+9SMcTJU=; b=ZMLX3bOkIAEUH9uB3ampjcLWPD
	/bDcMK2Yt9SscqVe8Eisdk41EZgSxvjDMs+Y6CXCjZ5nRVPopRqkiQijTBLXEBwxlbzLulJnKHSqc
	1rA3AKkyIhssGB98IT8CC5UBRt1dz7295Uxluwn3nA26w5v00dBc8I5W4Y11KGs05wcadvu91XMUl
	SrrDigXHP+p9twxEKhTw78vYad+WqKiD1UiLggInjoQOqAvNn/H/cSRmCfZogOIN4nnN+kePqdh5V
	xoNeFMtvfIaKj3g6d+hltntSKnqPaCntjtfbTYPuCFot2bc5eKKXlFaMVMJJlwiPuJxffwGLhuSDN
	p4ZPQBTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8ag3-00000001i2h-2MVb;
	Sat, 26 Apr 2025 08:14:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8ag0-00000001i0H-0hFW
	for barebox@lists.infradead.org;
	Sat, 26 Apr 2025 08:14:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u8afw-00058A-Nt; Sat, 26 Apr 2025 10:14:16 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u8afw-002B3R-1Q;
	Sat, 26 Apr 2025 10:14:16 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u8afw-00EuY0-17;
	Sat, 26 Apr 2025 10:14:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 26 Apr 2025 10:14:15 +0200
Message-Id: <20250426081415.3553913-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250426_011420_200788_7F2F7E4D 
X-CRM114-Status: GOOD (  11.04  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] linux/iopoll: fix inverted condition in read_poll_timeout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If there is no timeout, we wait indefinitely and don't care for the
initial time. A fixup to silence a warning because of multiplication in
boolean context added an explicit comparison and this ended up omitting
get_time_ns() in the wrong case.

Flip it to fix, among others, MDIO on RK3568.

Fixes: 554bbc479c09 ("include: linux/iopoll.h: add optional PBL support")
Reported-by: Uwe Kleine-König <uwe@kleine-koenig.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/iopoll.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
index 61d8f4714e97..c38190272606 100644
--- a/include/linux/iopoll.h
+++ b/include/linux/iopoll.h
@@ -43,7 +43,7 @@
  */
 #define read_poll_timeout(op, val, cond, timeout_us, args...)	\
 ({ \
-	uint64_t start = (timeout_us) == 0 ? read_poll_get_time_ns() : 0; \
+	uint64_t start = (timeout_us) != 0 ? read_poll_get_time_ns() : 0; \
 	for (;;) { \
 		(val) = op(args); \
 		if (cond) \
-- 
2.39.5



