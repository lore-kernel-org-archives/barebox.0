Delivery-date: Wed, 02 Jul 2025 14:02:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWwAs-00DHu6-0v
	for lore@lore.pengutronix.de;
	Wed, 02 Jul 2025 14:02:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWwAr-0003vm-GN
	for lore@pengutronix.de; Wed, 02 Jul 2025 14:02:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=i1sCJLCV5lTYqV71K6LrXW5HQ2HBjS+F0J3XZtifVy0=; b=PjO/uxH4DQ1GqGkHDpQ8SI6jDx
	eWDJmblPh9BCYAZxSbDAVOhzHDTnDPUzCTXypISL6x63U9nDTnv0Au4np9ITOV0w7NianIJtSBxCi
	zg212TVsYANX2XXrwzv5zSizNmIekXdTmD2GEm40TCf2HJIB74xjyB2+mqsYmQ1L1H2dqEg3krYkF
	hjWo/Dt2vuo8CQ8XHOvBnyXLVflXjUarWb/7fVz5gjRAnjM3bZc7IxT+Kd3kIbMoQ7mji9HKz0sQG
	dRlph2OBfAxy4gHwtXhGBDHzwZBfvIiUa3JbN1rhuol2Hcun6W8JzLLV6MIzJrGndnIstwBxI8h1J
	CiM7bRLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWwAI-00000008EJ9-0kGt;
	Wed, 02 Jul 2025 12:02:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWvBe-000000082qi-1MJu
	for barebox@lists.infradead.org;
	Wed, 02 Jul 2025 10:59:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWvBc-0003St-S1; Wed, 02 Jul 2025 12:59:32 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWvBc-006QGL-2D;
	Wed, 02 Jul 2025 12:59:32 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWvBc-009MbZ-0G;
	Wed, 02 Jul 2025 12:59:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Jul 2025 12:59:31 +0200
Message-Id: <20250702105931.2231832-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250702_035934_361379_DE3C1BD0 
X-CRM114-Status: GOOD (  14.19  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] kbuild: don't define _GNU_SOURCE if already defined
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When built with PTXdist, compilation of some files like
scripts/kconfig/lxdialog/yesno.c ends up with multiple differing definitions
for _GNU_SOURCE:

  gcc [...] -std=gnu11 -D_GNU_SOURCE="" -D_GNU_SOURCE   -I/usr/include/ncursesw

This leads to ugly warnings when running ptxdist menuconfig.

This is due to a hardcoded `echo -D_GNU_SOURCE > ${cflags}` we fall back
to in mconf-cfg.sh, when there is no pkg-config file for ncurses, which
seems to be the case for PTXdist.

Fix the warnings by defining _GNU_SOURCE only if it's not already
defined.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile                  | 2 +-
 scripts/include/defines.h | 6 ++++++
 2 files changed, 7 insertions(+), 1 deletion(-)
 create mode 100644 scripts/include/defines.h

diff --git a/Makefile b/Makefile
index d9bfaa8cce1b..59531a326d81 100644
--- a/Makefile
+++ b/Makefile
@@ -406,7 +406,7 @@ endif
 
 KBUILD_USERHOSTCFLAGS := -Wall -Wmissing-prototypes -Wstrict-prototypes \
 			      -O2 -fomit-frame-pointer -std=gnu11 \
-			      -D_GNU_SOURCE=""
+			      -include $(srctree)/scripts/include/defines.h
 KBUILD_USERCFLAGS  := $(KBUILD_USERHOSTCFLAGS) $(USERCFLAGS)
 KBUILD_USERLDFLAGS := $(USERLDFLAGS)
 
diff --git a/scripts/include/defines.h b/scripts/include/defines.h
new file mode 100644
index 000000000000..dd28765f9e7d
--- /dev/null
+++ b/scripts/include/defines.h
@@ -0,0 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/* This file is autoincluded for all user programs */
+
+#ifndef _GNU_SOURCE
+#define _GNU_SOURCE
+#endif
-- 
2.39.5



