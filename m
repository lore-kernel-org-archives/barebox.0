Delivery-date: Wed, 03 Jan 2024 20:17:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL6jj-002Shh-04
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 20:17:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL6ji-0003d5-0n
	for lore@pengutronix.de; Wed, 03 Jan 2024 20:17:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qFToMqwKdZ/6c6BejqBtjWU0GXy4ISnZInJudhgPWZ8=; b=4RXaodBwrjc+T7MbFZwP1e2fw7
	mJ89Mhb+auLSBk1x3BvToKg9Y2iIHxS1AvTfDD0PmmdrirgIu6aFPgqfL0aLlg9PrH1bI02UYqk0U
	C3IYOTqb1/lPEDvkRjl1ItehEiEJuSuzM/fKaLXDy+Z6Vyxtre2kQ7SREl1eEpWPckK+KbUtdnGHn
	T4rZwyqR1z4t56tSgtzDU25gLB7xXtC8akaPX8GdF6Hq/b0eKMn246WUT90VV5njj25zpBVxiz1xJ
	5ZcawJki7rkDgITCaorDI8yw8mJ4syJWGsQmXufa0N9/oXvrAl2y/tmGexsdCNzFumEHaJVYSn4z0
	NpIEBQgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL6iO-00Bser-2w;
	Wed, 03 Jan 2024 19:15:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL5k2-00Bdrr-2I
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:13:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k1-0004e5-FU; Wed, 03 Jan 2024 19:13:21 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k1-000Api-3A; Wed, 03 Jan 2024 19:13:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k1-001j4X-02;
	Wed, 03 Jan 2024 19:13:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:11:21 +0100
Message-Id: <20240103181312.409668-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_101322_791965_228418B8 
X-CRM114-Status: UNSURE (   8.72  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 001/112] string: implement strcmp_ptr and streq_ptr helpers
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



