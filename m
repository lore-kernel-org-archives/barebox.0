Delivery-date: Thu, 22 Sep 2022 09:29:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1obGeP-00C07w-Ov
	for lore@lore.pengutronix.de; Thu, 22 Sep 2022 09:29:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1obGeO-0002Rv-2c
	for lore@pengutronix.de; Thu, 22 Sep 2022 09:29:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OgkAexuxPlNPscYidkkRQH8S+Dg/faT4MAaaf6Yb4Es=; b=HXJNC6Hq32U6OZ7npbjM/p7zxD
	kWk/Wm5YiOMoOcZYKbwbmvTggffan9KwGtVDtR3KD5ROMTGDBcPgamXiLynTasCTIQVa1vrI2J4Qz
	jHenIkyMsxYSGdL2uyPqwcRmdDa/blAI6/jkDj9SwYDqH5th3l2BQghZbjfYY5wmAVAaeUv8/eyTT
	/fWU6lF2Vy88kBEpX4Nqlzs11GOPN9mhTQsvAFvZJU8bhwgXvR1TfWc1/FpNmpnintPpgzcNF/a01
	40wMqK8fO+D80etmKiGpX/rvFRNb7ntW6f/2uOt/MluGNxDw9Nj8VgaR2B4hX1Wch0ZE8m8LS0iJ+
	KOxp8f9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obGce-00DpoW-G1; Thu, 22 Sep 2022 07:27:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obGcZ-00DplU-AN
	for barebox@lists.infradead.org; Thu, 22 Sep 2022 07:27:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jzi@pengutronix.de>)
	id 1obGcR-0002G9-1T; Thu, 22 Sep 2022 09:27:35 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1obGcR-002D5r-Q0; Thu, 22 Sep 2022 09:27:34 +0200
Received: from jzi by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1obGcP-006Xi7-G1; Thu, 22 Sep 2022 09:27:33 +0200
From: Johannes Zink <j.zink@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Johannes Zink <j.zink@pengutronix.de>
Date: Thu, 22 Sep 2022 09:27:23 +0200
Message-Id: <20220922072723.1559333-1-j.zink@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_002743_394976_2CC64EAB 
X-CRM114-Status: GOOD (  17.46  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] USB: gadget: fastboot: introduce optional flag for fastboot partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On some boards, some partitions exposed to fastboot may become
unavailable under certain circumstances, e.g. if an SD-Card exposed to
fastboot is removed.

Previously, this lead to an error and the fastboot gadget did not
initialize the remaining partitions exposed via fastboot, e.g. an
eMMC which usually is permanently soldered on the board.

This patch allows to append an optional flag 'o' to the description of a
fastboot partition. If this partition is unavailable at the
initialization of the fastboot gadget, said partition is skipped, while
the remaining available partitions are still exposed.

Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
---
 Documentation/user/usb.rst | 1 +
 common/fastboot.c          | 6 +++++-
 common/file-list.c         | 3 +++
 include/file-list.h        | 1 +
 4 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
index 2479efe9d6..f2f57ead98 100644
--- a/Documentation/user/usb.rst
+++ b/Documentation/user/usb.rst
@@ -65,6 +65,7 @@ Several **flags** are supported, each denoted by a single character:
 * ``r`` Readback. The partition is allowed to be read back (DFU specific)
 * ``c`` The file shall be created if it doesn't exist. Needed when a regular file is exported.
 * ``u`` The partition is a MTD device and shall be flashed with a UBI image.
+* ``o`` The partition is optional, i.e. if it is not available at initialization time, it is skipped instead of aborting the initialization
 
 Example:
 
diff --git a/common/fastboot.c b/common/fastboot.c
index 330a06f5a3..6bd1191325 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -177,7 +177,11 @@ int fastboot_generic_init(struct fastboot *fb, bool export_bbu)
 	file_list_for_each_entry(fb->files, fentry) {
 		ret = fastboot_add_partition_variables(fb, fentry);
 		if (ret)
-			return ret;
+			if((fentry->flags & FILE_LIST_FLAG_OPTIONAL))
+				pr_info("failed to add optional partition %s to fastboot gadget\n",
+					fentry->filename);
+			else
+				return ret;
 	}
 
 	return 0;
diff --git a/common/file-list.c b/common/file-list.c
index 407b312833..68a7768696 100644
--- a/common/file-list.c
+++ b/common/file-list.c
@@ -88,6 +88,9 @@ static int file_list_parse_one(struct file_list *files, const char *partstr, con
 			case 'u':
 				flags |= FILE_LIST_FLAG_UBI;
 				break;
+			case 'o':
+				flags |= FILE_LIST_FLAG_OPTIONAL;
+				break;
 			default:
 				pr_err("Unknown flag '%c'\n", *partstr);
 				return -EINVAL;
diff --git a/include/file-list.h b/include/file-list.h
index 5090313739..bcb06979c8 100644
--- a/include/file-list.h
+++ b/include/file-list.h
@@ -8,6 +8,7 @@
 #define FILE_LIST_FLAG_READBACK	(1 << 1)
 #define FILE_LIST_FLAG_CREATE	(1 << 2)
 #define FILE_LIST_FLAG_UBI	(1 << 3)
+#define FILE_LIST_FLAG_OPTIONAL (1 << 4)
 
 struct file_list_entry {
 	char *name;
-- 
2.30.2



