Delivery-date: Thu, 09 Nov 2023 13:27:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r147k-004BIQ-2L
	for lore@lore.pengutronix.de;
	Thu, 09 Nov 2023 13:27:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r147k-0003Pj-NN
	for lore@pengutronix.de; Thu, 09 Nov 2023 13:27:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZSBLai7+oGOxFfsyNluhModgADyX7BouBCL5QGojgdM=; b=rYYBAarIu2oGTuKItmm2ZUPAZx
	VSoreJqQbelFpaQuI20B6Svn4AW7uSPOHLtgja1vNA06wnN/vmwKW5zKSQkww89P8jvd05KA/IUyW
	FJ+b5PcDjPjLtoYkpuGpDr3xuo75+LuV2lgjDvkzyhX5PJsZVMZZrtT+A1h+y5SYP1T7Fz6GQa90l
	BO/rw2YCiWU5rrszPTaADkks4L/BxZLSTAhuABLvLTIIx/dC8NDVjawrXt8GK8xt2WucIaEDjnClc
	25IY3BSZ76XtF/w/ScnoJ6rGcxuxS7z2J0GnxfhHO9hZyefFa9+2qN8qeS4MqwvL/73x5hqnX4Nsf
	uU36VxRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r146g-006JM2-2C;
	Thu, 09 Nov 2023 12:25:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r146d-006JKl-0Y
	for barebox@lists.infradead.org;
	Thu, 09 Nov 2023 12:25:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r146b-00034f-CG; Thu, 09 Nov 2023 13:25:53 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r146a-007m8c-W6; Thu, 09 Nov 2023 13:25:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r146a-006EaX-2u;
	Thu, 09 Nov 2023 13:25:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Nov 2023 13:25:51 +0100
Message-Id: <20231109122551.1486020-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231109122551.1486020-1-a.fatoum@pengutronix.de>
References: <20231109122551.1486020-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_042555_207385_089EB4F1 
X-CRM114-Status: GOOD (  13.46  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 3/3] commands: drvinfo: support filtering by driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

drvinfo can be very long especially for the in-tree defconfigs.

Make it more convenient to use by add optional filtering support:

  barebox@board:/ drvinfo '*imx7d*'
  Driver  Device(s)
  --------------------
  imx7d-src
          30390000.reset-controller@30390000.of
  imx7d_adc
          30610000.adc@30610000.of
          30620000.adc@30620000.of

  Use 'devinfo DEVICE' for more information

Furthermore, tab completion for driver names is now supported as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - use fnmatch to support glob patterns for driver names (Sascha)
  - add functional autocomplete despite spaces (Sascha)

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/drvinfo.c |  8 ++++++++
 common/complete.c  | 15 +++++++++++++++
 include/complete.h |  1 +
 3 files changed, 24 insertions(+)

diff --git a/commands/drvinfo.c b/commands/drvinfo.c
index b984b9472585..e13b04870ee4 100644
--- a/commands/drvinfo.c
+++ b/commands/drvinfo.c
@@ -5,15 +5,21 @@
 #include <common.h>
 #include <command.h>
 #include <driver.h>
+#include <complete.h>
+#include <fnmatch.h>
 
 static int do_drvinfo(int argc, char *argv[])
 {
+	char *pattern = argv[1];
 	struct driver *drv;
 	struct device *dev;
 
 	printf("Driver\tDevice(s)\n");
 	printf("--------------------\n");
 	for_each_driver(drv) {
+		if (pattern && fnmatch(pattern, drv->name, 0))
+			continue;
+
 		printf("%s\n",drv->name);
 		for_each_device(dev) {
 			if (dev->driver == drv)
@@ -31,5 +37,7 @@ static int do_drvinfo(int argc, char *argv[])
 BAREBOX_CMD_START(drvinfo)
 	.cmd		= do_drvinfo,
 	BAREBOX_CMD_DESC("list compiled-in device drivers")
+	BAREBOX_CMD_OPTS("[DRIVER]")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
+	BAREBOX_CMD_COMPLETE(driver_complete)
 BAREBOX_CMD_END
diff --git a/common/complete.c b/common/complete.c
index ef31a36faf5f..3911535621b1 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -186,6 +186,21 @@ static int device_param_complete(struct device *dev, const char *devname,
 	return 0;
 }
 
+int driver_complete(struct string_list *sl, char *instr)
+{
+	struct driver_d *drv;
+
+	for_each_driver(drv) {
+		if (!strstarts_escaped(drv->name, instr))
+			continue;
+
+		string_list_add_asprintf(sl, "%s ", drv->name);
+	}
+
+	return COMPLETE_CONTINUE;
+}
+EXPORT_SYMBOL(driver_complete);
+
 int empty_complete(struct string_list *sl, char *instr)
 {
 	return COMPLETE_END;
diff --git a/include/complete.h b/include/complete.h
index b0e675b5599f..2068760ac235 100644
--- a/include/complete.h
+++ b/include/complete.h
@@ -14,6 +14,7 @@ void complete_reset(void);
 
 int command_complete(struct string_list *sl, char *instr);
 int device_complete(struct string_list *sl, char *instr);
+int driver_complete(struct string_list *sl, char *instr);
 int empty_complete(struct string_list *sl, char *instr);
 int eth_complete(struct string_list *sl, char *instr);
 int command_var_complete(struct string_list *sl, char *instr);
-- 
2.39.2



