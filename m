Delivery-date: Mon, 04 Mar 2024 20:01:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDZ5-008cpE-1T
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:01:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDZ4-00054W-9f
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:01:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qFToMqwKdZ/6c6BejqBtjWU0GXy4ISnZInJudhgPWZ8=; b=Sy9ImAzZfoEH1Badb6Sjbsg/Ia
	dzsmgykEUYYz8Lyc4fP9Mpultd0KlgnEy3LLNDBt91WUUQmazpQTeuLmgnnfCTd2ro5NEyBXjlR1T
	s9IHuipDNteLFN67scE6GNlMzYQjRF6J3iAEmQJC1z/LbzvQDqOGVp+9OY2pGwSu2JAGywJ5umd4b
	S1jobR2cdf4RU8zvGDoV6AywdBsl5HEPone7UjXIFLrVQ3e9uCzhY94hTY2cSrf+IvfsWBF2J+1cR
	mhLbtIU7ubPTNA7Su9fCS+hkOA6iF4XhfIPjpWDyRY6bv3fcbChqaTSx/I5pJvU/YPbya3fIMLfy9
	5RD13uVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDYQ-0000000AHSz-01ez;
	Mon, 04 Mar 2024 19:00:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDYL-0000000AHPf-1lhv
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:00:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYK-0004V8-3A; Mon, 04 Mar 2024 20:00:44 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYJ-004PFT-N3; Mon, 04 Mar 2024 20:00:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYJ-00Ed9V-0N;
	Mon, 04 Mar 2024 20:00:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:58:46 +0100
Message-Id: <20240304190038.3486881-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_110045_583566_6AC424CB 
X-CRM114-Status: UNSURE (   9.15  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 001/113] string: implement strcmp_ptr and streq_ptr helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These helpers take care of NULL transparently and will be useful to
avoid explicit NULL checks in follow-up commits.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/string.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/include/string.h b/include/string.h
index 43911b75762f..71810180b5ba 100644
--- a/include/string.h
+++ b/include/string.h
@@ -3,6 +3,7 @@
 #define __STRING_H
 
 #include <linux/string.h>
+#include <linux/minmax.h>
 
 void *mempcpy(void *dest, const void *src, size_t count);
 int strtobool(const char *str, int *val);
@@ -20,4 +21,14 @@ char *parse_assignment(char *str);
 
 int strverscmp(const char *a, const char *b);
 
+static inline int strcmp_ptr(const char *a, const char *b)
+{
+	return a && b ? strcmp(a, b) : compare3(a, b);
+}
+
+static inline bool streq_ptr(const char *a, const char *b)
+{
+	return strcmp_ptr(a, b) == 0;
+}
+
 #endif /* __STRING_H */
-- 
2.39.2



