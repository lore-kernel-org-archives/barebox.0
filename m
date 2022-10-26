Delivery-date: Wed, 26 Oct 2022 08:43:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ona8e-002gvb-F0
	for lore@lore.pengutronix.de; Wed, 26 Oct 2022 08:43:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ona8d-0000MF-71
	for lore@pengutronix.de; Wed, 26 Oct 2022 08:43:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ilYT+ksC0JWmmBLNteKgqQxs9JJTYkxBq8lwgHzDbps=; b=NmSLkx5h6Jvj4tsJq+1nbrQro8
	XDrnra7iOtEi7Nap2zFcvopC82P32zueh5LX/gpg/6bNZZAL7pmANkA1w7FoMx50HebmCo9p1VZ09
	prxYs5a3ytn3BLvGiCRXGJ9d+Lsru+lMQXLDw80PCCHunTABF1VaoCPRPBXCiK+/9oi1nqWSVaM8G
	fPvjtjWa2sONMW0eA2dlhtAtTG7IaxcFSo8QlHgWZ/rJuFPMkXpvhHoJ+0YbbetlzWVYXpMoEUnNa
	pUrXj51uV+zjCZkmV+P3Ro0XxrjSJewsv/sbipJuNOGnOcsuD9Aosu/94YyblpzG99KFCXaQXapPK
	9TYv9wGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ona7O-008IMY-Nv; Wed, 26 Oct 2022 06:42:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ona76-008IFt-QG
	for barebox@lists.infradead.org; Wed, 26 Oct 2022 06:42:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ona75-0008WK-JG; Wed, 26 Oct 2022 08:42:07 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ona75-000SHl-RK; Wed, 26 Oct 2022 08:42:06 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ona73-009tyf-Oj; Wed, 26 Oct 2022 08:42:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Oct 2022 08:42:04 +0200
Message-Id: <20221026064205.2360041-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221026064205.2360041-1-a.fatoum@pengutronix.de>
References: <20221026064205.2360041-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221025_234208_867006_2807B011 
X-CRM114-Status: GOOD (  13.13  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/6] commands: drvinfo: support filtering by driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

drvinfo can be very long especially for the in-tree defconfigs,
add optional filtering support:

  barebox@board:/ drvinfo imx7d
  Driver  Device(s)
  --------------------
  imx7d-src
          30390000.reset-controller@30390000.of
  imx7d_adc
          30610000.adc@30610000.of
          30620000.adc@30620000.of

  Use 'devinfo DEVICE' for more information

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/drvinfo.c | 13 +++++++++++++
 common/complete.c  | 21 +++++++++++++++++++++
 include/complete.h |  1 +
 3 files changed, 35 insertions(+)

diff --git a/commands/drvinfo.c b/commands/drvinfo.c
index 9f8f971ee9dd..27ff55f01d90 100644
--- a/commands/drvinfo.c
+++ b/commands/drvinfo.c
@@ -5,15 +5,23 @@
 #include <common.h>
 #include <command.h>
 #include <driver.h>
+#include <complete.h>
 
 static int do_drvinfo(int argc, char *argv[])
 {
+	char *filter = NULL;
 	struct driver_d *drv;
 	struct device_d *dev;
 
+	if (IS_ENABLED(CONFIG_AUTO_COMPLETE) && argc > 1)
+		filter = strjoin(" ", &argv[1], argc - 1);
+
 	printf("Driver\tDevice(s)\n");
 	printf("--------------------\n");
 	for_each_driver(drv) {
+		if (filter && !str_has_prefix(drv->name, filter))
+			continue;
+
 		printf("%s\n",drv->name);
 		for_each_device(dev) {
 			if (dev->driver == drv)
@@ -24,6 +32,7 @@ static int do_drvinfo(int argc, char *argv[])
 	if (IS_ENABLED(CONFIG_CMD_DEVINFO))
 		printf("\nUse 'devinfo DEVICE' for more information\n");
 
+	free(filter);
 	return 0;
 }
 
@@ -31,5 +40,9 @@ static int do_drvinfo(int argc, char *argv[])
 BAREBOX_CMD_START(drvinfo)
 	.cmd		= do_drvinfo,
 	BAREBOX_CMD_DESC("list compiled-in device drivers")
+#ifdef CONFIG_AUTO_COMPLETE
+	BAREBOX_CMD_OPTS("[DRIVER]")
+#endif
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
+	BAREBOX_CMD_COMPLETE(driver_complete)
 BAREBOX_CMD_END
diff --git a/common/complete.c b/common/complete.c
index ab3c98549314..916d13d776ce 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -174,6 +174,27 @@ static int device_param_complete(struct device_d *dev, struct string_list *sl,
 	return 0;
 }
 
+int driver_complete(struct string_list *sl, char *instr)
+{
+	struct driver_d *drv;
+	int len;
+
+	if (!instr)
+		instr = "";
+
+	len = strlen(instr);
+
+	for_each_driver(drv) {
+		if (strncmp(instr, drv->name, len))
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
2.30.2



