Delivery-date: Tue, 26 Nov 2024 16:34:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFxaJ-000fmk-1H
	for lore@lore.pengutronix.de;
	Tue, 26 Nov 2024 16:34:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFxaI-0001fy-Um
	for lore@pengutronix.de; Tue, 26 Nov 2024 16:34:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NRlh98gbjyGmXygtfmG1i/tz5XtgGIVQUfvRXY5LPng=; b=bC7VK6Hlo+27z4yGJMb8mBR/r5
	bKCD4L49bh3cF6cg5Ezn4yVCBILQ9fK7j9ucXwRSYX+vwu3XKYR9I4e0B5Smrfw5c8ICg3qfU/5Vc
	a4a+oVuOyAIvSZJbkMfajpCi0MEOmPfLl5S+iUL36Sl4tYH9XOFKLICV9nzi7t/6mtdlyfwTv+xvC
	ShjC4jDA7My/oVkNnIxJSjxsCIO7nay7qyDIV0M+4pcypb4WABvTApZXKEqYqeaj7G2p5ltNcr6EH
	E3QYKnT+p5ZbaAzzdv+2WOyfv0cWsh/iji19AKgag52BIKke2GRIheWD+MSRpqqVgbknRU1kETiK9
	6acdGoqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFxZo-0000000B11I-3Lbj;
	Tue, 26 Nov 2024 15:34:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFxYx-0000000B0pC-167S
	for barebox@lists.infradead.org;
	Tue, 26 Nov 2024 15:33:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxYw-0000vv-0V; Tue, 26 Nov 2024 16:33:14 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxYv-000GuC-00;
	Tue, 26 Nov 2024 16:33:13 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxYv-00Fme2-0B;
	Tue, 26 Nov 2024 16:33:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 26 Nov 2024 16:33:11 +0100
Message-Id: <20241126153312.3758355-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241126153312.3758355-1-a.fatoum@pengutronix.de>
References: <20241126153312.3758355-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_073315_304862_4BD77110 
X-CRM114-Status: GOOD (  26.17  )
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
Subject: [PATCH 4/5] environment: add support for a single node barebox,environment binding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While we have had our binding for a long time, it was never submitted
for upstream inclusion in the Linux DT bindings and it's unlikely to be
accepted as there are no other bindings that reference a fixed partition
in a property.

Linux has support for a u-boot,env binding, which is used by giving the
partition a compatible = "u-boot,env" property.

Let's support the same thing for barebox and allow barebox,environment
to be a subnode of a fixed-partitions node. We intentionally don't add
file-path support for now as the intention is to flesh out this binding
together with upstream.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../bindings/nvmem/barebox,environment.yaml   | 55 +++++++++++++++
 drivers/of/barebox.c                          | 67 ++++++++++---------
 2 files changed, 90 insertions(+), 32 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/nvmem/barebox,environment.yaml

diff --git a/Documentation/devicetree/bindings/nvmem/barebox,environment.yaml b/Documentation/devicetree/bindings/nvmem/barebox,environment.yaml
new file mode 100644
index 000000000000..9923baa19b40
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/barebox,environment.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://barebox.org/schemas/nvmem/barebox,environment.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: barebox environment variables
+
+description: |
+  barebox uses its environment to store non-volatile variables, scripts
+  and arbitrary binary blobs.
+  By default, the built-in environment compiled into barebox is used, but
+  for development purposes, it's possible to override it at runtime.
+
+  Variables can not yet be defined as NVMEM device subnodes.
+
+maintainers:
+  - Ahmad Fatoum <a.fatoum@pengutronix.de>
+
+properties:
+  compatible:
+    const: barebox,environment
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - label
+  - reg
+
+allOf:
+  - $ref: partition.yaml#
+
+additionalProperties: false
+
+examples:
+  - |
+    partitions {
+        compatible = "fixed-partitions";
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        partition@0 {
+            reg = <0x0 0x100000>;
+            label = "barebox";
+            read-only;
+        };
+
+        partition@100000 {
+            compatible = "barebox,environment";
+            label = "env";
+            reg = <0x100000 0x10000>;
+        };
+    };
diff --git a/drivers/of/barebox.c b/drivers/of/barebox.c
index 65392697913b..85e356f5ac0f 100644
--- a/drivers/of/barebox.c
+++ b/drivers/of/barebox.c
@@ -15,27 +15,38 @@
 
 #define ENV_MNT_DIR "/boot"	/* If env on filesystem, where to mount */
 
