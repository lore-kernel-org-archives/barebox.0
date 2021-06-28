Delivery-date: Mon, 28 Jun 2021 07:24:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxjlD-0008Hw-Uc
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 07:24:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxjlC-0002pw-JH
	for lore@pengutronix.de; Mon, 28 Jun 2021 07:24:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1QsVwSfo9QKUMvaf2PBAOEoVjmimjMb4Rk8Hazr2HBM=; b=UEyUdxJgthGY4p
	kIAMz6pjLfrcMs65KYXiOZy20gVMTjpFc61Zl3PwfoDeaGskJjzwy1X+gSkwtbpugXBJOno9HvppE
	MQ7zL6MF2vyCc+8Et0kvb9S0/Wt/PKm2eDKQYmry7qbH2dwgWNU9MMgnwSshhpax3cCKgR3I6ZVVX
	flfO0bhjNaPAQT/UqeTmtk69NktXzvlBPuFGbCleIZ6rBxWLCXNxUa0e2P+oSWLaT+Zb4bV6lkFdU
	F+m8hlkweKd3+B5LG/aGtGXvOr4riET02H+Z7WPJ+yqgiRSIEd6LUFtJRz/HMgC2LJoVEKnjLCcgu
	6ipwygRkmXuAbQGBdysw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxjjl-006o8p-Fk; Mon, 28 Jun 2021 05:23:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxjgK-006naB-5n
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 05:19:43 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxjgG-0002N6-Pr; Mon, 28 Jun 2021 07:19:36 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxjgG-0002Vw-Gb; Mon, 28 Jun 2021 07:19:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Jun 2021 07:19:34 +0200
Message-Id: <20210628051934.9604-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210628051934.9604-1-a.fatoum@pengutronix.de>
References: <20210628051934.9604-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210627_221940_306206_0B022938 
X-CRM114-Status: GOOD (  16.42  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] console: respect baudrate specified in device-tree
 stdout-path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

stdout-path in the device tree can have a suffix indicating line
settings. The baud rate contained within was so far ignored by barebox.

Change this so barebox first consults the stdout-path alias before
falling back to CONFIG_BAUDRATE.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - don't override original baudrate if there's no :baudrate suffix
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
index 1a1265bdd689..4104d7589305 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2483,7 +2483,7 @@ void of_delete_node(struct device_node *node)
 		of_set_root_node(NULL);
 }
 
-struct device_node *of_get_stdoutpath(void)
+struct device_node *of_get_stdoutpath(unsigned int *baudrate)
 {
 	struct device_node *dn;
 	const char *name;
@@ -2505,15 +2505,24 @@ struct device_node *of_get_stdoutpath(void)
 
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
+	unsigned int tmp = *baudrate;
+
+	if (!dev || !dev->device_node || dev->device_node != of_get_stdoutpath(&tmp))
+		return false;
 
-	return dev->device_node == of_get_stdoutpath();
+	*baudrate = tmp;
+	return true;
 }
 
 /**
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index e3e8227b8c24..92b6caef5a2d 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -532,7 +532,7 @@ static int of_stdoutpath_init(void)
 {
 	struct device_node *np;
 
-	np = of_get_stdoutpath();
+	np = of_get_stdoutpath(NULL);
 	if (!np)
 		return 0;
 
diff --git a/include/of.h b/include/of.h
index a362ecfffb29..d82790c0523e 100644
--- a/include/of.h
+++ b/include/of.h
@@ -288,8 +288,8 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node);
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
@@ -326,12 +326,12 @@ static inline int of_partitions_register_fixup(struct cdev *cdev)
 	return -ENOSYS;
 }
 
-static inline struct device_node *of_get_stdoutpath(void)
+static inline struct device_node *of_get_stdoutpath(unsigned int *rate)
 {
 	return NULL;
 }
 
-static inline int of_device_is_stdout_path(struct device_d *dev)
+static inline int of_device_is_stdout_path(struct device_d *dev, unsigned int *baudrate)
 {
 	return 0;
 }
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

