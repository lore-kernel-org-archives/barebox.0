Delivery-date: Thu, 02 Feb 2023 14:35:35 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNZkX-00BQti-6s
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 14:35:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNZkT-0003sW-RV
	for lore@pengutronix.de; Thu, 02 Feb 2023 14:35:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XnrpbpphceA9VS/g8VJyeDwZxmk/jYmiBnJ7Pqt8je0=; b=WyVeMnHtLq7Ln2edDTm5KOECf1
	4EA/7PDZHg9AIi3482J/rta//FNAGjY75kSVEaaqWlOUJTPesSmEa89Ia9rG7zfVE/KlxU97IN4W+
	D2WeLlHLKANE1ccz8Fz+1k69npYlXrW8uCWaDowbbX097Lwr15t4UrLSHOf8Tq7/ls49RXM2g11CS
	vb/8MprnplCMZt29JfK03Hhm7tUnrBPqCx5l/iTH2YTjAX9BKZifvOSJwCD0+Mvpyqf4v1fs4A96x
	mTv3uGRIkNLWxnCJ/kvzg7unFoWLg+htCZLZbaGQdwmH80dn4cPTht5VLqJezMF4530a5uU+1cuTr
	jT9PkLsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZjO-00G1ia-Tp; Thu, 02 Feb 2023 13:34:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZjI-00G1gX-Ey
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 13:34:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pNZjH-0003e0-0J; Thu, 02 Feb 2023 14:34:19 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pNZjF-002BUJ-0p; Thu, 02 Feb 2023 14:34:18 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pNZjF-001Mds-J8; Thu, 02 Feb 2023 14:34:17 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Christian Melki <christian.melki@t2data.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 Feb 2023 14:34:13 +0100
Message-Id: <20230202133415.319020-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_053420_518570_AD130988 
X-CRM114-Status: UNSURE (   7.59  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master v2 1/3] include: linux/printk: implement pr_*_once macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

These are useful as a less verbose alternative to WARN_ONCE, which also
prints a stack trace if possible.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  unchanged
---
 include/linux/printk.h | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/include/linux/printk.h b/include/linux/printk.h
index 2fd6551e0ccb..a9d1b05f6f0f 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -94,6 +94,15 @@ static inline int dev_err_probe(struct device *dev, int err, const char *fmt,
 		(level) <= LOGLEVEL ? pr_print((level), (format), ##args) : 0; \
 	 })
 
+#define __pr_printk_once(level, format, args...) do {	\
+	static bool __print_once;			\
+							\
+	if (!__print_once && (level) <= LOGLEVEL) {	\
+		__print_once = true;			\
+		pr_print((level), (format), ##args);	\
+	}						\
+} while (0)
+
 #ifndef pr_fmt
 #define pr_fmt(fmt) fmt
 #endif
@@ -110,7 +119,18 @@ static inline int dev_err_probe(struct device *dev, int err, const char *fmt,
 #define pr_vdebug(fmt, arg...)	__pr_printk(8, pr_fmt(fmt), ##arg)
 #define pr_cont(fmt, arg...)	__pr_printk(-1, fmt, ##arg)
 
+#define pr_emerg_once(fmt, arg...)	__pr_printk_once(0, pr_fmt(fmt), ##arg)
+#define pr_alert_once(fmt, arg...)	__pr_printk_once(1, pr_fmt(fmt), ##arg)
+#define pr_crit_once(fmt, arg...)	__pr_printk_once(2, pr_fmt(fmt), ##arg)
+#define pr_err_once(fmt, arg...)	__pr_printk_once(3, pr_fmt(fmt), ##arg)
+#define pr_warning_once(fmt, arg...)	__pr_printk_once(4, pr_fmt(fmt), ##arg)
+#define pr_notice_once(fmt, arg...)	__pr_printk_once(5, pr_fmt(fmt), ##arg)
+#define pr_info_once(fmt, arg...)	__pr_printk_once(6, pr_fmt(fmt), ##arg)
+#define pr_debug_once(fmt, arg...)	__pr_printk_once(7, pr_fmt(fmt), ##arg)
+#define pr_vdebug_once(fmt, arg...)	__pr_printk_once(8, pr_fmt(fmt), ##arg)
+
 #define pr_warn			pr_warning
+#define pr_warn_once		pr_warning_once
 
 int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size,
 		   int swab);
-- 
2.30.2



