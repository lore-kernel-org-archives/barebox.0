Delivery-date: Sun, 20 Feb 2022 13:50:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlfN-004wyG-Uf
	for lore@lore.pengutronix.de; Sun, 20 Feb 2022 13:50:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlfJ-0001eB-5s
	for lore@pengutronix.de; Sun, 20 Feb 2022 13:50:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HDSegCjLWCFAhtUHnxhiiLjsPuq4U7Hatn24/z+W1zQ=; b=PCRIdZ+PZNduFp
	CTBnntSo/t7CBcU+85Nc6BEHMdvdlBkIMzftgrx1xwvT1RZi0Q5G/DOOpSYC9Mpx24Gi+BggBb4BK
	7gXLb3NkTEggb6hEfASQbN7UDSRZU5pRavaqAXXpz3JjQJiHy1iyQGBiG9FI+jiJS8Ox6XPuxzlCU
	FOPGJz8wusW/w8nmBaFBYs/x8P0cfOQcQ/SZTA5nrZx/r4lB/l7TaH4rRqeUGGc92uKXaTA9pkvmi
	/QNra6yyxWradCbeTVPegbii7/B/bBnkPwAtI2y+okhMHIpoDzj7BdI5GwphQ6gVYRkhPclGj+3ko
	G8NxTQJJK7pA+6PLbkGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nLldr-001IYE-6u; Sun, 20 Feb 2022 12:48:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nLld1-001I4H-UL
 for barebox@lists.infradead.org; Sun, 20 Feb 2022 12:47:55 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcs-0000aE-Lt; Sun, 20 Feb 2022 13:47:42 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcr-00CoQF-H0; Sun, 20 Feb 2022 13:47:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Xogium <contact@xogium.me>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 20 Feb 2022 13:47:32 +0100
Message-Id: <20220220124736.3052502-21-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
References: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220220_044752_050620_C66CF631 
X-CRM114-Status: GOOD (  16.59  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 20/24] reset: add support for reset_control_status
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Driver code may want to query status of a reset line. Add an optional
callback for drivers to provide this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/reset/core.c             | 21 +++++++++++++++++++++
 drivers/reset/reset-simple.c     |  3 ++-
 include/linux/reset-controller.h |  2 ++
 include/linux/reset.h            |  6 ++++++
 4 files changed, 31 insertions(+), 1 deletion(-)

diff --git a/drivers/reset/core.c b/drivers/reset/core.c
index 17deb3fa8fc3..4355c3415eb0 100644
--- a/drivers/reset/core.c
+++ b/drivers/reset/core.c
@@ -81,6 +81,27 @@ void reset_controller_unregister(struct reset_controller_dev *rcdev)
 }
 EXPORT_SYMBOL_GPL(reset_controller_unregister);
 
+/**
+ * reset_control_status - returns a negative errno if not supported, a
+ * positive value if the reset line is asserted, or zero if the reset
+ * line is not asserted or if the desc is NULL (optional reset).
+ * @rstc: reset controller
+ */
+int reset_control_status(struct reset_control *rstc)
+{
+	if (!rstc)
+		return 0;
+
+	if (WARN_ON(IS_ERR(rstc)))
+		return -EINVAL;
+
+	if (rstc->rcdev->ops->status)
+		return rstc->rcdev->ops->status(rstc->rcdev, rstc->id);
+
+	return -ENOTSUPP;
+}
+EXPORT_SYMBOL_GPL(reset_control_status);
+
 /**
  * reset_control_reset - reset the controlled device
  * @rstc: reset controller
diff --git a/drivers/reset/reset-simple.c b/drivers/reset/reset-simple.c
index 082956d94dae..9db00f64f438 100644
--- a/drivers/reset/reset-simple.c
+++ b/drivers/reset/reset-simple.c
@@ -75,7 +75,7 @@ static int reset_simple_reset(struct reset_controller_dev *rcdev,
 	return reset_simple_deassert(rcdev, id);
 }
 
-static int __maybe_unused reset_simple_status(struct reset_controller_dev *rcdev,
+static int reset_simple_status(struct reset_controller_dev *rcdev,
 					      unsigned long id)
 {
 	struct reset_simple_data *data = to_reset_simple_data(rcdev);
@@ -93,6 +93,7 @@ const struct reset_control_ops reset_simple_ops = {
 	.assert		= reset_simple_assert,
 	.deassert	= reset_simple_deassert,
 	.reset		= reset_simple_reset,
+	.status		= reset_simple_status,
 };
 EXPORT_SYMBOL_GPL(reset_simple_ops);
 
diff --git a/include/linux/reset-controller.h b/include/linux/reset-controller.h
index 8ace8cd41794..a9047e947e93 100644
--- a/include/linux/reset-controller.h
+++ b/include/linux/reset-controller.h
@@ -14,11 +14,13 @@ struct reset_controller_dev;
  *         things to reset the device
  * @assert: manually assert the reset line, if supported
  * @deassert: manually deassert the reset line, if supported
+ * @status: return the status of the reset line, if supported
  */
 struct reset_control_ops {
 	int (*reset)(struct reset_controller_dev *rcdev, unsigned long id);
 	int (*assert)(struct reset_controller_dev *rcdev, unsigned long id);
 	int (*deassert)(struct reset_controller_dev *rcdev, unsigned long id);
+	int (*status)(struct reset_controller_dev *rcdev, unsigned long id);
 };
 
 struct device_node;
diff --git a/include/linux/reset.h b/include/linux/reset.h
index d25464d4bd60..d0677b1d9f63 100644
--- a/include/linux/reset.h
+++ b/include/linux/reset.h
@@ -8,6 +8,7 @@ struct reset_control;
 
 #ifdef CONFIG_RESET_CONTROLLER
 
+int reset_control_status(struct reset_control *rstc);
 int reset_control_reset(struct reset_control *rstc);
 int reset_control_assert(struct reset_control *rstc);
 int reset_control_deassert(struct reset_control *rstc);
@@ -25,6 +26,11 @@ int __must_check device_reset_all(struct device_d *dev);
 
 #else
 
+static inline int reset_control_status(struct reset_control *rstc)
+{
+	return 0;
+}
+
 static inline int reset_control_reset(struct reset_control *rstc)
 {
 	return 0;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

