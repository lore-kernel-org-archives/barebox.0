Delivery-date: Mon, 24 Apr 2023 14:19:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pqvAG-00FZ2h-KX
	for lore@lore.pengutronix.de; Mon, 24 Apr 2023 14:19:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pqvAG-0004QX-HS
	for lore@pengutronix.de; Mon, 24 Apr 2023 14:19:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gPskdTj12BLPetEJOVE/o1FvAKL6Rm7OH2CCiBhJDwY=; b=ZfOxdk7Li7j98DATMhmcISthWQ
	vzcF8TUlKZdLl7qZ31YOY2yM4TPchkeHPhhF7nW7EexhVTe82Td6fLKg4xQyfdBmIol0QM5jngStR
	SOPaf43D6jPioWfllZRgcganDBgIMZRlR2TXvHZOJo2I3os/zx92SYdj3+d4Llx5cjzeE8FM1PmPL
	U7Irh6y+aPNL+goToZAQ7aWjxB8u8veQ3YEBaN6pltghk8I5SPfiG+CGBXkRZwafhDXaja73nlCbx
	MyHWG7CboAFMO3k0W8lm1lBVYQaov/dULMD2wK1C8xZMyk44LO8hIua8XfK7IZqBNCxHRmT0wzrtY
	up9yoR3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pqv9E-00GHcd-0o;
	Mon, 24 Apr 2023 12:18:24 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pqv99-00GHYo-0z
	for barebox@lists.infradead.org;
	Mon, 24 Apr 2023 12:18:20 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id F24C740004;
	Mon, 24 Apr 2023 12:18:16 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 24 Apr 2023 14:18:05 +0200
Message-Id: <20230424121805.150434-7-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.4
In-Reply-To: <20230424121805.150434-1-ahmad@a3f.at>
References: <20230424121805.150434-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230424_051819_617186_A483A879 
X-CRM114-Status: GOOD (  16.04  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 7/7] sandbox: hostfile: add feature controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Keeping the tradition of making the sandbox more complex than it needs
to in order to exercise more parts of barebox, let's allow hostfiles to
be feature controllers: This allows specifying optional hostfiles in the
DT: If the hostfile is unavailable, the nodes pointing at the hostfile
can be gated by it, so they behaves as if they were disabled.

This is useful for the stickypage, which results in a number of ugly
errors whenever it's unavailable.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/sandbox/board/hostfile.c          | 30 +++++++++++++++++++++++---
 arch/sandbox/configs/sandbox_defconfig |  2 ++
 arch/sandbox/dts/sandbox.dts           |  4 ++++
 drivers/base/Kconfig                   |  2 +-
 4 files changed, 34 insertions(+), 4 deletions(-)

diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index 424f16acd5fc..d0f400787d7a 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -24,6 +24,7 @@
 #include <errno.h>
 #include <linux/err.h>
 #include <mach/hostfile.h>
+#include <featctrl.h>
 #include <xfuncs.h>
 
 struct hf_priv {
@@ -33,6 +34,7 @@ struct hf_priv {
 	};
 	const char *filename;
 	int fd;
+	struct feature_controller feat;
 };
 
 static ssize_t hf_read(struct hf_priv *priv, void *buf, size_t count, loff_t offset, ulong flags)
@@ -96,18 +98,41 @@ static void hf_info(struct device *dev)
 	printf("file: %s\n", priv->filename);
 }
 
+static int hostfile_feat_check(struct feature_controller *feat, int idx)
+{
+	struct hf_priv *priv = container_of(feat, struct hf_priv, feat);
+
+	return priv->fd >= 0 ? FEATCTRL_OKAY : FEATCTRL_GATED;
+}
+
 static int hf_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	struct hf_priv *priv = xzalloc(sizeof(*priv));
 	struct cdev *cdev;
-	bool is_blockdev;
+	bool is_featctrl = false, is_blockdev;
 	u64 reg[2];
 	int err;
 
 	if (!np)
 		return -ENODEV;
 
+	dev->priv = priv;
+	priv->fd = -1;
+
+	if (IS_ENABLED(CONFIG_FEATURE_CONTROLLER) &&
+	    of_property_read_bool(np, "barebox,feature-controller")) {
+		priv->feat.dev = dev;
+		priv->feat.check = hostfile_feat_check;
+
+		err = feature_controller_register(&priv->feat);
+		if (err)
+			return err;
+
+		is_featctrl = true;
+	}
+
+
 	err = of_property_read_u64_array(np, "reg", reg, ARRAY_SIZE(reg));
 	if (err)
 		return err;
@@ -120,10 +145,9 @@ static int hf_probe(struct device *dev)
 		return err;
 
 	if (priv->fd < 0)
-		return priv->fd;
+		return is_featctrl ? 0 : priv->fd;
 
 	dev->info = hf_info;
-	dev->priv = priv;
 
 	is_blockdev = of_property_read_bool(np, "barebox,blockdev");
 
diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
index 16138d9274c4..1bb98c550c43 100644
--- a/arch/sandbox/configs/sandbox_defconfig
+++ b/arch/sandbox/configs/sandbox_defconfig
@@ -96,7 +96,9 @@ CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_SNTP=y
 CONFIG_NET_FASTBOOT=y
+CONFIG_FEATURE_CONTROLLER=y
 CONFIG_OFDEVICE=y
+# CONFIG_FEATURE_CONTROLLER_FIXUP is not set
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_OF_BAREBOX_ENV_IN_FS=y
 CONFIG_OF_OVERLAY_LIVE=y
diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
index 5b2cab219e2a..75c633c5909f 100644
--- a/arch/sandbox/dts/sandbox.dts
+++ b/arch/sandbox/dts/sandbox.dts
@@ -31,6 +31,8 @@
 		backend = <&part_state>;
 		backend-storage-type = "direct";
 		backend-stridesize = <64>;
+		/* suppres sandbox warnings when stickypage is missing */
+		barebox,feature-gates = <&stickypage>;
 
 		#address-cells = <1>;
 		#size-cells = <1>;
@@ -58,6 +60,8 @@
 		barebox,filename = "$build/stickypage.bin";
 		reg = <0 0 0 4096>;
 		barebox,cdev; /* no caching allowed */
+		barebox,feature-controller;
+		#feature-cells = <0>;
 
 		bmode: reboot-mode {
 			compatible = "nvmem-reboot-mode";
diff --git a/drivers/base/Kconfig b/drivers/base/Kconfig
index 3788231b6e82..612a84be33e7 100644
--- a/drivers/base/Kconfig
+++ b/drivers/base/Kconfig
@@ -4,6 +4,6 @@ config PM_GENERIC_DOMAINS
 	bool
 
 config FEATURE_CONTROLLER
-	bool "Feature controller support" if COMPILE_TEST
+	bool "Feature controller support" if COMPILE_TEST || SANDBOX
 
 source "drivers/base/regmap/Kconfig"
-- 
2.38.4



