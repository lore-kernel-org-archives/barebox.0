Delivery-date: Wed, 03 Sep 2025 21:19:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utt1C-007l6k-1Y
	for lore@lore.pengutronix.de;
	Wed, 03 Sep 2025 21:19:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utt1B-0006vg-9U
	for lore@pengutronix.de; Wed, 03 Sep 2025 21:19:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3T0G9HTISz5c66LMe5LzOioYkQ8ZThSxw442izbJNwo=; b=Z+AtZXbctK2/6bcwYau0tFijQt
	nWOfUFG23UJXPs+kw+RuDsBf4ny42ainR6K1oaW2dCzUR9KF8v11XtfduO5HpJQw4L9yULsmC0ZiB
	bN/qgQDqU8M4S3zWnEO4EE6ghac0445I6ByjJIEkIisnu+QmvaQPR99DBsgycSbrKaMu+2gHve4xn
	YH9PYcPzJTH3CtZY9F9bz6gXztwv8H0Ph//0/eCO/xvnUNsTXeanzjfibY9M930KDa6v31TZVx3kb
	+yacOZpmxUjp42OSBEVn0wIcmdO4aY1UqBsOiFMFkaswzeaGbSN2NLf2Sa7IDsirLNoUlzncUXQhM
	h22Bj29Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utt0S-00000007Qw5-3KfD;
	Wed, 03 Sep 2025 19:18:56 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utokX-00000006kyp-3dvy
	for barebox@lists.infradead.org;
	Wed, 03 Sep 2025 14:46:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 4650A60237;
	Wed,  3 Sep 2025 14:46:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1C69C4CEE7;
	Wed,  3 Sep 2025 14:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756910773;
	bh=GsqUfTYeY4JYqKyl75zf/xfMUqKBghaNm7slLJyxRY0=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=Wrg0wEJs8lRAxrxyY1kGS5OKpWanvMieLP6AFDWl8+Fkhnu2EoEpe3H9FL91ZMBPE
	 fGQnXNwIWLEWNkZ3tAcqOcMEL4YDLD23gclsdjE589xubNvJmpXch+kgMFY1iyT5uQ
	 DmUDjwZp/sKDDKG5qVaGfQffqFF67i1NmtHzh7FSxmiATvWOIl7xZaIJ9I/T50SXeL
	 5iSfr+G76OB1b3ez2theN8dl6OhZJtHxo5RbUSjf4WsdIF8T4i/OUDDlx0BS3d3Upq
	 rJv4h3llv2LjF2yZCvpREKXX9pf89EVrIIWxFIvJnT0apAa8EefAAZzT1i7Dw/D08J
	 EVJSwdxqsMvTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC75CCA1009;
	Wed,  3 Sep 2025 14:46:12 +0000 (UTC)
From: =?utf-8?q?Christian_Thie=C3=9Fen_via_B4_Relay?= <devnull+christian.thiessen.airbus.com@kernel.org>
Date: Wed, 03 Sep 2025 16:46:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250903-fec_imx-fix-enodev-v1-1-0dd4c42fc293@airbus.com>
X-B4-Tracking: v=1; b=H4sIAKxUuGgC/x2MWwqAIBAArxL73cL2wuoqESG21n6koSBCdPekz
 2GYeSByEI4wVw8EThLFuwJNXYE5tTsYZS8MLbUDTdShZbPJldFKRnZ+54RW6YlGRUNvRijhHbj
 Yf7qs7/sBgeaILWQAAAA=
X-Change-ID: 20250903-fec_imx-fix-enodev-f7a9087054c8
To: BAREBOX <barebox@lists.infradead.org>
Cc: =?utf-8?q?Christian_Thie=C3=9Fen?= <christian.thiessen@airbus.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756910772; l=4139;
 i=christian.thiessen@airbus.com; s=20250902; h=from:subject:message-id;
 bh=XFKPIv88ugljtV+KWINy7eR1OlNtbCCJvHz4x+4ROys=;
 b=MpGSpANLnaOThfS4wPW7Nq+bqT3AlRPMkuA/QPKx7jEvCPDxk7S8IqiQhpb2879YA730rmDcH
 RujByihngNfAE638uYtv+f5ZD/o8aEc+EY76NB6o2W93t5QG10C6l39
X-Developer-Key: i=christian.thiessen@airbus.com; a=ed25519;
 pk=NCvzeydU+5OZKp2shtC3Zp/OS1LfbLmhNZNws46FeWk=
X-Endpoint-Received: by B4 Relay for christian.thiessen@airbus.com/20250902
 with auth_id=508
X-Original-From: =?utf-8?q?Christian_Thie=C3=9Fen?= <christian.thiessen@airbus.com>
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
Reply-To: christian.thiessen@airbus.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-105.3 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fec_imx: Fix ENODEV in fec_probe on i.MX27
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Christian Thießen <christian.thiessen@airbus.com>

