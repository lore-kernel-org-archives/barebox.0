Delivery-date: Wed, 24 Mar 2021 09:28:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOysc-0006CQ-57
	for lore@lore.pengutronix.de; Wed, 24 Mar 2021 09:28:42 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOysb-0003MW-Cv
	for lore@pengutronix.de; Wed, 24 Mar 2021 09:28:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ddFwIJdWuTTcxbTpHYOhTO7H1goEwnT4zpm6b49ZTVU=; b=psS25+0gOYJpiBYFSnyzF2jVEo
	l3I89LnKM/gIh1bl/rgvybEnsfGBZ+gMP+8CxOY2pZMJmasHpNd4Ghi9tawchxyazubpxqSu05m4x
	0nSzJUFMRhanG9HxrXCXLwqCAXTqklgzSNKEXF+5povgmtSuPcRbX2bTdiwvZfbdWEoxSus89o7FY
	ZDy9EaXvlj5PGiv2z5T6yDVAumh7lTpqzUp5o0gAElqxb/dH3aODuNgudBJgNUiy+ZyhQo/eiZgcC
	EIannLbe3Yt+EfKrtNAi0CZ753LN3A0p02nhQzmFgVZZ3d6wIo2zJrThJ9d1iO2+A59Wny9/a1QWq
	a2APKulA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOyr5-00Gbmz-4w; Wed, 24 Mar 2021 08:27:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOynH-00GaAL-D0
 for barebox@lists.infradead.org; Wed, 24 Mar 2021 08:23:15 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lOynF-0002Fs-CX; Wed, 24 Mar 2021 09:23:09 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lOynF-00082u-3a; Wed, 24 Mar 2021 09:23:09 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 24 Mar 2021 09:23:02 +0100
Message-Id: <20210324082304.30858-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_082312_035443_5D84FCC1 
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 1/3] RISC-V: cpu: request stack memory region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Now that the stack base region is determined dynamically,
mem_malloc_resource can no longer reserve the stack space.
Do as ARM does and add a RISC-V specific initcall to reserve
the main thread's stack space.

Reported-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Fix for master as otherwise stack could be overwritten at runtime
---
 arch/riscv/cpu/core.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/riscv/cpu/core.c b/arch/riscv/cpu/core.c
index bdcd500ed748..982d378eddec 100644
--- a/arch/riscv/cpu/core.c
+++ b/arch/riscv/cpu/core.c
@@ -2,6 +2,9 @@
 /*
  * Copyright (C) 2012 Regents of the University of California
  * Copyright (C) 2017 SiFive
+ * Copyright (C) 2021 Ahmad Fatoum, Pengutronix
+ *
+ * Common RISC-V core initcalls.
  *
  * All RISC-V systems have a timer attached to every hart.  These timers can
  * either be read from the "time" and "timeh" CSRs, and can use the SBI to
@@ -14,8 +17,17 @@
 #include <of.h>
 #include <linux/clk.h>
 #include <linux/err.h>
+#include <memory.h>
+#include <asm-generic/memory_layout.h>
 #include <io.h>
 
+static int riscv_request_stack(void)
+{
+	extern unsigned long riscv_stack_top;
+	return PTR_ERR_OR_ZERO(request_sdram_region("stack", riscv_stack_top - STACK_SIZE, STACK_SIZE));
+}
+coredevice_initcall(riscv_request_stack);
+
 static struct device_d timer_dev;
 
 static int riscv_probe(struct device_d *parent)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

