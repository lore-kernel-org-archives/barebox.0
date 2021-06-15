Delivery-date: Tue, 15 Jun 2021 15:57:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lt9Z4-0008JQ-5v
	for lore@lore.pengutronix.de; Tue, 15 Jun 2021 15:57:14 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lt9Yz-0005cs-Qp
	for lore@pengutronix.de; Tue, 15 Jun 2021 15:57:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8CFDjhoCvubzsyhm+GFGVraXUnsfiT8/k38G8xk8yRU=; b=DZEhF02aOUAkMv
	AqVpNe1jXzN0SkHxFukY92dlZBTCZka4NVVIgbIb0/PN9YHjp3/hJwckv6aiz4hdnetMzm6Jayw40
	1zbvDYI+hOMMU9isd8Tb3wBJI9WXMjB/1IORD8G15r0u78tCIY8nHjq84HFcwwKfyusMALBv8fLRs
	l8C3UUofSCK5XCUpZGnZha+fs6mATLNNHOIm+gPEU/Q6SfvI3mK3YpjJ5faktz/AJ36VeKOYYy1YY
	McmDd9MimiH0n3s8s7SefEcWDOif0vr3PpwINB3knwJApTecuZQb+e6OhJhb5bswe5HqxFE6soWxx
	Xv+2zIh24aTa4JEY9O4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lt9R3-000J9I-2y; Tue, 15 Jun 2021 13:48:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9Fl-000DEY-9e
 for barebox@bombadil.infradead.org; Tue, 15 Jun 2021 13:37:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Type:Content-ID:Content-Description;
 bh=wvjH0QJdMC23y/OM/SNKH9LYSZ/0ypKlXjMxcWxU080=; b=i0Pgn8+thCT4NA4Rr3xlt9Zkzg
 chXrUkIl+bPRTdL5hCMtwZZ2wVn9n0FFltUK13Foco4XZBHLgUU2nQN64c3QPy+XpLEfnt0x6svI2
 VkoqVUzwK3Gnd5vzlm0Pr9mzZzpJJfrrotZhSrMDUmzbxF0vEWrgG1U9OguPCfT2a8au9LgZnL0dH
 1ngDPhn3WgAH/7J0Z58lOzHjulk1UgJGPRnyGA2QauHI+eYbRUg63ozn1Ndsc5UKB+KXT2jzoV4hd
 CtnVA5hYEbZShsM8JtWtPv/99iLOPPS7RBVi77AXPHs5ha4T4dG3T0Y5ifGsCTK+zNu5OB9di6RyS
 NbbeT7Wg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt7Bt-007lvw-61
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 11:25:20 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1lt7Bw-0003a1-MF
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 13:25:12 +0200
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1lt7Bw-0001BK-1o
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 13:25:12 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 15 Jun 2021 13:25:08 +0200
Message-Id: <20210615112508.5489-10-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210615112508.5489-1-s.trumtrar@pengutronix.de>
References: <20210615112508.5489-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_122516_070004_02F1D6F8 
X-CRM114-Status: GOOD (  15.12  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (deferred)
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,RDNS_NONE,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 10/10] firmware: add support for compressed images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

At least bitstreams for FPGAs can consist of a lot of zeros depending on
device utilization. These bitstreams can be compressed very effectively.

Let the firmware code accept these images and decompress them before
handing it to the firmware-manager in question.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>

---

v2->v3 - better error handling
       - fix free'ing and close'ing
       - remove O_CREAT for devicefd. Destination is always a device
         that shall be written with a firmware (FPGA etc). If it doesn't
         exist, creating it is useless.
---
 common/firmware.c | 52 +++++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 48 insertions(+), 4 deletions(-)

diff --git a/common/firmware.c b/common/firmware.c
index 58509d5da615..47defbd739ca 100644
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
+			printf("could not open %s: %s\n", firmwarefd,
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

