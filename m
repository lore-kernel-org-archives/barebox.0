Delivery-date: Wed, 23 Jun 2021 06:35:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvuc3-00040D-Il
	for lore@lore.pengutronix.de; Wed, 23 Jun 2021 06:35:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvuc2-0002tM-BV
	for lore@pengutronix.de; Wed, 23 Jun 2021 06:35:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jAP6UvJh8THxvxsVEL7VTBKzUNDaa8wNHaEvXkgJxQU=; b=lkmyaXlPTe+mVi
	8DVpTlcsKQqUl4R4GyQN13s/j72GXIYNbB6BxWJmEg/H/yZXUZalm34eC4+Qw4mfKDN0m/7cq5mkB
	xCHE5ggUIYtDYsUlphi2HK/RQKWF9xO4b/LqNiLT89q8ALg8dTSVLeMkq5HV/GjrYMXJOu43rjEqL
	qj4Kf/rc2QzXB24dMNsVaVMBpa0sJTxu5oZxRvGVUHLqwtZYfBUmC4+Hj4gQiQAkNDC1bWVNSZFln
	XvHJmHEmplvRvJSwDKXYkT6B09YAOeXdaGrD2xMBn2zSpwLfCcaxfgv5+sjvzQ3/7PtWeQ5AnNNDE
	DdhYtts1FSxklXR8Fk5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvuaa-009Grv-Iw; Wed, 23 Jun 2021 04:34:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvuaR-009GpX-LL
 for barebox@lists.infradead.org; Wed, 23 Jun 2021 04:34:06 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvuaP-0002Zl-ID; Wed, 23 Jun 2021 06:34:01 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvuaP-0002AE-A4; Wed, 23 Jun 2021 06:34:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 23 Jun 2021 06:33:59 +0200
Message-Id: <20210623043359.18391-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210623043359.18391-1-s.hauer@pengutronix.de>
References: <20210623043359.18391-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_213403_784463_FE66A8C9 
X-CRM114-Status: GOOD (  15.18  )
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
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] firmware: add support for compressed images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

At least bitstreams for FPGAs can consist of a lot of zeros depending on
device utilization. These bitstreams can be compressed very effectively.

Let the firmware code accept these images and decompress them before
handing it to the firmware-manager in question.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Link: https://lore.barebox.org/20210616063246.14900-10-s.trumtrar@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/firmware.c | 50 +++++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 46 insertions(+), 4 deletions(-)

diff --git a/common/firmware.c b/common/firmware.c
index 58509d5da6..e4b5025ab1 100644
--- a/common/firmware.c
+++ b/common/firmware.c
@@ -14,6 +14,8 @@
 #include <linux/list.h>
 #include <linux/stat.h>
 #include <linux/err.h>
+#include <uncompress.h>
+#include <filetype.h>
 
 #define BUFSIZ 4096
 
@@ -211,12 +213,52 @@ out:
  */
 int firmwaremgr_load_file(struct firmware_mgr *mgr, const char *firmware)
 {
-	int ret;
-	char *name = basprintf("/dev/%s", mgr->handler->id);
+	char *dst;
+	enum filetype type;
+	int ret = 0;
+	int firmwarefd = 0;
+	int devicefd = 0;
+
+	if (!firmware)
+		return -EINVAL;
+
+	if (!mgr->handler->id) {
+		pr_err("id not defined for handler\n");
+		return -ENODEV;
+	}
+
+	dst = basprintf("/dev/%s", mgr->handler->id);
+
+	firmwarefd = open(firmware, O_RDONLY);
+	if (firmwarefd < 0) {
+		printf("could not open %s: %s\n", firmware,
+		       errno_str());
+		ret = firmwarefd;
+		goto out;
+	}
 
-	ret = copy_file(firmware, name, 0);
+	type = file_name_detect_type(firmware);
+
+	devicefd = open(dst, O_WRONLY);
+	if (devicefd < 0) {
+		printf("could not open %s: %s\n", dst, errno_str());
+		ret = devicefd;
+		goto out;
+	}
+
+	if (file_is_compressed_file(type))
+		ret = uncompress_fd_to_fd(firmwarefd, devicefd,
+					  uncompress_err_stdout);
+	else
+		ret = copy_fd(firmwarefd, devicefd);
+
+out:
+	free(dst);
 
-	free(name);
+	if (firmwarefd > 0)
+		close(firmwarefd);
+	if (devicefd > 0)
+		close(devicefd);
 
 	return ret;
 }
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

