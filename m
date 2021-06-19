Delivery-date: Sat, 19 Jun 2021 05:28:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luRf5-0003JP-2D
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 05:28:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luRf4-0000BT-1M
	for lore@pengutronix.de; Sat, 19 Jun 2021 05:28:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1qVukgImB1uvc1M9csGCgve1L2j4OPAZlLvKqelC9Uk=; b=yiocnoimq0N0+0
	7Z+r2fJQDk/89+hVJLdLTtidhNMUGwTbebh4IV3TtrmF8aiB+XrW4eE1lyAOb0m6n/Na2dnNk3DeM
	pv0r8EJGrscQVso8VxTMucNpS3O2bXbILcf6KdMFEgfFyW7b+9W88tKF8rP2vIVwcbfwY4s7Kewoo
	UpJUo87+fq9PB9tA8aCaps5FmS7K9OK9euixJUMWTdIa7+6/guuMwGMAqOD3eOuSd4SR5QgswQvQn
	2YzAJC7kGgUq9TkSWLUGHOhNnEeSPHj+mjXAVA7eZyhAbeY2aJUK+1e/wvK0e1+U++81IkP+FWvjw
	yxEZ76bOUTWMhPJOqOfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luRdd-00G7pd-5F; Sat, 19 Jun 2021 03:27:17 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luRdT-00G7na-KS
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 03:27:10 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id C7B1BC0005;
 Sat, 19 Jun 2021 03:27:02 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 19 Jun 2021 05:26:54 +0200
Message-Id: <20210619032654.455801-2-ahmad@a3f.at>
X-Mailer: git-send-email 2.32.0.rc0
In-Reply-To: <20210619032654.455801-1-ahmad@a3f.at>
References: <20210619032654.455801-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_202707_986541_D7DC642E 
X-CRM114-Status: GOOD (  14.55  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] console: respect baudrate specified in device-tree
 stdout-path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

stdout-path in the device tree can have a suffix indicating line
settings. The baud rate contained within was so far ignored by barebox.

Change this so barebox first consults the stdout-path alias before
falling back to CONFIG_BAUDRATE.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
This applies on top of the deep probe series.
---
 common/console.c      | 20 ++++++++++----------
 drivers/of/base.c     | 19 ++++++++++++++-----
 drivers/of/platform.c |  2 +-
 include/of.h          |  8 ++++----
 4 files changed, 29 insertions(+), 20 deletions(-)

diff --git a/common/console.c b/common/console.c
index 8a0af75a1ff4..ad1a6aaab2a0 100644
--- a/common/console.c
+++ b/common/console.c
@@ -220,7 +220,7 @@ static void console_init_early(void)
 	initialized = CONSOLE_INITIALIZED_BUFFER;
 }
 
-static void console_set_stdoutpath(struct console_device *cdev)
+static void console_set_stdoutpath(struct console_device *cdev, unsigned baudrate)
 {
 	int id;
 	char *str;
@@ -232,8 +232,7 @@ static void console_set_stdoutpath(struct console_device *cdev)
 	if (id < 0)
 		return;
 
-	str = basprintf("console=%s%d,%dn8", cdev->linux_console_name, id,
-			  cdev->baudrate);
+	str = basprintf("console=%s%d,%dn8", cdev->linux_console_name, id, baudrate);
 
 	globalvar_add_simple("linux.bootargs.console", str);
 
@@ -297,6 +296,7 @@ int console_register(struct console_device *newcdev)
 	struct device_node *serdev_node = console_is_serdev_node(newcdev);
 	struct device_d *dev = &newcdev->class_dev;
 	int activate = 0, ret;
+	unsigned baudrate = CONFIG_BAUDRATE;
 
 	if (!serdev_node && initialized == CONSOLE_UNINITIALIZED)
 		console_init_early();
@@ -327,11 +327,16 @@ int console_register(struct console_device *newcdev)
 	if (serdev_node)
 		return of_platform_populate(serdev_node, NULL, dev);
 
+	if (newcdev->dev && of_device_is_stdout_path(newcdev->dev, &baudrate)) {
+		activate = 1;
+		console_set_stdoutpath(newcdev, baudrate);
+	}
+
 	if (newcdev->setbrg) {
-		ret = newcdev->setbrg(newcdev, CONFIG_BAUDRATE);
+		ret = newcdev->setbrg(newcdev, baudrate);
 		if (ret)
 			return ret;
-		newcdev->baudrate_param = newcdev->baudrate = CONFIG_BAUDRATE;
+		newcdev->baudrate_param = newcdev->baudrate = baudrate;
 		dev_add_param_uint32(dev, "baudrate", console_baudrate_set,
 			NULL, &newcdev->baudrate_param, "%u", newcdev);
 	}
@@ -349,11 +354,6 @@ int console_register(struct console_device *newcdev)
 		activate = 1;
 	}
 
