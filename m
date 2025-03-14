Delivery-date: Fri, 14 Mar 2025 16:17:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt6mr-00E3TP-0Q
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 16:17:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt6mp-0003cm-V6
	for lore@pengutronix.de; Fri, 14 Mar 2025 16:17:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VbUDxiuG54bFxPFHg8riN9wz+DQKRm6e748gIlcwZEc=; b=yCIntukybZTKDrt55AvR0N4ro/
	F/n9JRTT+TsMn6SH2h60rDcOSarQpGcLlKLQh4vFXabL7x9VVtfaM8nKSWFdide45nodHJrHIBS9k
	1iWD6JB62SVDkrhAP86vcE49za74yoBpeJdBD+aABI8ncAoOsgZbWimQe2EoKNOZ4hSeMGO/Wizvv
	4W6z9xsZnLn61NmH2KYIeSCg3MLQGFM+ceIIJA3KMSDxTeLXBLJUb59CPxTLbi8M24kkET8zhxnmc
	bpAJja0V+DXurb4SdcYUKmtlKdhFGmoTV0ivINGOcTbg3PGUeyEpKTvhWxHPOp96GcpBWNWMKFJul
	OdiOHM/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt6mQ-0000000EWsH-0XBu;
	Fri, 14 Mar 2025 15:16:58 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt6kK-0000000EWQz-3w6A
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 15:14:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1741965287;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=VbUDxiuG54bFxPFHg8riN9wz+DQKRm6e748gIlcwZEc=;
	b=nsqWGrM6rls5OyWa+6nXIj65qt+YU1ZxWW4u3E2HZc6kGG4OdbOEXfn/pQxxzJRnr0kXmo
	f55PlbtYJZ3WGpCHY2iMOrvUbQTidV9bdnzRpt137JCFr/vlmgLVMjlS5FjQMm/6iZnQdW
	XNQf+FKaVjRGsxmL4MVs2lISsxBYvpUc3lDzpXmgAMhAn316lTM165wWGCSHYJIRrFclHh
	fD+71Z83mGKAmhMC9bPZATkGbC0DzLx9cqRGRfNU1BIfmQk9e2Nl3I7myxSz6hnOhwP2CU
	Z/10t8CsE8qBGgWkozRoMDP55Y7Dunc7JTAezKuFp7PavZEGNmo9AV85PMCgyw==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:4866:44ad:6a94:b4e])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 938c90af (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Fri, 14 Mar 2025 16:14:47 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Fri, 14 Mar 2025 16:14:40 +0100
Message-ID: <20250314151441.23223-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_081449_274402_5327AD1D 
X-CRM114-Status: UNSURE (   6.44  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] sandbox: sdl: fix compilation on musl-libc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

fails to compile with "unknown type name 'loff_t'; did you mean 'off_t'"
error, add missing include and also define _GNU_SOURCE

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 arch/sandbox/os/sdl.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/sandbox/os/sdl.c b/arch/sandbox/os/sdl.c
index 87c8265ea9..0c31b6ce87 100644
--- a/arch/sandbox/os/sdl.c
+++ b/arch/sandbox/os/sdl.c
@@ -3,8 +3,11 @@
  * Copyright (c) 2021 Ahmad Fatoum
  */
 
+#define _GNU_SOURCE
 #include <stdio.h>
 #include <stdbool.h>
+#include <stdint.h>
+#include <fcntl.h>
 #include <SDL.h>
 #include <mach/linux.h>
 
-- 
2.48.1



