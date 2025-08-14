Delivery-date: Thu, 14 Aug 2025 22:23:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umeUF-000cbU-1e
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 22:23:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umeUE-0000Qd-Cs
	for lore@pengutronix.de; Thu, 14 Aug 2025 22:23:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gGYcqGCUGOiJv9s0SFC7qEfpqwBrF5ARj1z7P5r1BbU=; b=i24FDdlpzkpGiJan0sBqhBUQqJ
	ETNRnPhWpwcnpyTAv+1bjG/zZyGZcsWMADC2wRfhlerGz9MQaQr4maKCnbRLklyfxFx3MeFRRoaJA
	HDcMqeaBF3wOFbiwlcGu0QlSjgpfaIQ6yVXzQh2jhNP3XFjERUmONfYgBJh9EcaM1anbdqsCkguLf
	BJeAJ9l+4j2o20FE4MpVoUyo+5mUJRU5GOAWFqNJeoTKF0fRBbdc+cHl9HmBdSzhdL4oALW9N3dyQ
	cLfm2dV1hh1pdAuo4i5fexgqfEUNjDD9t00i6p63QKiGkgJOcHnd8g9qUe4Hs4s0hYYs7fKFm55Bk
	dDr5FgJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umeTV-00000000UpH-1ceW;
	Thu, 14 Aug 2025 20:23:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umeTT-00000000Uoi-08TO
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 20:23:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1umeTP-0000GP-K9; Thu, 14 Aug 2025 22:22:55 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 14 Aug 2025 22:22:54 +0200
Message-Id: <20250814202254.344010-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250814202254.344010-1-a.fatoum@barebox.org>
References: <20250814202254.344010-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_132259_069111_E7B0AB4C 
X-CRM114-Status: UNSURE (   7.47  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/2] RISC-V: stacktrace: add missing header for eprintf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

eprintf is defined in stdio.h, which was not included.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/riscv/lib/stacktrace.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/lib/stacktrace.c b/arch/riscv/lib/stacktrace.c
index 7cf102a06fe0..30daec7caad2 100644
--- a/arch/riscv/lib/stacktrace.c
+++ b/arch/riscv/lib/stacktrace.c
@@ -9,6 +9,7 @@
 
 #include <linux/kernel.h>
 #include <printf.h>
+#include <stdio.h>
 #include <asm/unwind.h>
 #include <asm/ptrace.h>
 #include <asm-generic/memory_layout.h>
-- 
2.39.5



