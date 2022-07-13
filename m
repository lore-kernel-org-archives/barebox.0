Delivery-date: Wed, 13 Jul 2022 12:10:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBZKd-005vrR-0d
	for lore@lore.pengutronix.de; Wed, 13 Jul 2022 12:10:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBZKa-0002hv-Ug
	for lore@pengutronix.de; Wed, 13 Jul 2022 12:10:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0SIjOz/96KujZPUrtu+mGzv/rJIzDQGDOS4Y32O3oIU=; b=jPmdBBXVK0G/3srp4RjyEtSChG
	TcS/ooDfsZ/BnHGlO78S6i1e4R+ju5+/vzfhRkwUznPgXvLch0cSSqmpKleH3pKigpjrGHFR+AIyb
	zhEFM0hkLKB+GMzUQnwuhd1KMhJjTwzEErIUQt9nCzzldLzpqoebqxO5OkRZYYXi187MCnF8V+O9W
	AUBulODL8kUsAhHrDRCJjmPLZrXOyHWbwDhc1jk2Q3aoO89jU2QPUwzmTKw4tJ70RjNMRR48Ung1p
	SKCvWbiUV+Becf1CQGW+iFCW+IUVOa2DcTTPe6XBx3Whi4N0h36bsHo2fHpcf3Bai929FzYg5NRd5
	sP9U08ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBZJE-002aC9-F0; Wed, 13 Jul 2022 10:09:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBZJ8-002a7B-Rs
	for barebox@lists.infradead.org; Wed, 13 Jul 2022 10:09:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oBZJ7-0002GO-Ks; Wed, 13 Jul 2022 12:09:25 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oBZJ6-000gVn-SN; Wed, 13 Jul 2022 12:09:24 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oBZJ5-008ChP-SJ; Wed, 13 Jul 2022 12:09:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Jul 2022 12:09:18 +0200
Message-Id: <20220713100922.1880282-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220713100922.1880282-1-a.fatoum@pengutronix.de>
References: <20220713100922.1880282-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220713_030926_921198_18F83016 
X-CRM114-Status: GOOD (  10.09  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/5] lib: zstd: adopt Linux directory structure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In preparation for syncing with Linux, adopt Linux' current directory
layout to reduce the diff.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/zstd/Makefile                          | 20 ++++++++++++++++----
 lib/zstd/{ => common}/entropy_common.c     |  0
 lib/zstd/{ => common}/fse_decompress.c     |  0
 lib/zstd/{ => common}/zstd_common.c        |  0
 lib/zstd/{ => decompress}/huf_decompress.c |  0
 5 files changed, 16 insertions(+), 4 deletions(-)
 rename lib/zstd/{ => common}/entropy_common.c (100%)
 rename lib/zstd/{ => common}/fse_decompress.c (100%)
 rename lib/zstd/{ => common}/zstd_common.c (100%)
 rename lib/zstd/{ => decompress}/huf_decompress.c (100%)

diff --git a/lib/zstd/Makefile b/lib/zstd/Makefile
index 4e8689a4855d..099c26c378f8 100644
--- a/lib/zstd/Makefile
+++ b/lib/zstd/Makefile
@@ -1,8 +1,20 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
+# SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause
+# ################################################################
+# Copyright (c) Facebook, Inc.
+# All rights reserved.
+#
+# This source code is licensed under both the BSD-style license (found in the
+# LICENSE file in the root directory of this source tree) and the GPLv2 (found
+# in the COPYING file in the root directory of this source tree).
+# You may select, at your option, one of the above-listed licenses.
+# ################################################################
 obj-$(CONFIG_ZSTD_DECOMPRESS) += zstd_decompress.o
 
 ccflags-y += -O3
 
-zstd_decompress-y := huf_decompress.o decompress.o
-zstd_decompress-y += entropy_common.o fse_decompress.o zstd_common.o
+zstd_decompress-y := \
+		decompress.o \
+		common/entropy_common.o \
+		common/fse_decompress.o \
+		common/zstd_common.o \
+		decompress/huf_decompress.o
diff --git a/lib/zstd/entropy_common.c b/lib/zstd/common/entropy_common.c
similarity index 100%
rename from lib/zstd/entropy_common.c
rename to lib/zstd/common/entropy_common.c
diff --git a/lib/zstd/fse_decompress.c b/lib/zstd/common/fse_decompress.c
similarity index 100%
rename from lib/zstd/fse_decompress.c
rename to lib/zstd/common/fse_decompress.c
diff --git a/lib/zstd/zstd_common.c b/lib/zstd/common/zstd_common.c
similarity index 100%
rename from lib/zstd/zstd_common.c
rename to lib/zstd/common/zstd_common.c
diff --git a/lib/zstd/huf_decompress.c b/lib/zstd/decompress/huf_decompress.c
similarity index 100%
rename from lib/zstd/huf_decompress.c
rename to lib/zstd/decompress/huf_decompress.c
-- 
2.30.2



