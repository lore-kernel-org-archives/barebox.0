Delivery-date: Mon, 22 Nov 2021 09:54:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp55p-0003gK-H4
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 09:54:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp55o-00028s-6q
	for lore@pengutronix.de; Mon, 22 Nov 2021 09:54:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ur55q44t/2oMfh4sJuL0HHZUg/BlP+ZbQ78mhpQzoOA=; b=xKHiCbapIKDhJs
	aq+0FeusUgzCXy+EQPmgS8XUfpLZgCpJtbaU0zcKAtnACUXJmCa9DATBBDbE7Z+kBiq0YI/slQpFh
	rxf9R6Ym8aZW1Ukd3R1acvBPjREHLjJyQJQW5LbKFrqP8v0itZgHF9rbSfqYFqchhJ5Miso3m55eG
	8nsp6cQ368ukwkEdsfMEjgbdOFTIwIurM4mi4hwCFY+HVjmk4YqFo1BhskEt++y4Z+jGDq7iz9r4+
	RcPfWyuq/m+ADYFNP00nHrXjD+q6U8brwwgDlpH9oCGxCnhurkRxzRNr96ExXM2m30r5tsuG9mtl6
	ItoLSh72UDGibRjsZhbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp54P-00FOLW-Cs; Mon, 22 Nov 2021 08:53:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp4zK-00FL5T-Rv
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 08:47:51 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4zB-0007wr-Fr; Mon, 22 Nov 2021 09:47:37 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4z9-00Atfq-WC; Mon, 22 Nov 2021 09:47:36 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Nov 2021 09:47:30 +0100
Message-Id: <20211122084732.2597109-29-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_004747_118277_F31DA04B 
X-CRM114-Status: GOOD (  10.39  )
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
Subject: [PATCH 28/30] ARM64: board-dt-2nd: remove no longer needed noinline
 function split
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

dt_2nd_aarch64 is called with stack already set up, so no need to split
the entry point into a stackless and stackful part.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/board-dt-2nd.c | 21 ++++++++-------------
 1 file changed, 8 insertions(+), 13 deletions(-)

diff --git a/arch/arm/cpu/board-dt-2nd.c b/arch/arm/cpu/board-dt-2nd.c
index 6f6f53591844..0731aecd1a51 100644
--- a/arch/arm/cpu/board-dt-2nd.c
+++ b/arch/arm/cpu/board-dt-2nd.c
@@ -12,29 +12,24 @@
 
 #ifdef CONFIG_CPU_V8
 
-static noinline void dt_2nd_continue_aarch64(void *fdt)
-{
-	unsigned long membase, memsize;
-
-	if (!fdt)
-		hang();
-
-	fdt_find_mem(fdt, &membase, &memsize);
-
-	barebox_arm_entry(membase, memsize, fdt);
-}
-
 /* called from assembly */
 void dt_2nd_aarch64(void *fdt);
 
 void dt_2nd_aarch64(void *fdt)
 {
+	unsigned long membase, memsize;
+
 	/* entry point already set up stack */
 
 	relocate_to_current_adr();
 	setup_c();
 
-	dt_2nd_continue_aarch64(fdt);
+	if (!fdt)
+		hang();
+
+	fdt_find_mem(fdt, &membase, &memsize);
+
+	barebox_arm_entry(membase, memsize, fdt);
 }
 
 #else
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

