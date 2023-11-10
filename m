Delivery-date: Fri, 10 Nov 2023 23:05:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1Zd7-006VHT-0z
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 23:05:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1Zd7-0008Is-8k
	for lore@pengutronix.de; Fri, 10 Nov 2023 23:05:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=23bHUR5ezunzqFXS+uJ2YTAqHuD6WmJ3RbXJnU8jOFY=; b=u1Qua9urh11EdcYFpbe+qVR9/z
	OLQLD3LkyN82LImVojsFb9un4j4EpzwWKS7ZB+v3A6uiQ9EEBb0AyxfLNdwaL/8JmA9lD0sYL788K
	j/CdAIuJtBbEFVVUVAT6P8Dh7EFwH0K9h6+aC1V8u3da/T2A5Mzp37cozbSSlFQgyyFhGPnoO6o1b
	B/AawjhJRR4ex2PnI9XqUrvPU9x+74hKmb692YYeG/YjCuKhpi2q6pCokSEKC3SyEDIxx9mWLko5S
	hmbiR9kWdoqQ9pKxc7rm8Xf3cy+nBewFZ4uABS+UneCBbUKhz3Qs0chWvmsvrFFlF3zQixCM2bezc
	SduA74eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Zc3-009WRq-3A;
	Fri, 10 Nov 2023 22:04:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Zc0-009WPC-1J
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 22:04:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1Zbz-0007mp-5t; Fri, 10 Nov 2023 23:04:23 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1Zby-00872e-P9; Fri, 10 Nov 2023 23:04:22 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1ZIe-00BRGz-2F;
	Fri, 10 Nov 2023 22:44:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 10 Nov 2023 22:44:17 +0100
Message-Id: <20231110214421.2726093-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110214421.2726093-1-a.fatoum@pengutronix.de>
References: <20231110214421.2726093-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_140424_490309_66EE977C 
X-CRM114-Status: GOOD (  12.73  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 14/18] include: implement dev_warn_once and friends
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already have pr_once, so duplicate it for dev_warn and friends as
well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/firmware/arm_scmi/driver.c |  4 ++--
 include/linux/printk.h             | 29 ++++++++++++++++++++++++++++-
 2 files changed, 30 insertions(+), 3 deletions(-)

diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index c3536d6e9fbd..98f672746527 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -988,7 +988,7 @@ static void scmi_create_protocol_devices(struct device_node *np,
  */
 int scmi_protocol_device_request(const struct scmi_device_id *id_table)
 {
-	int ret = 0;
+	int id, ret = 0;
 	struct list_head *phead = NULL;
 	struct scmi_requested_dev *rdev;
 	struct scmi_info *info;
@@ -1001,7 +1001,7 @@ int scmi_protocol_device_request(const struct scmi_device_id *id_table)
 	 * Search for the matching protocol rdev list and then search
 	 * of any existent equally named device...fails if any duplicate found.
 	 */
-	idr_for_each_entry(&scmi_requested_devices, idr) {
+	idr_for_each_entry(&scmi_requested_devices, idr, id) {
 		struct list_head *head = idr->ptr;
 		if (!phead) {
 			/* A list found registered in the IDR is never empty */
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



