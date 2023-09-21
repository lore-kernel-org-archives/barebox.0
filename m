Delivery-date: Thu, 21 Sep 2023 11:27:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjFxr-005ihz-MS
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 11:27:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjFxp-00053S-5N
	for lore@pengutronix.de; Thu, 21 Sep 2023 11:27:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UvFJXzj3e52ybbqzOFJJHEbqHRYA/On6TxMEH28w1FE=; b=kAABcjzsa7Nb/n/QU8DGHd2lnN
	kDZ6EZW2kRz/i3n27Os3UCH18bqtlFbm/quG432wnN461bs7me1nthkfmP5pb4o604CZ/qhCp4uOt
	b4rBUP1hug8XwcxLWWGGdh9ZQL3fdM1SSuuSEvb5bPSxc9rPuqPcY+NUSKNs1EwqBCjBhREL/G+WW
	pXnjRcAuxU9t5Qkje8e4wPWTjpA5LncSIKQx31BnE8YjI9n0eA1MoG/mfPsla1hEV3/GNJMPtmWdS
	LftxWv2kdZ284uOrMtaicxZx+DrrAuZdgfiTJsPQYHmuRPyhOCgkp3K1MIJWdytvHyzmBB78KXW8/
	jX73UYlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjFwh-005abN-2Z;
	Thu, 21 Sep 2023 09:26:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjFwe-005aZq-29
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 09:26:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qjFwV-0004iG-I1; Thu, 21 Sep 2023 11:25:51 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qjFwV-007tPi-5G; Thu, 21 Sep 2023 11:25:51 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qjFwV-00HO9B-0N;
	Thu, 21 Sep 2023 11:25:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 21 Sep 2023 11:25:39 +0200
Message-Id: <20230921092539.4142293-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230921092539.4142293-1-a.fatoum@pengutronix.de>
References: <20230921092539.4142293-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_022600_700681_15F094A3 
X-CRM114-Status: GOOD (  10.95  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] console: implement of_console_by_stdout_path helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Board code may want to get a handle on the standard console to disable
or enable some of its stream. Add a helper function for that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/console.c  | 17 +++++++++++++++++
 include/console.h |  1 +
 2 files changed, 18 insertions(+)

diff --git a/common/console.c b/common/console.c
index 768550eb7df9..7e43a9b5fc0e 100644
--- a/common/console.c
+++ b/common/console.c
@@ -254,6 +254,23 @@ static void console_set_stdoutpath(struct console_device *cdev, unsigned baudrat
 	free(str);
 }
 
+struct console_device *of_console_by_stdout_path(void)
+{
+	struct console_device *console;
+	struct device_node *stdout_np;
+
+	stdout_np = of_get_stdoutpath(NULL);
+	if (!stdout_np)
+		return NULL;
+
+	for_each_console(console) {
+		if (dev_of_node(console->dev) == stdout_np)
+			return console;
+	}
+
+	return NULL;
+}
+
 static int __console_puts(struct console_device *cdev, const char *s,
 			  size_t nbytes)
 {
diff --git a/include/console.h b/include/console.h
index d3b08722b01a..586b68f73301 100644
--- a/include/console.h
+++ b/include/console.h
@@ -109,6 +109,7 @@ unsigned console_get_active(struct console_device *cdev);
 int console_set_baudrate(struct console_device *cdev, unsigned baudrate);
 unsigned console_get_baudrate(struct console_device *cdev);
 
+struct console_device *of_console_by_stdout_path(void);
 
 /**
  * console_fifo_fill - fill FIFO with as much console data as possible
-- 
2.39.2



