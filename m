Delivery-date: Tue, 16 Jul 2024 14:04:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTguY-005RER-1i
	for lore@lore.pengutronix.de;
	Tue, 16 Jul 2024 14:04:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTguX-0003Lj-QM
	for lore@pengutronix.de; Tue, 16 Jul 2024 14:04:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Jx9qqNhR7HINYvhpArl6DUbzDMRo2lazorwfMYpjT+8=; b=Y83EpH6R5F+M716L9uyLtBHIbw
	xtan2shjrtEYMszUOaj8H0oeHudNcOG8Wu3M8L5igXMfJCgAs4D95dF5SrQGKj2b3oFRLYtbswwu8
	JnvGNhsaqaJi9CV+VdZcBfCvy/9W4jJAj27pnmb140hpY288wnxxIohUDTrwkoAfdusi4oMziISUS
	OQUnvybDy9+kQlBlIRR/MqUYD9HGt5b9d4R8IfVPWV+B39/b0fl26kzjLhJTyyhR/9dcAyG/MsfU9
	tzZSCJYRfX0e4FC2JUekVZ71sIypw6XGGyA4oqBu4z2xJj/W4WCNs+keekHH1T8D3f4ESOv32WsCH
	rY5BfDWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTguA-0000000ALg7-0YdW;
	Tue, 16 Jul 2024 12:03:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgu8-0000000ALeq-1nFJ
	for barebox@bombadil.infradead.org;
	Tue, 16 Jul 2024 12:03:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=Jx9qqNhR7HINYvhpArl6DUbzDMRo2lazorwfMYpjT+8=; b=YowL5tQlXIqx8d6kQjZsXGha9S
	a6NcbGeFLFO+kcmxEpqR7eUfxG2L6juc3NIkWq+WjlDE5oxOCt5hZl3FWzuWXWv+XF2xScO/2FUuh
	YFtRm9kc7uLfUw02nH66iH9zS5tSqUjb+PjodT7MCqFOWhzBDOVz6uKmI8To0Q+TyYx6DOYc3YKhh
	bL1jrdTL3pjtLwior8SgLbD3rgPK561MT3bHOSmzPkHNnUmqZwlpsR8HgjVQf4+GTMe3vmrt8Qqbg
	KObjckceDGM5aa2aZKzoNG82cbNVKLxeTPvcUQG5zYc5tFiAuBLAcllD+LXbRpKvkFjrYWpXuv4/7
	HAoixGsQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgu5-00000002250-2Prf
	for barebox@lists.infradead.org;
	Tue, 16 Jul 2024 12:03:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgu4-0003AS-SK; Tue, 16 Jul 2024 14:03:32 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgu4-0007aH-ED; Tue, 16 Jul 2024 14:03:32 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgu4-008LIm-18;
	Tue, 16 Jul 2024 14:03:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 16 Jul 2024 14:03:29 +0200
Message-Id: <20240716120330.1988495-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_130333_755678_FA99E3EE 
X-CRM114-Status: GOOD (  10.17  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] rtc: add stubs for when CONFIG_RTC_CLASS is disabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To allow using the RTC API in files that may optionally be
compiled with RTC support disabled, add dummy stubs.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/rtc.h | 13 +++++++++++++
 include/rtc.h       | 10 ++++++++++
 2 files changed, 23 insertions(+)

diff --git a/include/linux/rtc.h b/include/linux/rtc.h
index 3c5bb8c8dfc1..4fa999723de1 100644
--- a/include/linux/rtc.h
+++ b/include/linux/rtc.h
@@ -19,6 +19,8 @@
 #include <linux/nvmem-provider.h>
 #include <rtc.h>
 
+struct rtc_time;
+
 extern int rtc_month_days(unsigned int month, unsigned int year);
 extern int rtc_valid_tm(struct rtc_time *tm);
 extern int rtc_tm_to_time(struct rtc_time *tm, unsigned long *time);
@@ -40,8 +42,19 @@ struct rtc_class_ops {
 
 extern int rtc_register(struct rtc_device *rtcdev);
 
+#ifdef CONFIG_RTC_CLASS
 extern int rtc_read_time(struct rtc_device *rtc, struct rtc_time *tm);
 extern int rtc_set_time(struct rtc_device *rtc, struct rtc_time *tm);
+#else
+static inline int rtc_read_time(struct rtc_device *rtc, struct rtc_time *tm)
+{
+	return -ENOSYS;
+}
+static inline int rtc_set_time(struct rtc_device *rtc, struct rtc_time *tm)
+{
+	return -ENOSYS;
+}
+#endif
 
 static inline bool is_leap_year(unsigned int year)
 {
diff --git a/include/rtc.h b/include/rtc.h
index d7e103d163bc..0766f0408216 100644
--- a/include/rtc.h
+++ b/include/rtc.h
@@ -10,6 +10,8 @@
 #ifndef _RTC_H_
 #define _RTC_H_
 
+#include <linux/err.h>
+
 /*
  * The struct used to pass data from the generic interface code to
  * the hardware dependend low-level code ande vice versa. Identical
@@ -40,7 +42,15 @@ void to_tm (int, struct rtc_time *);
 unsigned long mktime (unsigned int, unsigned int, unsigned int,
 		      unsigned int, unsigned int, unsigned int);
 
+struct rtc_device;
+#ifdef CONFIG_RTC_CLASS
 extern struct rtc_device *rtc_lookup(const char *name);
+#else
+static inline struct rtc_device *rtc_lookup(const char *name)
+{
+	return ERR_PTR(-ENODEV);
+}
+#endif
 
 const char *time_str(struct rtc_time *tm);
 
-- 
2.39.2



