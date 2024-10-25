Delivery-date: Fri, 25 Oct 2024 11:01:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4GCL-000ZB5-1x
	for lore@lore.pengutronix.de;
	Fri, 25 Oct 2024 11:01:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4GCM-0002NW-4s
	for lore@pengutronix.de; Fri, 25 Oct 2024 11:01:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GLA4+zMYE3UJ0QkXr9ZKFFk5ow6csSNzDfdv/qCQ2To=; b=LuZ+lffNLf1trRn7vunTvTAmtM
	NKb+CZc4rzKOVkvsZbvYGgUDD0xuxqB5AuOwkESv7gErAiCVwxA92NEUy3EAI99Rg/HBl/T3f0+5+
	/QC/nO6bTd1MkkwPkdq4mWh7PxHf7iJ460kl2YF16VwcileVnTu9ELkSE+NMWSY8hY8iyppr7u74a
	fptbWtgayx9qKJAQnZCnxNZsqaeIlDrMrhOf0Ofi7dl59tPGP534YFfeAeA6hUus5qgdCnBKpH55I
	MAh1nRZVuvY7vueMbsbnFMm6JHDSic4GGBoOwOS19DQOoUY2ARrkk5yxTIAPpmJ9jd9WVYCXFybAY
	2LVxQWmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4GBd-000000035Cy-40aH;
	Fri, 25 Oct 2024 09:00:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4G96-000000034Em-0dNW
	for barebox@lists.infradead.org;
	Fri, 25 Oct 2024 08:58:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4G8x-0001xK-0h; Fri, 25 Oct 2024 10:58:03 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4G8w-000Ksf-2e;
	Fri, 25 Oct 2024 10:58:02 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4G8w-008UkC-2T;
	Fri, 25 Oct 2024 10:58:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 25 Oct 2024 10:58:03 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241025-reset-bulk-v1-2-52380683ed7b@pengutronix.de>
References: <20241025-reset-bulk-v1-0-52380683ed7b@pengutronix.de>
In-Reply-To: <20241025-reset-bulk-v1-0-52380683ed7b@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729846682; l=3949;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=+mW6GxaOIpQE3HM6T2pnr97T36SeJE0P8oy7wt+rKhY=;
 b=T4iETC3Bq9D45Ast13YFDJd618G9xnp2PL2Km4pfMfTIGehLLllg8z/0yoXSYjQ4u7I5DVwRi
 ewhFbQCPeqvCscLgmdCCONyPl95PqujiQYE2hd/bkB8/lPTwevYQaRf
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241025_015812_235281_EC13B00B 
X-CRM114-Status: GOOD (  16.31  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] reset: implement reset_control_bulk_get()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This implements reset_control_bulk_get() to get multiple reset
controllers at once.

This somewhat overlaps with reset_control_array_get(). The difference is
that reset_control_array_get() returns a single reset controller which
internally handles the array of reset controllers whereas
reset_control_bulk_get() allows the consumer to control each reset
controller individually.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/reset/core.c  | 24 ++++++++++++++++++++++++
 include/linux/reset.h | 44 ++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 68 insertions(+)

diff --git a/drivers/reset/core.c b/drivers/reset/core.c
index 679deee3c1..2431a9374a 100644
--- a/drivers/reset/core.c
+++ b/drivers/reset/core.c
@@ -484,6 +484,30 @@ struct reset_control *reset_control_array_get(struct device *dev)
 	return rstc;
 }
 
+int __reset_control_bulk_get(struct device *dev, int num_rstcs,
+			     struct reset_control_bulk_data *rstcs,
+			     bool optional)
+{
+	int ret, i;
+
+	for (i = 0; i < num_rstcs; i++) {
+		rstcs[i].rstc = __reset_control_get(dev, rstcs[i].id, optional);
+		if (IS_ERR(rstcs[i].rstc)) {
+			ret = PTR_ERR(rstcs[i].rstc);
+			goto err;
+		}
+	}
+
+	return 0;
+
+err:
+	while (i--)
+		reset_control_put(rstcs[i].rstc);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(__reset_control_bulk_get);
+
 int device_reset_all(struct device *dev)
 {
 	struct reset_control *rstc;
diff --git a/include/linux/reset.h b/include/linux/reset.h
index 183d7d55a0..9469825faf 100644
--- a/include/linux/reset.h
+++ b/include/linux/reset.h
@@ -6,6 +6,21 @@
 struct device;
 struct reset_control;
 
+/**
+ * struct reset_control_bulk_data - Data used for bulk reset control operations.
+ *
+ * @id: reset control consumer ID
+ * @rstc: struct reset_control * to store the associated reset control
+ *
+ * The reset APIs provide a series of reset_control_bulk_*() API calls as
+ * a convenience to consumers which require multiple reset controls.
+ * This structure is used to manage data for these calls.
+ */
+struct reset_control_bulk_data {
+	const char			*id;
+	struct reset_control		*rstc;
+};
+
 #ifdef CONFIG_RESET_CONTROLLER
 
 int reset_control_status(struct reset_control *rstc);
@@ -28,6 +43,10 @@ int reset_control_get_count(struct device *dev);
 
 struct reset_control *reset_control_array_get(struct device *dev);
 
+int __reset_control_bulk_get(struct device *dev, int num_rstcs,
+			     struct reset_control_bulk_data *rstcs,
+			     bool optional);
+
 #else
 
 static inline int reset_control_status(struct reset_control *rstc)
@@ -91,6 +110,14 @@ static inline struct reset_control *reset_control_array_get(struct device *dev)
 	return NULL;
 }
 
+static inline int
+__reset_control_bulk_get(struct device *dev, int num_rstcs,
+			 struct reset_control_bulk_data *rstcs,
+			 bool optional)
+{
+	return optional ? 0 : -EOPNOTSUPP;
+}
+
 #endif /* CONFIG_RESET_CONTROLLER */
 
 static inline struct reset_control *reset_control_get_optional(struct device *dev,
@@ -105,4 +132,21 @@ static inline struct reset_control *reset_control_get(struct device *dev,
 	return __reset_control_get(dev, id, false);
 }
 
+/**
+ * reset_control_bulk_get - Lookup and obtain references to
+ *                                    multiple reset controllers.
+ * @dev: device to be reset by the controller
+ * @num_rstcs: number of entries in rstcs array
+ * @rstcs: array of struct reset_control_bulk_data with reset line names set
+ *
+ * Fills the rstcs array with pointers to reset controls and
+ * returns 0, or an IS_ERR() condition containing errno.
+ */
+static inline int __must_check
+reset_control_bulk_get(struct device *dev, int num_rstcs,
+		       struct reset_control_bulk_data *rstcs)
+{
+	return __reset_control_bulk_get(dev, num_rstcs, rstcs, false);
+}
+
 #endif

-- 
2.39.5



