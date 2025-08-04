Delivery-date: Mon, 04 Aug 2025 17:32:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uixAX-006z6I-2G
	for lore@lore.pengutronix.de;
	Mon, 04 Aug 2025 17:32:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uixAV-0006Fe-5L
	for lore@pengutronix.de; Mon, 04 Aug 2025 17:32:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AkVBHMijmpTxIz7lQW8+6J/LvLULWJGNwDTRiDXH4e0=; b=ZNXq30gREs75aoMM+4INdfgWiU
	xq9/iaJ6q4wGAhNVj/+O7lU01kY+KOka5A3/qDlfO+fgyLCwYWWRPgk1xMPcY1u3sg1QulsvK5C9o
	oJwwdHIQyWpbu4eZnKIrFcxDB56ha9GM/Dl27cfzQCyLCATgTVeY/5HUPXsEA7DD8AZDx5HieJaZY
	36kKcCd3NIf2gPc52BBZJAmD8ycxyBtGYyl4Jln28ucdR2HZR1CYdfU6n9Rv4F4X+KfFEerUibY0F
	Y3389P8T+1Kl7PDMWDB7D/de4PDcyRMZGOVEyh9D8wn5ZeKofVnEzRpyD/gq+yy4sGUou+Vo5K+Lb
	nEeW5WjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uix9m-0000000AnuX-3pBz;
	Mon, 04 Aug 2025 15:31:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiwJ2-0000000AgmN-1oAs
	for barebox@lists.infradead.org;
	Mon, 04 Aug 2025 14:36:56 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uiwIz-0000aW-Jp; Mon, 04 Aug 2025 16:36:49 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 04 Aug 2025 16:36:59 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250804-v2025-06-0-topic-nvmem-v1-13-7603eaa4d2b0@pengutronix.de>
References: <20250804-v2025-06-0-topic-nvmem-v1-0-7603eaa4d2b0@pengutronix.de>
In-Reply-To: <20250804-v2025-06-0-topic-nvmem-v1-0-7603eaa4d2b0@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_073652_582754_9DFD2775 
X-CRM114-Status: GOOD (  15.09  )
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
Subject: [PATCH 13/15] nvmem: core: add cell based fixup logic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To further sync the nvmem code base port Linux commits:

| commit de12c9691501ccba41a154c223869f82be4c12fd
| Author: Michael Walle <michael@walle.cc>
| Date:   Tue Apr 4 18:21:25 2023 +0100
|
|     nvmem: core: allow to modify a cell before adding it
|
|     Provide a way to modify a cell before it will get added. This is useful
|     to attach a custom post processing hook via a layout.
|
|     Signed-off-by: Michael Walle <michael@walle.cc>
|     Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
|     Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
|     Link: https://lore.kernel.org/r/20230404172148.82422-18-srinivas.kandagatla@linaro.org
|     Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

| commit 1172460e716784ac7e1049a537bdca8edbf97360
| Author: Miquel Raynal <miquel.raynal@bootlin.com>
| Date:   Fri Dec 15 11:15:31 2023 +0000
|
|     nvmem: Move and rename ->fixup_cell_info()
|
|     This hook is meant to be used by any provider and instantiating a layout
|     just for this is useless. Let's instead move this hook to the nvmem
|     device and add it to the config structure to be easily shared by the
|     providers.
|
|     While at moving this hook, rename it ->fixup_dt_cell_info() to clarify
|     its main intended purpose.
|
|     Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
|     Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
|     Link: https://lore.kernel.org/r/20231215111536.316972-6-srinivas.kandagatla@linaro.org
|     Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

The next commit will get rid of the global nvmem->cell_post_process()
hook.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/nvmem/core.c           | 4 ++++
 drivers/nvmem/internals.h      | 2 ++
 include/linux/nvmem-provider.h | 4 ++++
 3 files changed, 10 insertions(+)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 0c78d61e3c58fbe019a1def08d06e2ecf561a9b1..d9b3e3bc8c1b9016975480d45da53f8c77a52881 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -344,6 +344,9 @@ static int nvmem_add_cells_from_dt(struct nvmem_device *nvmem, struct device_nod
 
 		info.np = of_node_get(child);
 
+		if (nvmem->fixup_dt_cell_info)
+			nvmem->fixup_dt_cell_info(nvmem, &info);
+
 		ret = nvmem_add_one_cell(nvmem, &info);
 		kfree(info.name);
 		if (ret) {
@@ -438,6 +441,7 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 	nvmem->dev.of_node = np;
 	nvmem->priv = config->priv;
 	INIT_LIST_HEAD(&nvmem->cells);
+	nvmem->fixup_dt_cell_info = config->fixup_dt_cell_info;
 	nvmem->cell_post_process = config->cell_post_process;
 
 	rval = nvmem_add_cells_from_legacy_of(nvmem);
diff --git a/drivers/nvmem/internals.h b/drivers/nvmem/internals.h
index 97ffdfe79dfe6c5459d1bba5ba717c861678e9a2..10e11ad79bc32364d542c5320e70fb0377e83478 100644
--- a/drivers/nvmem/internals.h
+++ b/drivers/nvmem/internals.h
@@ -22,6 +22,8 @@ struct nvmem_device {
 	struct nvmem_layout	*layout;
 	struct list_head	cells;
 	nvmem_cell_post_process_t cell_post_process;
+	void (*fixup_dt_cell_info)(struct nvmem_device *nvmem,
+				   struct nvmem_cell_info *cell);
 	int			(*reg_write)(void *ctx, unsigned int reg,
 					     const void *val, size_t val_size);
 	int			(*reg_read)(void *ctx, unsigned int reg,
diff --git a/include/linux/nvmem-provider.h b/include/linux/nvmem-provider.h
index 892e3604ef83ef8b616041f5d4dbfdcae1136fc9..a8aa6b741395f810315d7f018d62e4ef64e618a5 100644
--- a/include/linux/nvmem-provider.h
+++ b/include/linux/nvmem-provider.h
@@ -58,6 +58,8 @@ struct nvmem_cell_info {
  * @dev:	Parent device.
  * @name:	Optional name.
  * @id:		Optional device ID used in full name. Ignored if name is NULL.
+ * @fixup_dt_cell_info: Will be called before a cell is added. Can be
+ *		used to modify the nvmem_cell_info.
  * @read_only:	Device is read-only.
  * @reg_read:	Callback to read data; return zero if successful.
  * @reg_write:	Callback to write data; return zero if successful.
@@ -70,6 +72,8 @@ struct nvmem_config {
 	struct device		*dev;
 	const char		*name;
 	int			id;
+	void (*fixup_dt_cell_info)(struct nvmem_device *nvmem,
+				   struct nvmem_cell_info *cell);
 	bool			read_only;
 	struct cdev		*cdev;
 	nvmem_reg_read_t	reg_read;

-- 
2.39.5



