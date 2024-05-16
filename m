Delivery-date: Thu, 16 May 2024 09:09:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7VEm-00GuS8-2q
	for lore@lore.pengutronix.de;
	Thu, 16 May 2024 09:09:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7VEl-0006T3-KS
	for lore@pengutronix.de; Thu, 16 May 2024 09:09:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mA6wwmM72S/iJXptyH8DGn6t+T4EHWPjLVhjdsAoXoc=; b=zaJHgmTfbIFB488qhqBWrEXccv
	/UzrzVPvDlWF7JQ752khPmdwZn9egRtgFEbZHiavYaZyAGfN+FuUVKTpPV+xHOpP9D5zor7zAAiEi
	zPJAOmsD8eLMSNwVWgxQkp/FF3D/eYe1SLNYSCX6iHTlKMAB0z3S7rZ5uxuaAEEIunekbMMaQnOto
	KbIHB4RdKeIvtJssvToyWFqPx3P88XYl6Zu4Wj5PozwTYo3HmoIyJ1HzBs+JFW5/Ky2ihEvC6Or0h
	Jq0phuppPhkl2wktWKS6gcCLFOJ95VrYBZcYnhUfQIfBc4ZXqk6al19veloS9q10i300EeRyeHgcm
	QeZrkXZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7VEE-00000003wRD-2VkX;
	Thu, 16 May 2024 07:08:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7VE4-00000003wLh-0hlH
	for barebox@lists.infradead.org;
	Thu, 16 May 2024 07:08:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7VE0-00062F-30; Thu, 16 May 2024 09:08:24 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7VDz-001fTA-MK; Thu, 16 May 2024 09:08:23 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7VDz-00BWfZ-1s;
	Thu, 16 May 2024 09:08:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 16 May 2024 09:08:20 +0200
Message-Id: <20240516070822.2746845-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240516070822.2746845-1-s.hauer@pengutronix.de>
References: <20240516070822.2746845-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_000828_418910_1AD6A75C 
X-CRM114-Status: GOOD (  11.73  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/7] commands: devlookup: use cdev_open_by_name()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

cdev_by_name() returns a cdev without increasing its reference count. In
order to maintain a proper reference counting use cdev_open_by_name()
instead and make sure it's closed afterwards when no longer needed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/devlookup.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/commands/devlookup.c b/commands/devlookup.c
index ffd6afbaba..bc9bd94614 100644
--- a/commands/devlookup.c
+++ b/commands/devlookup.c
@@ -25,7 +25,7 @@ static int do_devlookup(int argc, char *argv[])
 {
 	const char *variable = NULL, *devicefile, *paramname;
 	struct cdev *cdev;
-	int opt;
+	int opt, ret;
 
 	while ((opt = getopt(argc, argv, "v:")) > 0) {
 		switch(opt) {
@@ -43,7 +43,7 @@ static int do_devlookup(int argc, char *argv[])
 
 	devicefile = devpath_to_name(devicefile);
 
-	cdev = cdev_by_name(devicefile);
+	cdev = cdev_open_by_name(devicefile, O_RDONLY);
 	if (!cdev) {
 		printf("devlookup: cdev %s not found\n", devicefile);
 		return -ENOENT;
@@ -51,13 +51,18 @@ static int do_devlookup(int argc, char *argv[])
 
 	if (!cdev->dev) {
 		printf("devlookup: cdev %s not associated with a device\n", devicefile);
-		return -ENODEV;
+		ret = -ENODEV;
+		goto out;
 	}
 
 	if (paramname)
-		return report(variable, dev_get_param(cdev->dev, paramname));
+		ret = report(variable, dev_get_param(cdev->dev, paramname));
+	else
+		ret = report(variable, dev_name(cdev->dev));
+out:
+	cdev_close(cdev);
 
-	return report(variable, dev_name(cdev->dev));
+	return ret;
 }
 
 BAREBOX_CMD_HELP_START(devlookup)
-- 
2.39.2



