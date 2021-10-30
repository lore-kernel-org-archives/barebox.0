Delivery-date: Sat, 30 Oct 2021 19:58:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgscP-00017j-ST
	for lore@lore.pengutronix.de; Sat, 30 Oct 2021 19:58:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgscL-0001zB-Oe
	for lore@pengutronix.de; Sat, 30 Oct 2021 19:58:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ry4A1pwNji4lwPTLmQS630w78FTYbIRRS7Emq5Psydc=; b=NnaUxQYx5Y+XKe
	kxBrr7rMkYksvuPfQxx0dEhby2fVAMrQBwehiTWK8zLRdxDf80PFL9V5rKmLKeVfcSaWbGIWtMZFE
	we3rH8c47lMKa8NNuQz2LIB2eGsUPa01iF6300SjjLpd+tFTYZyWR492QEsEtK/dcj16K974Se0Q0
	6QFfX0M04kL5etT+qbf/Snymt/XGxDREncmVwU62wr5dL76x3ek7PTwRO+Ytgj6tCGxm+KbzYENOJ
	d5MEMhDZ7AxypRKNtdGtcUVDjEFMAKFI0YQ+5WslOYiS46WrH+NAcjdIhKBSNyderx1WQhsA97Rez
	Pukk328TWFZj97N3zBfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgsaz-00DMdq-7m; Sat, 30 Oct 2021 17:56:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgsap-00DMbG-IP
 for barebox@lists.infradead.org; Sat, 30 Oct 2021 17:56:37 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mgsao-0001fA-By; Sat, 30 Oct 2021 19:56:34 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mgsan-009Y8Q-ST; Sat, 30 Oct 2021 19:56:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 30 Oct 2021 19:56:30 +0200
Message-Id: <20211030175632.2276077-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211030175632.2276077-1-a.fatoum@pengutronix.de>
References: <20211030175632.2276077-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211030_105635_630607_D1A655F9 
X-CRM114-Status: GOOD (  11.10  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_CSS,
	URIBL_CSS_A autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] hw_random: mxc-rngc: switch to SPDX-License-Identifier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The file contains two license statements, one about being GPLv2 and one
about being GPLv2 or later. Use GPL-2.0 as it observes both.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/hw_random/mxc-rngc.c | 16 +---------------
 1 file changed, 1 insertion(+), 15 deletions(-)

diff --git a/drivers/hw_random/mxc-rngc.c b/drivers/hw_random/mxc-rngc.c
index 075c20e43745..1d17f00f6715 100644
--- a/drivers/hw_random/mxc-rngc.c
+++ b/drivers/hw_random/mxc-rngc.c
@@ -1,19 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * RNG driver for Freescale RNGC
  *
  * Copyright (C) 2008-2012 Freescale Semiconductor, Inc.
- */
-
-/*
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
  *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
- */
-
-/*
  * Hardware driver for the Intel/AMD/VIA Random Number Generators (RNG)
  * (c) Copyright 2003 Red Hat Inc <jgarzik@redhat.com>
  *
@@ -27,10 +17,6 @@
  * Hardware driver for Intel i810 Random Number Generator (RNG)
  * Copyright 2000,2001 Jeff Garzik <jgarzik@pobox.com>
  * Copyright 2000,2001 Philipp Rumpf <prumpf@mandrakesoft.com>
- *
- * This file is licensed under  the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <common.h>
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