-	if (newcdev->dev && of_device_is_stdout_path(newcdev->dev)) {
-		activate = 1;
-		console_set_stdoutpath(newcdev);
-	}
-
 	list_add_tail(&newcdev->list, &console_list);
 
 	if (activate)
diff --git a/drivers/of/base.c b/drivers/of/base.c
index f375fcd67572..877480d46518 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2465,7 +2465,7 @@ void of_delete_node(struct device_node *node)
 		of_set_root_node(NULL);
 }
 
-struct device_node *of_get_stdoutpath(void)
+struct device_node *of_get_stdoutpath(unsigned int *baudrate)
 {
 	struct device_node *dn;
 	const char *name;
@@ -2487,15 +2487,24 @@ struct device_node *of_get_stdoutpath(void)
 
 	free(q);
 
+	if (baudrate && *p) {
+		unsigned rate = simple_strtoul(p + 1, NULL, 10);
+		if (rate)
+			*baudrate = rate;
+	}
+
 	return dn;
 }
 
-int of_device_is_stdout_path(struct device_d *dev)
+int of_device_is_stdout_path(struct device_d *dev, unsigned int *baudrate)
 {
-	if (!dev->device_node)
-		return 0;
+	unsigned int tmp;
+
+	if (!dev || !dev->device_node || dev->device_node != of_get_stdoutpath(&tmp))
+		return false;
 
-	return dev->device_node == of_get_stdoutpath();
+	*baudrate = tmp;
+	return true;
 }
 
 /**
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 6b6f904573dd..1d025f941682 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -520,7 +520,7 @@ static int of_stdoutpath_init(void)
 {
 	struct device_node *np;
 
-	np = of_get_stdoutpath();
+	np = of_get_stdoutpath(NULL);
 	if (!np)
 		return 0;
 
diff --git a/include/of.h b/include/of.h
index 98de9d848034..689fa54d4c73 100644
--- a/include/of.h
+++ b/include/of.h
@@ -286,8 +286,8 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node);
 int of_parse_partitions(struct cdev *cdev, struct device_node *node);
 int of_fixup_partitions(struct device_node *np, struct cdev *cdev);
 int of_partitions_register_fixup(struct cdev *cdev);
-struct device_node *of_get_stdoutpath(void);
-int of_device_is_stdout_path(struct device_d *dev);
+struct device_node *of_get_stdoutpath(unsigned int *);
+int of_device_is_stdout_path(struct device_d *dev, unsigned int *baudrate);
 const char *of_get_model(void);
 void *of_flatten_dtb(struct device_node *node);
 int of_add_memory(struct device_node *node, bool dump);
@@ -324,12 +324,12 @@ static inline int of_partitions_register_fixup(struct cdev *cdev)
 	return -ENOSYS;
 }
 
-static inline struct device_node *of_get_stdoutpath(void)
+static inline struct device_node *of_get_stdoutpath(unsigned int *)
 {
 	return NULL;
 }
 
-static inline int of_device_is_stdout_path(struct device_d *dev)
+static inline int of_device_is_stdout_path(struct device_d *dev, unsigned int *baudrate)
 {
 	return 0;
 }
-- 
2.32.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

