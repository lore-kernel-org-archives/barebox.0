Delivery-date: Thu, 02 Jun 2022 11:03:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwgjh-000Ns5-59
	for lore@lore.pengutronix.de; Thu, 02 Jun 2022 11:03:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwgjf-00073j-Q8
	for lore@pengutronix.de; Thu, 02 Jun 2022 11:03:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qG8ZFGj8d2k6VHz9ixQ49AJh9UNYGtNNfNQMSmR7S1Q=; b=e6dU9Vooacsdip
	x7Y6i2joSo2sUfSGkfcOa0wGfC0LWiOM1GZwI5XfsZxMeZk3D+eZtLqCYWK3f4uGpuYUuVd7rxRe9
	ZX++SwRygp0EkHCWF1yLCW1sWWXftF4B6T9T4oav3NOwTBr4yG8oTvKYyNM/kMM0rX9LsD8Yc/Nvb
	hg5X3EpZ38QKp8sIjuT8iKfvNt5Xt4JRSsyFIFdjtZJfctIVeKAxmxewog6T8DxFRrBvne9xEP75Y
	gBwLAA9Yf02CcYj6qLqnURLLwQzH2a79brZdMSg2HBIYVOQUmW/TqlXRi/1VqQai/3NmvZjDjh3bq
	KK6FnsCK7jqnXLqaHpUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwgiM-002KsM-O1; Thu, 02 Jun 2022 09:01:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwgi8-002Klk-61
	for barebox@lists.infradead.org; Thu, 02 Jun 2022 09:01:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nwgi5-0006aN-1M; Thu, 02 Jun 2022 11:01:41 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nwgi5-005zkr-Jm; Thu, 02 Jun 2022 11:01:40 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nwgi2-00DOLN-Uh; Thu, 02 Jun 2022 11:01:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 Jun 2022 11:01:27 +0200
Message-Id: <20220602090133.3190450-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220602090133.3190450-1-a.fatoum@pengutronix.de>
References: <20220602090133.3190450-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_020144_297218_7E38634C 
X-CRM114-Status: GOOD (  17.23  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/7] bbu: move barebox_update eMMC boot handling into common code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Like with the i.MX, the STM32MP1 BootROM also consults the
EXT_CSD_PARTITION_CONFIG register to find out what to boot.

The barebox_update code used for atomic update on i.MX is thus
useful to the STM32MP as well, so move the boot switching part
to a generic location.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 48 ++----------------------
 common/bbu.c                         | 55 ++++++++++++++++++++++++++++
 include/bbu.h                        |  3 ++
 3 files changed, 61 insertions(+), 45 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 64d4d77ff596..3b0c587cc572 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -422,54 +422,12 @@ static int imx_bbu_update(struct bbu_handler *handler, struct bbu_data *data)
 static int imx_bbu_internal_mmcboot_update(struct bbu_handler *handler,
 					   struct bbu_data *data)
 {
-	struct bbu_data _data = *data;
 	int ret;
-	char *bootpartvar;
-	const char *bootpart;
-	char *devicefile;
-	const char *devname = devpath_to_name(data->devicefile);
 
-	ret = device_detect_by_name(devname);
-	if (ret) {
-		pr_err("Couldn't detect device '%s'\n", devname);
-		return ret;
-	}
-
-	ret = asprintf(&bootpartvar, "%s.boot", devname);
-	if (ret < 0)
-		return ret;
-
-	bootpart = getenv(bootpartvar);
-	if (!bootpart) {
-		pr_err("Couldn't read the value of '%s'\n", bootpartvar);
-		ret = -ENOENT;
-		goto free_bootpartvar;
-	}
-
-	if (!strcmp(bootpart, "boot0")) {
-		bootpart = "boot1";
-	} else {
-		bootpart = "boot0";
-	}
-
-	ret = asprintf(&devicefile, "/dev/%s.%s", devname, bootpart);
-	if (ret < 0)
-		goto free_bootpartvar;
-
-	_data.devicefile = devicefile;
-
-	ret = imx_bbu_update(handler, &_data);
-	if (ret)
-		goto free_devicefile;
-
-	/* on success switch boot source */
-	ret = setenv(bootpartvar, bootpart);
-
-free_devicefile:
-	free(devicefile);
+	ret = bbu_mmcboot_handler(handler, data, imx_bbu_update);
 
-free_bootpartvar:
-	free(bootpartvar);
+	if (ret == -ENOENT)
+		pr_err("Couldn't read the value of .boot parameter\n");
 
 	return ret;
 }
diff --git a/common/bbu.c b/common/bbu.c
index cd7bdc40b72a..6a47b21a55b0 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -19,6 +19,7 @@
 #include <malloc.h>
 #include <linux/stat.h>
 #include <image-metadata.h>
+#include <environment.h>
 #include <file-list.h>
 
 static LIST_HEAD(bbu_image_handlers);
@@ -304,6 +305,60 @@ struct bbu_std {
 	enum filetype filetype;
 };
 
+int bbu_mmcboot_handler(struct bbu_handler *handler, struct bbu_data *data,
+			int (*chained_handler)(struct bbu_handler *, struct bbu_data *))
+{
+	struct bbu_data _data = *data;
+	int ret;
+	char *bootpartvar;
+	const char *bootpart;
+	char *devicefile;
+	const char *devname = devpath_to_name(data->devicefile);
+
+	ret = device_detect_by_name(devname);
+	if (ret) {
+		pr_err("Couldn't detect device '%s'\n", devname);
+		return ret;
+	}
+
+	ret = asprintf(&bootpartvar, "%s.boot", devname);
+	if (ret < 0)
+		return ret;
+
+	bootpart = getenv(bootpartvar);
+	if (!bootpart) {
+		ret = -ENOENT;
+		goto free_bootpartvar;
+	}
+
+	if (!strcmp(bootpart, "boot0")) {
+		bootpart = "boot1";
+	} else {
+		bootpart = "boot0";
+	}
+
+	ret = asprintf(&devicefile, "/dev/%s.%s", devname, bootpart);
+	if (ret < 0)
+		goto free_bootpartvar;
+
+	_data.devicefile = devicefile;
+
+	ret = chained_handler(handler, &_data);
+	if (ret < 0)
+		goto free_devicefile;
+
+	/* on success switch boot source */
+	ret = setenv(bootpartvar, bootpart);
+
+free_devicefile:
+	free(devicefile);
+
+free_bootpartvar:
+	free(bootpartvar);
+
+	return ret;
+}
+
 static int bbu_std_file_handler(struct bbu_handler *handler,
 					struct bbu_data *data)
 {
diff --git a/include/bbu.h b/include/bbu.h
index 3128339068ee..bf5f2158df72 100644
--- a/include/bbu.h
+++ b/include/bbu.h
@@ -50,6 +50,9 @@ void bbu_handlers_list(void);
 
 struct file_list;
 
+int bbu_mmcboot_handler(struct bbu_handler *, struct bbu_data *,
+			int (*chained_handler)(struct bbu_handler *, struct bbu_data *));
+
 #ifdef CONFIG_BAREBOX_UPDATE
 
 int bbu_register_handler(struct bbu_handler *);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

