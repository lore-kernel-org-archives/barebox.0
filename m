Delivery-date: Mon, 22 Nov 2021 09:52:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp54F-0003ZV-DY
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 09:52:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp54E-0001Z7-9V
	for lore@pengutronix.de; Mon, 22 Nov 2021 09:52:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YJcRskAB4MWaTQoITx151oZ413LvkKZ/YKLFJwSLbnA=; b=t7cwzmIm8dUtQ5
	WfUZI9qeCCW1Yb458lc03MuPBuW/fNbXTBC0suBDHK13+pCGIyk0nRDpk5foUlf4YoE6bn6GWwq7d
	XQC2w3hYXPw/JtUyEmgiLZm2nlgGJukxta41y6fE+Zo06xv9BqgZLZoQXlYruyKBaoIJEEPaDoUwG
	+H/fP12qr7EGW3HJt+7rLkAa+5Glmq8bO9tJSmkmZpAe8rDzox2AlLyCpLTKc6lj0PGBVnj7vy6As
	A0417+kDHYJeakf/ngCecENd+F5qki7zuQBqSjrCYX/gaP9ijAplvmeBFn40j19b/21fFxQq94qfK
	p4Md0XzHrLLbsXwFL2LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp52t-00FNDt-2A; Mon, 22 Nov 2021 08:51:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp4zK-00FL5I-Jl
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 08:47:48 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4zB-0007wL-0I; Mon, 22 Nov 2021 09:47:37 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4z9-00Atew-Et; Mon, 22 Nov 2021 09:47:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Nov 2021 09:47:12 +0100
Message-Id: <20211122084732.2597109-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_004746_718712_42052EBD 
X-CRM114-Status: GOOD (  11.80  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/30] efi: use SPDX-License-Identifier where appropriate
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Couple of files lack an explicit embedded license or cotnain
boilerplate. Replace with the appropriate SPDX-License-Identifier.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/efi/devicepath.c    |  2 ++
 common/efi/guid.c          |  2 ++
 common/efi/payload/image.c | 11 +----------
 common/efi/payload/init.c  | 11 +----------
 include/efi/debug_ll.h     |  1 +
 include/efi/efi-device.h   |  1 +
 include/efi/efi.h          |  1 +
 7 files changed, 9 insertions(+), 20 deletions(-)

diff --git a/common/efi/devicepath.c b/common/efi/devicepath.c
index f17b9294cc1b..6341ca005ba5 100644
--- a/common/efi/devicepath.c
+++ b/common/efi/devicepath.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <efi.h>
 #include <malloc.h>
diff --git a/common/efi/guid.c b/common/efi/guid.c
index fbe96ecd048c..f1a918f91e19 100644
--- a/common/efi/guid.c
+++ b/common/efi/guid.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <efi.h>
 
diff --git a/common/efi/payload/image.c b/common/efi/payload/image.c
index 3c55a457eae3..53b444eef60f 100644
--- a/common/efi/payload/image.c
+++ b/common/efi/payload/image.c
@@ -1,17 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * image.c - barebox EFI payload support
  *
  * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 
 #include <clock.h>
diff --git a/common/efi/payload/init.c b/common/efi/payload/init.c
index 88d0bfa939ec..0e672a6b56d2 100644
--- a/common/efi/payload/init.c
+++ b/common/efi/payload/init.c
@@ -1,17 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * init.c - barebox EFI payload support
  *
  * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 
 #include <linux/linkage.h>
diff --git a/include/efi/debug_ll.h b/include/efi/debug_ll.h
index 4ca72de312af..905f1c43cd23 100644
--- a/include/efi/debug_ll.h
+++ b/include/efi/debug_ll.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __MACH_DEBUG_LL_H__
 #define __MACH_DEBUG_LL_H__
 
diff --git a/include/efi/efi-device.h b/include/efi/efi-device.h
index 5ec59a8a2ddd..cd8a374c32fe 100644
--- a/include/efi/efi-device.h
+++ b/include/efi/efi-device.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __EFI_EFI_DEVICE_H
 #define __EFI_EFI_DEVICE_H
 
diff --git a/include/efi/efi.h b/include/efi/efi.h
index 648afb9ec5a7..c7679b4b8f28 100644
--- a/include/efi/efi.h
+++ b/include/efi/efi.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __MACH_EFI_H
 #define __MACH_EFI_H
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

