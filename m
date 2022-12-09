Delivery-date: Fri, 09 Dec 2022 08:18:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3Xdz-00FmbE-RE
	for lore@lore.pengutronix.de; Fri, 09 Dec 2022 08:18:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3Xdz-000724-6A
	for lore@pengutronix.de; Fri, 09 Dec 2022 08:18:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=B5wZ9eOxFMUE25GsIZ0wnymZTIZ5MltnG7GZGqV3Fcc=; b=cky7AkE+ryS1yhgFeabKPiMj0r
	6VzRKxQ6XRVIJSf4bz4cql/waSckRXq/dWkRADKctJzYpx6xRVSUtKM3pJdNRTMJv5uD6rjfiMzHQ
	7khtLiNsaNKIhqdKTZd3wu5hFnORisBuYtz2UZgMVW54QHadrZl04m5x/lfTVISKzUV/51rKpD4o4
	Fh8s5tpuL0C6PhGTxXDUaJynQTCO+5tSLM4MW640vG4SsAqXWUj+iK9qxT5GFR9V7c7UGI91paj4m
	dLdxUwBqsNUo1CWq2pN0VZogdOi3Bu51cq7Gs+G/Ae2izsV/InhWUf53pLPX0pa4Ny7XYzYvqBjSX
	2x+IhfoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3Xcq-004vEs-Mf; Fri, 09 Dec 2022 07:16:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3Xcl-004vDc-RH
	for barebox@lists.infradead.org; Fri, 09 Dec 2022 07:16:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p3Xck-0006pe-He; Fri, 09 Dec 2022 08:16:46 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p3Xcj-003JNO-5K; Fri, 09 Dec 2022 08:16:45 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p3Xci-00Fo9u-Lx; Fri, 09 Dec 2022 08:16:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  9 Dec 2022 08:16:44 +0100
Message-Id: <20221209071644.3767682-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221208_231647_895351_112B45E5 
X-CRM114-Status: GOOD (  10.15  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] include: soc: switch to SPDX-License-Identifier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Two files in include/soc miss an SPDX-License-Identifier. Add them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/soc/at91/atmel-sfr.h | 5 +----
 include/soc/bcm283x/wdt.h    | 1 +
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/include/soc/at91/atmel-sfr.h b/include/soc/at91/atmel-sfr.h
index 482337af06b8..7418c5cab4a1 100644
--- a/include/soc/at91/atmel-sfr.h
+++ b/include/soc/at91/atmel-sfr.h
@@ -1,13 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Atmel SFR (Special Function Registers) register offsets and bit definitions.
  *
  * Copyright (C) 2016 Atmel
  *
  * Author: Ludovic Desroches <ludovic.desroches@atmel.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
  */
 
 #ifndef _LINUX_MFD_SYSCON_ATMEL_SFR_H
diff --git a/include/soc/bcm283x/wdt.h b/include/soc/bcm283x/wdt.h
index ce97b1eb5d10..2002647b9c39 100644
--- a/include/soc/bcm283x/wdt.h
+++ b/include/soc/bcm283x/wdt.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright (C) 2017 Pengutronix, Lucas Stach <l.stach@pengutronix.de>
  *
-- 
2.30.2



