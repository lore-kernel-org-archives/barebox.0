Delivery-date: Wed, 16 Oct 2024 11:09:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1022-0050Mg-1X
	for lore@lore.pengutronix.de;
	Wed, 16 Oct 2024 11:09:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1021-00075x-RK
	for lore@pengutronix.de; Wed, 16 Oct 2024 11:09:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CpyWbvpeXh1ODlAahNAUv3UpMQDTwTiCbuV2PceiOV8=; b=1c97uUxvGQZNwRrNFuW87YJjQY
	C1vR28Sp+CTGiaNvKUeSq2i8KgsAYDxTlX5HvVsC0pYR6s6YsdSAVBHd2Sixk3M5Ewy6tNtdqqiR/
	DjQTzodbnoPFVnR1XEkUIBW8suBbtMCYlHwA1oDRoq3QDBdXAq0V3yfCaderfVjS1huZx6ideAaEA
	LzemmYdNiwTWQ1KHDIpl3HYmOosf7QTTsPrTfWns7j6ci0+dXZG+MP+pvnn2jREpkTJFkeeEbDTqx
	XTjjfQfGWrEdo9l2Si8ZgKx3Wl+ByOrLshJ5aDvbdGZuVJUZC5JTkWRQK66ursQdkLMN6CxsR3GOl
	i33ljwng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t101Y-0000000BAkc-1JD6;
	Wed, 16 Oct 2024 09:08:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t101T-0000000BAiM-1PCl
	for barebox@lists.infradead.org;
	Wed, 16 Oct 2024 09:08:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t101R-0006q9-Or; Wed, 16 Oct 2024 11:08:49 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t101R-002EPx-CB; Wed, 16 Oct 2024 11:08:49 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zuh-00GdhR-0O;
	Wed, 16 Oct 2024 11:01:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Oct 2024 11:01:48 +0200
Message-Id: <20241016090150.3963002-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241016090150.3963002-1-a.fatoum@pengutronix.de>
References: <20241016090150.3963002-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_020851_500839_5180A813 
X-CRM114-Status: UNSURE (   8.70  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 11/13] stdio: stub out basprintf and friends when built for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To optimize out calls to undefined functions in PBL at compile-time
instead of link time, let's define stubs for the functions that
are referenced in obj-pbl-y files, but inside function sections
that are ultimately unreferenced.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/stdio.h | 24 ++++++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/include/stdio.h b/include/stdio.h
index 1ed7e1d3e38b..64deec64e66c 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -17,12 +17,32 @@ int sprintf(char *buf, const char *fmt, ...) __attribute__ ((format(__printf__,
 int snprintf(char *buf, size_t size, const char *fmt, ...) __attribute__ ((format(__printf__, 3, 4)));
 int scnprintf(char *buf, size_t size, const char *fmt, ...) __attribute__ ((format(__printf__, 3, 4)));
 int vsprintf(char *buf, const char *fmt, va_list args);
+int vsnprintf(char *buf, size_t size, const char *fmt, va_list args);
+int vscnprintf(char *buf, size_t size, const char *fmt, va_list args);
+
+#ifndef __PBL__
 char *basprintf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
 int asprintf(char **strp, const char *fmt, ...)  __attribute__ ((format(__printf__, 2, 3)));
 char *bvasprintf(const char *fmt, va_list ap);
 int vasprintf(char **strp, const char *fmt, va_list ap);
-int vsnprintf(char *buf, size_t size, const char *fmt, va_list args);
-int vscnprintf(char *buf, size_t size, const char *fmt, va_list args);
+#else
+static inline char *basprintf(const char *fmt, ...)
+{
+	return NULL;
+}
+static inline int asprintf(char **strp, const char *fmt, ...)
+{
+	return -ENOMEM;
+}
+static inline char *bvasprintf(const char *fmt, va_list ap)
+{
+	return NULL;
+}
+static inline int vasprintf(char **strp, const char *fmt, va_list ap)
+{
+	return -ENOMEM;
+}
+#endif
 
 #ifdef CONFIG_ARCH_HAS_CTRLC
 int arch_ctrlc(void);
-- 
2.39.5



