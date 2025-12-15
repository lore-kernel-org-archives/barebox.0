Delivery-date: Mon, 15 Dec 2025 09:44:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV4CA-00BgLB-2y
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 09:44:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV4CA-0002WS-B2
	for lore@pengutronix.de; Mon, 15 Dec 2025 09:44:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QsQYhmzG242QCfMKz8hs1dQbJ0plZFkSYOsl+IHgJXg=; b=e/hh1rZVK1bj1aQxHXAntjkb4U
	uuaptKLQprtWXhHgsiX6Y4J0K3+ybpb0abDWvHg4ysJgwE1zyqcHLDTW7BmN/PEPx2R3ReaJlj5OM
	rgbDOlbh7v3SZl+68GvcGIxI6rGxJ6Ca4NnvnJj3CQWJlPISznWBl3PgMOyLsTp5i+ZmcGPN00B/b
	2aPJdBnVtfkie0FTH2gN1NVsvrL8UExCYAEwCSUdOBhjRXaqRfjnh15lBBiGVeHPzR8cZXeZDxcQR
	v9JE2ZwgxI/70SwXHmGgLWgHHU7SnsLhnlE4H2Hir7g0kTdoFTc11y75V2WKfUr+KeT514sQIEPG0
	gpVUkbxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV4Bm-00000003ICE-1Z7B;
	Mon, 15 Dec 2025 08:44:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV4Bj-00000003IAe-0yPM
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 08:44:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV4Bh-0002Pv-HJ; Mon, 15 Dec 2025 09:44:13 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV4Bh-005kbd-18;
	Mon, 15 Dec 2025 09:44:13 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV4Bh-0000000AhU3-149d;
	Mon, 15 Dec 2025 09:44:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Dec 2025 09:44:09 +0100
Message-ID: <20251215084412.2548801-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_004415_278332_6FBBE176 
X-CRM114-Status: GOOD (  15.88  )
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
Subject: [PATCH] rtc-lib: implement rtc_calc_weekday
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For use by the EFI loader RTC set time boot service, import
rtc_calc_weekday() from U-Boot.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/rtc/rtc-lib.c | 48 +++++++++++++++++++++++++++++++++++++++++++
 include/rtc.h         | 11 ++++++++++
 2 files changed, 59 insertions(+)

diff --git a/drivers/rtc/rtc-lib.c b/drivers/rtc/rtc-lib.c
index 3709d46cbe16..4f2993ac12bd 100644
--- a/drivers/rtc/rtc-lib.c
+++ b/drivers/rtc/rtc-lib.c
@@ -73,6 +73,54 @@ void rtc_time_to_tm(unsigned long time, struct rtc_time *tm)
 }
 EXPORT_SYMBOL(rtc_time_to_tm);
 
+// SPDX-SnippetBegin
+// SPDX-Snippet-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/467382ca03758e4f3f13107e3a83669e93a7461e/lib/date.c
+
+static int month_offset[] = {
+	0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334
+};
+
+/*
+ * This only works for the Gregorian calendar - i.e. after 1752 (in the UK)
+ */
+int rtc_calc_weekday(struct rtc_time *tm)
+{
+	int leaps_to_date;
+	int last_year;
+	int day;
+
+	if (tm->tm_year < 1753)
+		return -1;
+	last_year = tm->tm_year - 1;
+
+	/* Number of leap corrections to apply up to end of last year */
+	leaps_to_date = last_year / 4 - last_year / 100 + last_year / 400;
+
+	/*
+	 * This year is a leap year if it is divisible by 4 except when it is
+	 * divisible by 100 unless it is divisible by 400
+	 *
+	 * e.g. 1904 was a leap year, 1900 was not, 1996 is, and 2000 is.
+	 */
+	if (tm->tm_year % 4 == 0 &&
+	    ((tm->tm_year % 100 != 0) || (tm->tm_year % 400 == 0)) &&
+	    tm->tm_mon > 2) {
+		/* We are past Feb. 29 in a leap year */
+		day = 1;
+	} else {
+		day = 0;
+	}
+
+	day += last_year * 365 + leaps_to_date + month_offset[tm->tm_mon - 1] +
+			tm->tm_mday;
+	tm->tm_wday = day % 7;
+
+	return 0;
+}
+EXPORT_SYMBOL(rtc_calc_weekday);
+
+// SPDX-SnippetEnd
+
 /*
  * Does the rtc_time represent a valid date/time?
  */
diff --git a/include/rtc.h b/include/rtc.h
index 0766f0408216..c3e277320557 100644
--- a/include/rtc.h
+++ b/include/rtc.h
@@ -54,4 +54,15 @@ static inline struct rtc_device *rtc_lookup(const char *name)
 
 const char *time_str(struct rtc_time *tm);
 
+/**
+ * rtc_calc_weekday() - Work out the weekday from a time
+ *
+ * This only works for the Gregorian calendar - i.e. after 1752 (in the UK).
+ * It sets time->tm_wdaay to the correct day of the week.
+ *
+ * @time:	Time to inspect. tm_wday is updated
+ * Return: 0 if OK, -EINVAL if the weekday could not be determined
+ */
+int rtc_calc_weekday(struct rtc_time *time);
+
 #endif	/* _RTC_H_ */
-- 
2.47.3



