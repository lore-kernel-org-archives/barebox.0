Delivery-date: Wed, 22 Nov 2023 18:42:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5rFP-004eqf-34
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 18:42:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5rFP-0002te-Vq
	for lore@pengutronix.de; Wed, 22 Nov 2023 18:42:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tI6xdLaR1HvEgs0B9yZHmvWrKyqSOczqngv4+FWIpZU=; b=pmPCeOyabv5KbGI1Bwit+qgr6T
	2DflVbalnv5a9cZFU7imR17cULlv7pEpyE3ki+g7zuC8sJpKbJ6avDI7T/fxZa2/PQixJejXKMOIK
	CRDl9RRXbiy01wxaheSSKLLd8eyJ9ZN9J2eIVeBV00WcGae/WD1P0m5RQdXb80yLh6mVu352Io9ta
	Y2GZETpRNAAPYvOm5M6ac0yvS9US67MI6lV2ZR7yRbVVJPkv7n+EFzgVoaMKEf+dyBJ8Ar+jpMyNy
	u/oMYuz6gYcnZk3KE10R9CTNNN9FgMeBPVfEC3gREh6GSt0FZi2mRcE2E+NVMTuYchuxpWu2NCBZw
	WyaIkgAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5rEC-002hoQ-2I;
	Wed, 22 Nov 2023 17:41:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5rE2-002hgx-2x
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 17:41:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rE1-0002CF-Q5; Wed, 22 Nov 2023 18:41:21 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rE1-00ArXI-Dp; Wed, 22 Nov 2023 18:41:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5r34-001lAy-15;
	Wed, 22 Nov 2023 18:30:02 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Nov 2023 18:29:46 +0100
Message-Id: <20231122172951.376531-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231122172951.376531-1-a.fatoum@pengutronix.de>
References: <20231122172951.376531-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_094122_953081_FC9EF9A1 
X-CRM114-Status: UNSURE (   9.62  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 15/20] include: implement dev_warn_once and friends
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already have pr_*_once, so duplicate it for dev_warn and friends as
well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - squash IDR hunk into previous commit (Sascha)
---
 include/linux/printk.h | 29 ++++++++++++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/include/linux/printk.h b/include/linux/printk.h
index cd4c3cb68edb..0e9604bbe967 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -57,7 +57,15 @@ static inline int pr_print(int level, const char *format, ...)
 		(level) <= LOGLEVEL ? dev_printf((level), (dev), (format), ##args) : 0; \
 	 })
 
-
+#define __dev_printf_once(level, dev, format, args...) do {	\
+	static bool __print_once;				\
+								\
+	if (!__print_once && (level) <= LOGLEVEL) {		\
+		__print_once = true;				\
+		dev_printf((level), (dev), (format), ##args);	\
+	}							\
+} while (0)
+ 
 #define dev_emerg(dev, format, arg...)		\
 	__dev_printf(0, (dev) , format , ## arg)
 #define dev_alert(dev, format, arg...)		\
@@ -77,6 +85,25 @@ static inline int pr_print(int level, const char *format, ...)
 #define dev_vdbg(dev, format, arg...)		\
 	__dev_printf(8, (dev) , format , ## arg)
 
+#define dev_emerg_once(dev, format, arg...)		\
+	__dev_printf_once(0, (dev) , format , ## arg)
+#define dev_alert_once(dev, format, arg...)		\
+	__dev_printf_once(1, (dev) , format , ## arg)
+#define dev_crit_once(dev, format, arg...)		\
+	__dev_printf_once(2, (dev) , format , ## arg)
+#define dev_err_once(dev, format, arg...)		\
+	__dev_prin_oncetf(3, (dev) , format , ## arg)
+#define dev_warn_once(dev, format, arg...)		\
+	__dev_printf_once(4, (dev) , format , ## arg)
+#define dev_notice_once(dev, format, arg...)		\
+	__dev_printf(_once5, (dev) , format , ## arg)
+#define dev_info_once(dev, format, arg...)		\
+	__dev_printf_once(6, (dev) , format , ## arg)
+#define dev_dbg_once(dev, format, arg...)		\
+	__dev_prin_oncetf(7, (dev) , format , ## arg)
+#define dev_vdbg_once(dev, format, arg...)		\
+	__dev_printf_once(8, (dev) , format , ## arg)
+
 #if LOGLEVEL >= MSG_ERR
 int dev_err_probe(struct device *dev, int err, const char *fmt, ...)
 	__attribute__ ((format(__printf__, 3, 4)));
-- 
2.39.2



