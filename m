Delivery-date: Sat, 30 Oct 2021 19:57:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgsc5-00016T-Cg
	for lore@lore.pengutronix.de; Sat, 30 Oct 2021 19:57:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgsc4-0001x4-JH
	for lore@pengutronix.de; Sat, 30 Oct 2021 19:57:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z3FEBntO3qLjF7ypGBejqTJLik784XGgSFTdTIewje8=; b=0CX6LgLZJG8Meh
	Hz8Sz3Ww09qT0fnhxBHV4og2jp28tdPKRc3t32iv34SSRZ0OgMS/Fm0sFzaAET0+gMBbihvo79xi8
	TrUoNNv+9MpVm1CVHNERgWy3iZQt6oezwtc2zY6DUbhq6smUYPn420hYAn7uA3dykxcnp5XdL1lMg
	ja3lz3Vz2Wbp7VuNvtVX7IP2/icn6ImM+eKiSNtaIGVFUq/+SEt0GKqUvEsOG8KecFqQpK7adt8dB
	pRfW1IRjDPTJVRbIkg7B5lmHbdv3bW97yGIRZYHPGkLUyk8wxqi0wu1NKr8kyu3B+JARuVR7Obqk4
	AUfpe9js49Qwjj9w8BNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgsav-00DMcT-BA; Sat, 30 Oct 2021 17:56:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgsap-00DMbF-Hu
 for barebox@lists.infradead.org; Sat, 30 Oct 2021 17:56:36 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mgsao-0001f9-BO; Sat, 30 Oct 2021 19:56:34 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mgsan-009Y8O-Rz; Sat, 30 Oct 2021 19:56:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 30 Oct 2021 19:56:29 +0200
Message-Id: <20211030175632.2276077-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211030_105635_613058_6C214CFF 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] drivers: caam: remove license text covered by
 SPDX-License-Identifier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There is already a SPDX-License-Identifier, so drop the boilerplate.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/crypto/caam/rng_self_test.h | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/crypto/caam/rng_self_test.h b/drivers/crypto/caam/rng_self_test.h
index 1f5bf32628bf..ba688f7e39c1 100644
--- a/drivers/crypto/caam/rng_self_test.h
+++ b/drivers/crypto/caam/rng_self_test.h
@@ -4,16 +4,6 @@
  * Copyright (C) 2018 Pengutronix, Roland Hieber <r.hieber@pengutronix.de>
  *
  * SPDX-License-Identifier: GPL-2.0-or-later
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * as published by the Free Software Foundation; either version 2
- * of the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #ifndef RNG_SELF_TEST_H
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