-/* If dev describes a file on a fs, mount the fs and return a pointer
- * to the file's path.  Otherwise return an error code or NULL if the
- * device path should be used.
- * Does nothing in env in a file support isn't enabled.
- */
-static char *environment_check_mount(struct device *dev, const char *devpath)
+static char *environment_probe_1node_binding(struct device *dev)
+{
+	struct cdev *cdev;
+
+	cdev = cdev_by_device_node(dev->of_node);
+	if (!cdev)
+		return ERR_PTR(-EINVAL);
+
+	return basprintf("/dev/%s", cdev_name(cdev));
+}
+
+static char *environment_probe_2node_binding(struct device *dev)
 {
 	const char *filepath;
+	char *devpath;
 	int ret;
 
+	ret = of_find_path(dev->of_node, "device-path", &devpath,
+			   OF_FIND_PATH_FLAGS_BB);
+	if (ret)
+		goto out;
+
 	if (!IS_ENABLED(CONFIG_OF_BAREBOX_ENV_IN_FS))
-		return NULL;
+		return devpath;
 
 	ret = of_property_read_string(dev->of_node, "file-path", &filepath);
 	if (ret == -EINVAL) {
-		/* No file-path so just use device-path */
-		return NULL;
+		return devpath;
 	} else if (ret) {
 		/* file-path property exists, but has error */
 		dev_err(dev, "Problem with file-path property\n");
-		return ERR_PTR(ret);
+		goto out;
 	}
 
 	/* Get device env is on and mount it */
@@ -44,42 +55,34 @@ static char *environment_check_mount(struct device *dev, const char *devpath)
 	if (ret) {
 		dev_err(dev, "Failed to load environment: mount %s failed (%d)\n",
 			devpath, ret);
-		return ERR_PTR(ret);
+		goto out;
 	}
 
 	/* Set env to be in a file on the now mounted device */
 	dev_dbg(dev, "Loading default env from %s on device %s\n",
 		filepath, devpath);
 
-	return basprintf("%s/%s", ENV_MNT_DIR, filepath);
+out:
+	free(devpath);
+	return ret ? ERR_PTR(ret) : basprintf("%s/%s", ENV_MNT_DIR, filepath);
 }
 
 static int environment_probe(struct device *dev)
 {
-	char *devpath, *filepath;
-	int ret;
+	char *path;
 
-	ret = of_find_path(dev->of_node, "device-path", &devpath,
-			   OF_FIND_PATH_FLAGS_BB);
-	if (ret)
-		return ret;
-
-	/* Do we need to mount a fs and find env there? */
-	filepath = environment_check_mount(dev, devpath);
-	if (IS_ERR(filepath)) {
-		free(devpath);
-		return ret;
-	}
-
-	if (filepath)
-		free(devpath);
+	if (of_property_present(dev->of_node, "device-path"))
+		path = environment_probe_2node_binding(dev);
 	else
-		filepath = devpath;
+		path = environment_probe_1node_binding(dev);
 
-	dev_dbg(dev, "Setting default environment path to %s\n", filepath);
-	default_environment_path_set(filepath);
+	if (IS_ERR(path))
+		return PTR_ERR(path);
 
-	free(filepath);
+	dev_dbg(dev, "Setting default environment path to %s\n", path);
+	default_environment_path_set(path);
+
+	free(path);
 
 	return 0;
 }
-- 
2.39.5



