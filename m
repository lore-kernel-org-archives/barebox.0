Delivery-date: Sat, 19 Mar 2022 12:04:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVWsu-00GfWD-44
	for lore@lore.pengutronix.de; Sat, 19 Mar 2022 12:04:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVWsu-0003UC-FF
	for lore@pengutronix.de; Sat, 19 Mar 2022 12:04:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=drAjRszdZ520q2NJeW9OBPWwSyqSANH2jIGgyZ5dQJQ=; b=ozJnge7yAFihTm
	n9x1vfBvx+5yQUAq6h83BucDJkXYg5p13p0VxmP01waFu667VGNmwXAF90yMJco0mmfChbMo3yEgd
	b189PcH4tu2bcWZdX8mg/Wb3HJN6Abs9lP940xm/9Ck1fXGFnvO5BxVZtAMCcABhutGJRwWwcoOJg
	/zNywelNd+AA/fBiPbZe9PfRZ9FmvYAvA3RgzjjVNHl907hOcO18jJ8FwErvaSuO2Iy5pDLjaE2Rv
	njCrzGVwIK7QizhZ/wkmICRFOg4eqPIyFlCZ+vksHyaVxcAXFh26j6GorsH6xkWaNTPiZp7/qlxbh
	PhdrRtmA9zbt0/llTHOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nVWrT-003bTG-Cd; Sat, 19 Mar 2022 11:03:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nVWrK-003bRf-PH
 for barebox@lists.infradead.org; Sat, 19 Mar 2022 11:03:00 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nVWrB-0003Co-Ht; Sat, 19 Mar 2022 12:02:49 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nVWr9-00Bxqr-9U; Sat, 19 Mar 2022 12:02:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 19 Mar 2022 12:02:41 +0100
Message-Id: <20220319110246.2850396-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220319110246.2850396-1-a.fatoum@pengutronix.de>
References: <20220319110246.2850396-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220319_040258_853871_0D0996FD 
X-CRM114-Status: GOOD (  12.96  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 1/6] usb: gadget: implement and use
 system_partitions_get_null
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

system_partitions_get() clones the system partitions file list and
returns the copy. usb multi gadget code expects disabled gadgets to
have a NULL file list, not an empty one, so fastboot and DFU handle
this case. Add a new system_partitions_get_null helper that can be
used instead. This will be used for USB mass storage gadget as well
in a follow-up commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/fastboot.c           | 4 +---
 common/usbgadget.c          | 4 +---
 include/system-partitions.h | 8 ++++++++
 3 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index 04a8573b4adb..f8ed40c86e00 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -920,9 +920,7 @@ struct file_list *get_fastboot_partitions(void)
 {
 	if (fastboot_partitions && *fastboot_partitions)
 		return file_list_parse_null(fastboot_partitions);
-	if (!system_partitions_empty())
-		return system_partitions_get();
-	return NULL;
+	return system_partitions_get_null();
 }
 
 static int fastboot_globalvars_init(void)
diff --git a/common/usbgadget.c b/common/usbgadget.c
index e8c9f7d236d3..92e486199556 100644
--- a/common/usbgadget.c
+++ b/common/usbgadget.c
@@ -27,9 +27,7 @@ static inline struct file_list *get_dfu_function(void)
 {
 	if (dfu_function && *dfu_function)
 		return file_list_parse_null(dfu_function);
-	if (!system_partitions_empty())
-		return system_partitions_get();
-	return NULL;
+	return system_partitions_get_null();
 }
 
 int usbgadget_register(const struct usbgadget_funcs *funcs)
diff --git a/include/system-partitions.h b/include/system-partitions.h
index 86de3612ccd8..e6d1a0f88bf3 100644
--- a/include/system-partitions.h
+++ b/include/system-partitions.h
@@ -2,6 +2,7 @@
 #ifndef SYSTEM_PARTITIONS_H_
 #define SYSTEM_PARTITIONS_H_
 
+#include <linux/types.h>
 #include <file-list.h>
 
 #ifdef CONFIG_SYSTEM_PARTITIONS
@@ -37,4 +38,11 @@ static inline bool system_partitions_empty(void)
 
 #endif
 
+static inline struct file_list *system_partitions_get_null(void)
+{
+	if (system_partitions_empty())
+		return NULL;
+	return system_partitions_get();
+}
+
 #endif
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

