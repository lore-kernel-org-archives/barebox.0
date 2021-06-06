Delivery-date: Sun, 06 Jun 2021 14:26:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lprr5-0003Au-LF
	for lore@lore.pengutronix.de; Sun, 06 Jun 2021 14:26:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lprr3-0005n4-Mt
	for lore@pengutronix.de; Sun, 06 Jun 2021 14:26:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rGWqUUBtZX3A46IRqhrDwZNirwWNKu7oZ0bXnuYtvDk=; b=G9sBuqBcw1oKL9
	SaHl1FqeYjTLOLA87S26wSufwIXuSYQ25Qur/6E4Yy0FPDob+HmZHr4sgxnd/R3NZm1/rB+Zu2zXk
	trWWgh5GBca7q0cqfxoC2V4otEXcBsLxvCiQZKXy+ZwNiwV9ASoRywIIoer592FoYIhsRfWitOYTn
	74jihIBiikqUV0cV8sOoN1poZbuYZCv0tD8rWKa15/uS9CfCUoylBtIuQxwiPx/20P0wRntkCrjkb
	CIbS/LeL2t/x673uVGVsKc49rm7zRxcMCQ4EYiaoo82yZfMfwIJuy02+9+Q38bZUWMBjCK1KlOUAh
	9rDdu0X1V3eaClGICVtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lprpH-000Gl4-65; Sun, 06 Jun 2021 12:24:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lprp2-000Ggv-CY
 for barebox@lists.infradead.org; Sun, 06 Jun 2021 12:24:10 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1lproy-0005O2-Gv; Sun, 06 Jun 2021 14:24:04 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1lproy-0005qx-8b; Sun, 06 Jun 2021 14:24:04 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Sun,  6 Jun 2021 14:23:59 +0200
Message-Id: <20210606122400.22418-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210606_052408_463579_C6B3A9B2 
X-CRM114-Status: GOOD (  12.54  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 1/2] add device state flags and add error state
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add state flags for each registered device and set error state on each
dev_err print.
This states can be used by users to identify erroneous device.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 include/driver.h | 13 +++++++++++++
 include/printk.h |  5 ++++-
 2 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/include/driver.h b/include/driver.h
index d84fe35d50..b64a8e258c 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -88,6 +88,9 @@ struct device_d {
 	 * when the driver should actually detect client devices
 	 */
 	int     (*detect) (struct device_d *);
+
+#define DEV_ERR			BIT(0)
+	u32	run_flags;
 };
 
 /** @brief Describes a driver present in the system */
@@ -361,6 +364,16 @@ static inline int dev_close_default(struct device_d *dev, struct filep *f)
 	return 0;
 }
 
+static inline void dev_set_err(struct device_d *dev)
+{
+	dev->run_flags |= DEV_ERR;
+}
+
+static inline bool dev_have_err(struct device_d *dev)
+{
+	return !!(dev->run_flags & DEV_ERR);
+}
+
 struct bus_type {
 	char *name;
 	int (*match)(struct device_d *dev, struct driver_d *drv);
diff --git a/include/printk.h b/include/printk.h
index f83ad3bf07..6c563be3e6 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -61,7 +61,10 @@ static inline int pr_print(int level, const char *format, ...)
 #define dev_crit(dev, format, arg...)		\
 	__dev_printf(2, (dev) , format , ## arg)
 #define dev_err(dev, format, arg...)		\
-	__dev_printf(3, (dev) , format , ## arg)
+	({ \
+		dev_set_err(dev); \
+		__dev_printf(3, (dev) , format , ## arg); \
+	})
 #define dev_warn(dev, format, arg...)		\
 	__dev_printf(4, (dev) , format , ## arg)
 #define dev_notice(dev, format, arg...)		\
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

