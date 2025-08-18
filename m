Delivery-date: Mon, 18 Aug 2025 20:31:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4dU-001yTM-0k
	for lore@lore.pengutronix.de;
	Mon, 18 Aug 2025 20:31:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4dQ-0003wT-F9
	for lore@pengutronix.de; Mon, 18 Aug 2025 20:31:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XibphrExI2yMIi44TN5l6+cLWKMazD2BHeiFun0BmVw=; b=Z6lttPu/UNZAewoOS/Ot/+DRIR
	KdAp2/dd9nyvJT2GgFGan/5FXsriK7cUgGWs8Zjg+98lO4SyXFZ0VsOTRHc4qY4Irm4ALEVvdJkeQ
	bGQGpvEDhYos2YlUj4HXJ7ozMwOgrr6wYgTgnjIEAXSsEYASAFXA0LSDmuNo0dWnc4q2h8nz16SWf
	lWD1KxUkX8ZVAAedOsWHxiUeWRxhRhGHiPe2DylLTjzihGr+6ZFQfvtsiIC8Ig5J6cgTn5vc1K9Yl
	S8yOtWC58LULHQMs13F1rTvno07YjeDdxbE5dLLhbC4X+ijtIx23vx/cWFG4Sms6lw2IC+ZkpJvMB
	nD6IJBwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo4cp-00000008LSY-3esY;
	Mon, 18 Aug 2025 18:30:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3uY-00000008F67-3Tmy
	for barebox@bombadil.infradead.org;
	Mon, 18 Aug 2025 17:44:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=XibphrExI2yMIi44TN5l6+cLWKMazD2BHeiFun0BmVw=; b=kTcm2i3yl98L57p0SYY+RILm0v
	iPwDA9lcaPqKZ4x7axwcXylsA0WV7K252CtybJJ1v00CtTjQxXFytw/Ap0EJn/xQo4WPPZaxmx7eL
	80OW7z8xEf3RaH9rPE7ybv3QGGsdGhX2cY2a3+Xc/O5i5w5JV7WQqTdlRkxCM0XhauWflLMHZ+1/y
	+ux5tx+4BD4rT9jN3yTU2gFTNuSrpZnSQYP/9w0IIMzMc6qMKY6h++E978TitHjgnrXMj0LaUl+5B
	PR2WFopqKCUpOQEk4O6LwypNrqTA3jeGztotioGwm5pS/ZjcV110G4oLVZiDdtLDy9z+WZ7N13XtB
	FIf20J/Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3uT-0000000HStB-24ig
	for barebox@lists.infradead.org;
	Mon, 18 Aug 2025 17:44:45 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uo3uQ-0003aK-QF; Mon, 18 Aug 2025 19:44:38 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 18 Aug 2025 19:44:41 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250818-v2025-06-0-topic-nvmem-v2-7-b6d677f6c519@pengutronix.de>
References: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
In-Reply-To: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_184441_822619_65AA491B 
X-CRM114-Status: GOOD (  12.53  )
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
Subject: [PATCH v2 07/15] nvmem: core: allow single and dynamic device ids
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

At the moment only DEVICE_ID_DYNAMIC is supported. Add support for
NVMEM_DEVID_NONE to allow static device names via of-aliases and to
align our core with Linux.

While on it fix the nvmem_register_cdev() by using the dev_name() which
honors the DEVICE_ID_* cases else we end up with different names for the
devfs and the device itself.

The dev_dbg() message can be dropped as well since the register_device()
can print this message too.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/nvmem/core.c           | 16 +++++++++++-----
 include/linux/nvmem-provider.h |  4 ++++
 2 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 4dbeb1e116ae398f1f2748238d97468c1096262a..7e1dcceb00b924548b4582504b8ccaa4f29c4bdc 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -442,17 +442,23 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 	if (config->read_only || !config->reg_write || of_property_read_bool(np, "read-only"))
 		nvmem->read_only = true;
 
-	dev_set_name(&nvmem->dev, "%s", config->name);
-	nvmem->dev.id = DEVICE_ID_DYNAMIC;
-
-	dev_dbg(nvmem->dev.parent, "Registering nvmem device %s\n", config->name);
+	dev_set_name(&nvmem->dev, "%s", config->name ? : "nvmem");
+	switch (config->id) {
+	case NVMEM_DEVID_NONE:
+		nvmem->dev.id = DEVICE_ID_SINGLE;
+		break;
+	case NVMEM_DEVID_AUTO:
+	default:
+		nvmem->dev.id = DEVICE_ID_DYNAMIC;
+		break;
+	}
 
 	rval = register_device(&nvmem->dev);
 	if (rval)
 		goto err_remove_cells;
 
 	if (!config->cdev) {
-		rval = nvmem_register_cdev(nvmem, config->name);
+		rval = nvmem_register_cdev(nvmem, dev_name(&nvmem->dev));
 		if (rval)
 			goto err_unregister;
 	}
diff --git a/include/linux/nvmem-provider.h b/include/linux/nvmem-provider.h
index d0c434217cd218ec7585c209d17475c8cfc1fbd6..16242490a58f19a05aacc3a27c6d4557cd091ec5 100644
--- a/include/linux/nvmem-provider.h
+++ b/include/linux/nvmem-provider.h
@@ -25,6 +25,9 @@ typedef int (*nvmem_cell_post_process_t)(void *priv, const char *id,
 					 unsigned int offset, void *buf,
 					 size_t bytes);
 
+#define NVMEM_DEVID_NONE	(-1)
+#define NVMEM_DEVID_AUTO	(-2)
+
 /**
  * struct nvmem_cell_info - NVMEM cell description
  * @name:	Name.
@@ -62,6 +65,7 @@ struct nvmem_cell_info {
 struct nvmem_config {
 	struct device		*dev;
 	const char		*name;
+	int			id;
 	bool			read_only;
 	struct cdev		*cdev;
 	nvmem_reg_read_t	reg_read;

-- 
2.39.5



