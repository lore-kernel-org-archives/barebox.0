Delivery-date: Wed, 16 Jun 2021 08:34:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltP8V-0000F2-5k
	for lore@lore.pengutronix.de; Wed, 16 Jun 2021 08:34:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltP8T-0000Er-4e
	for lore@pengutronix.de; Wed, 16 Jun 2021 08:34:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F1SuhNUSicO1Ug0RuenlAfBnqz0FdcmNcys78Rrr3zk=; b=WZ7vs792NVELSe
	qariGAngXYOt2XifHJ3e0h/CwwmXO56BavfQ3CO5etCM7+QCJT5Bc7fNJFVI38crwX3Q+ebSop3W8
	dAB4ikZLXstVP2vY9+Czx32wZI8TfynDd+CzyLCKClumHIxXNc4aW32E0AxvDhgupoiyc/6/Rie2N
	FV5OBULlv4PlJH4uYls/9b4WZoSzAx+R/c1/tdpbni9iXrWP7tdmtZxdS/9B8RkKg/vSt1PXt5AnF
	pB9rRa9SIMjyLtC6lPXq0gT/fbdQoRCoEK34NaG40LlSTzEbfjwOgclxp6HBYSHrdDOc3pLIsG8MD
	RfH1Nz1EfGqqaEmdwhBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltP6w-0055sU-Bm; Wed, 16 Jun 2021 06:33:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltP6m-0055o6-0n
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 06:33:05 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1ltP6i-0008Ih-94
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 08:33:00 +0200
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1ltP6h-00049y-MD
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 08:32:59 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 16 Jun 2021 08:32:46 +0200
Message-Id: <20210616063246.14900-10-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210616063246.14900-1-s.trumtrar@pengutronix.de>
References: <20210616063246.14900-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_233304_128720_486D5B60 
X-CRM114-Status: GOOD (  14.88  )
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
Subject: [PATCH v4 10/10] firmware: add support for compressed images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

At least bitstreams for FPGAs can consist of a lot of zeros depending on
device utilization. These bitstreams can be compressed very effectively.

Let the firmware code accept these images and decompress them before
handing it to the firmware-manager in question.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>

---

v3->v4: fix printf warning %s -> %d
v2->v3 - better error handling
       - fix free'ing and close'ing
       - remove O_CREAT for devicefd. Destination is always a device
         that shall be written with a firmware (FPGA etc). If it doesn't
         exist, creating it is useless.
---
 common/firmware.c | 52 +++++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 48 insertions(+), 4 deletions(-)

diff --git a/common/firmware.c b/common/firmware.c
index 58509d5da615..1d34090f0100 100644
--- a/common/firmware.c
+++ b/common/firmware.c
@@ -14,6 +14,8 @@
 #include <linux/list.h>
 #include <linux/stat.h>
 #include <linux/err.h>
+#include <uncompress.h>
+#include <filetype.h>
 
 #define BUFSIZ 4096
 
@@ -211,12 +213,54 @@ int firmwaremgr_register(struct firmware_handler *fh)
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
+	type = file_name_detect_type(firmware);
+
+	if (type == filetype_unknown) {
+		ret = copy_file(firmware, dst, 0);
+	} else {
+		firmwarefd = open(firmware, O_RDONLY);
+		if (firmwarefd < 0) {
+			printf("could not open %d: %s\n", firmwarefd,
+			       errno_str());
+			ret = firmwarefd;
+			goto out;
+		}
 
-	ret = copy_file(firmware, name, 0);
+		devicefd = open(dst, O_WRONLY);
+
+		if (devicefd < 0) {
+			printf("could not open %s: %s\n", dst, errno_str());
+			ret = devicefd;
+			goto out;
+		}
+
+		ret = uncompress_fd_to_fd(firmwarefd, devicefd,
+					  uncompress_err_stdout);
+	}
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

