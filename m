Delivery-date: Mon, 19 Feb 2024 09:32:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbz4b-00E48J-19
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 09:32:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbz4X-0003Sk-Fv
	for lore@pengutronix.de; Mon, 19 Feb 2024 09:32:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FA2yngjrote0cCp2Q97+5wgCtx/JUFqi9KONJ0YJpaM=; b=Na6HOHmA3wabXelfgz0eiGsDwr
	IgiJ0YCyFI6LebpvH+YzDX6N34TDpb3JnAQdlbmYAsy9/VTIk1YrMXzuRAXsVLqmRehN489qx3JDO
	6c45kxdjVD0tiPttvESLPw1C5dBjNCv3ecxRVw3ePhHlSWeTaWFPVA3RZaYtuQMUNWoib2RdbmNGt
	bn2Y0LwA5eBTqkR6AY4pRXA3Fm0brVL/WrDLQseFEtyQy66A/AGUpbPSJxYIqfQKoiAkAUCPr6lvo
	uSTh3Jvv7nJQvUYpxGWzeZrQJX3+wwyw+2QxwbmcdasFJnZrTKc0+EtgsDqQ2TauRF+E/lK0bG3l+
	DRCj+kYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbz45-00000009afG-0SFe;
	Mon, 19 Feb 2024 08:31:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbz3v-00000009aZP-3hcU
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 08:31:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3u-00031J-Mt; Mon, 19 Feb 2024 09:31:42 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3u-001bl7-8F; Mon, 19 Feb 2024 09:31:42 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3u-00CNCk-0T;
	Mon, 19 Feb 2024 09:31:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 19 Feb 2024 09:31:36 +0100
Message-Id: <20240219083140.2713047-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219083140.2713047-1-s.hauer@pengutronix.de>
References: <20240219083140.2713047-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_003144_026958_11591AF9 
X-CRM114-Status: GOOD (  11.06  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 08/12] partitions: move parser.h to include/partitions.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This will be needed by upcoming partition manipulation code, so move it
to include/

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions.c                                | 3 +--
 common/partitions/dos.c                            | 3 +--
 common/partitions/efi.c                            | 2 +-
 common/partitions/parser.h => include/partitions.h | 0
 4 files changed, 3 insertions(+), 5 deletions(-)
 rename common/partitions/parser.h => include/partitions.h (100%)

diff --git a/common/partitions.c b/common/partitions.c
index 0d8c2849ab..abbe31ed11 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -15,8 +15,7 @@
 #include <disks.h>
 #include <filetype.h>
 #include <linux/err.h>
-
-#include "partitions/parser.h"
+#include <partitions.h>
 
 static LIST_HEAD(partition_parser_list);
 
diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index 7ca3c4e37e..e5ff59f71a 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -17,8 +17,7 @@
 #include <init.h>
 #include <asm/unaligned.h>
 #include <linux/err.h>
-
-#include "parser.h"
+#include <partitions.h>
 
 
 enum {
diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 84d55e6491..407c1a4d08 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -20,7 +20,7 @@
 #include <linux/ctype.h>
 
 #include <efi/partition.h>
-#include "parser.h"
+#include <partitions.h>
 
 struct efi_partition_desc {
 	struct partition_desc pd; /* must be first */
diff --git a/common/partitions/parser.h b/include/partitions.h
similarity index 100%
rename from common/partitions/parser.h
rename to include/partitions.h
-- 
2.39.2