The fec_imx driver stores an enum fec_type value in the match data
pointer. When retrieving this value in fec_probe(), it handles
FEC_TYPE_IMX27 (which is 0) like an error result from
device_get_match_data and returns -ENODEV.

To be able to differentiate NULL from errors, introduce a new function
device_get_match_data_default which returns its defaultval argument
instead of NULL in case of errors.
Add an FEC_TYPE_COUNT value to the fec_type enum.
In fec_probe, pass FEC_TYPE_COUNT as defaultval and return -ENODEV for
all type values greater or equal to that.

Fixes: 20d87123a6 ("treewide: replace dev_get_drvdata with        device_get_match_data")
Signed-off-by: Christian Thießen <christian.thiessen@airbus.com>
---
Hi again,

this patch addresses the issue discussed in
https://github.com/barebox/barebox/issues/40 ("fec_imx (and possibly
others): Probe fails with ENODEV").

Cheers,
Christian
---
 drivers/base/driver.c | 13 +++++++++++++
 drivers/net/fec_imx.c | 12 +++++-------
 drivers/net/fec_imx.h |  1 +
 include/driver.h      | 10 ++++++++++
 4 files changed, 29 insertions(+), 7 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 61118385f1df0f8d36208d236be66b077fa5e54d..614c3c26b04c6f252e3970e014a43bae6a1d9c2b 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -690,6 +690,19 @@ const void *device_get_match_data(struct device *dev)
 }
 EXPORT_SYMBOL(device_get_match_data);
 
+const void *device_get_match_data_default(struct device *dev,
+					  const void *defaultval)
+{
+	if (dev->of_id_entry)
+		return dev->of_id_entry->data;
+
+	if (dev->id_entry)
+		return (const void *)dev->id_entry->driver_data;
+
+	return defaultval;
+}
+EXPORT_SYMBOL(device_get_match_data_default);
+
 static void device_set_deferred_probe_reason(struct device *dev,
 					     const struct va_format *vaf)
 {
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 8474e6d5be9c6225af5708d21b0249b2618d36f6..fac190e6ea51950ed6085264e12617969847acbf 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -763,20 +763,18 @@ static int fec_probe(struct device *dev)
 	struct fec_priv *fec;
 	void *base;
 	int ret;
-	enum fec_type type;
-	void const *type_v;
+	uintptr_t type_v;
 	int phy_reset;
 	u32 msec = 1, phy_post_delay = 0;
 	u32 reg;
 
-	type_v = device_get_match_data(dev);
-	if (!type_v)
+	type_v = (uintptr_t)device_get_match_data_default(dev,
+		(const void *)FEC_TYPE_COUNT);
+	if (type_v >= FEC_TYPE_COUNT)
 		return -ENODEV;
 
-	type = (uintptr_t)(type_v);
-
 	fec = xzalloc(sizeof(*fec));
-	fec->type = type;
+	fec->type = type_v;
 	fec->dev = dev;
 	edev = &fec->edev;
 	dev->priv = fec;
diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
index 1aaff87fddfb44cf558436ab4a846757c6cd51aa..9549dab0f8e88288bd9fe3a02ff8bd5573147842 100644
--- a/drivers/net/fec_imx.h
+++ b/drivers/net/fec_imx.h
@@ -117,6 +117,7 @@ enum fec_type {
 	FEC_TYPE_IMX27,
 	FEC_TYPE_IMX28,
 	FEC_TYPE_IMX6,
+	FEC_TYPE_COUNT,
 };
 
 enum fec_clock {
diff --git a/include/driver.h b/include/driver.h
index c130a3cd63fd5e6dc365a33c765a22dc4e2ca90a..223799294fc0e32ceb13fc5bda2e3b8a78d71647 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -650,6 +650,16 @@ int cdevfs_del_partition(struct cdev *cdev);
  */
 const void *device_get_match_data(struct device *dev);
 
+/**
+ * device_get_match_data_default - get driver match data associated with device
+ * @dev: device instance
+ * @defaultval: Value to return if no match data is associated with dev
+ *
+ * Returns match data on success and defaultval otherwise
+ */
+const void *device_get_match_data_default(struct device *dev,
+					  const void *defaultval);
+
 int device_match_of_modalias(struct device *dev, const struct driver *drv);
 
 struct device *device_find_child(struct device *parent, void *data,

---
base-commit: 7689314d0a78605e7d4a0c3ce4953d9d768aa343
change-id: 20250903-fec_imx-fix-enodev-f7a9087054c8

Best regards,
-- 
Christian Thießen <christian.thiessen@airbus.com>




