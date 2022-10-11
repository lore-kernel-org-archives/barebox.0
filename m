Delivery-date: Tue, 11 Oct 2022 13:51:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oiDn3-004WKK-Lt
	for lore@lore.pengutronix.de; Tue, 11 Oct 2022 13:51:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oiDn1-0004lT-JX
	for lore@pengutronix.de; Tue, 11 Oct 2022 13:51:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vpJJbHHY9bF+zd3ZplNBUmqlRXr2h8+l0NjVSiDFh0w=; b=vOR0tpj1mLYJ57G+kdxOpsQifQ
	pWGraGtsqXdygE9poNByQBz/y7+4ii65ef4l8Po6JLGYoi+7lBdx8KX+LSwm3fqkU0+rtY2hJtL3D
	/pl++T0K63h5FcMubz8qm2nJj+nw7/91L9TiPrXZ1eHKq9V5XsbOMM5IoLaYIzIK6sApWvCp2ptJu
	l8u/FO7wTEBtgXsPafpB9T1KTTrduvtONzZrBHhCz7eD0O4OYmSnWpae/jmJzD+XeHg4Ebykp1Cp2
	qbKfTP+fc0N0Om1gt/sVBoJJbiyavDF55axJXFO+bgOpwepK1Oer4t9Ztho4OJ/Kf29rFrR4RBfaY
	BAJFqNxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiDlR-00491f-Ng; Tue, 11 Oct 2022 11:49:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiDlM-00490c-Sg
	for barebox@lists.infradead.org; Tue, 11 Oct 2022 11:49:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oiDlK-0004Og-A3; Tue, 11 Oct 2022 13:49:30 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oiDlJ-000sf3-K2; Tue, 11 Oct 2022 13:49:29 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oiDlI-002IFp-RO; Tue, 11 Oct 2022 13:49:28 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: bst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Oct 2022 13:49:27 +0200
Message-Id: <20221011114927.546670-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221011114927.546670-1-a.fatoum@pengutronix.de>
References: <20221011114927.546670-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_044932_988387_0B975747 
X-CRM114-Status: GOOD (  13.24  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 2/2] ARM: start: drop support for machine type casted to boarddata pointer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Commit 84d28cec7f49 ("ARM: add a machine number mechanism for boarddata")
added in 2015 added a struct barebox_arm_boarddata mechanism for PBL to
pass machine type to barebox proper without going the legacy router of
casting the machine type integer to a pointer directly.

The legacy way with casting was mostly broken two years ago with commit
390bc7834ffc ("ARM: start: check for machine type last").

Only user that complained about it was using an in-tree board that has
in the meantime been fixed to use struct barebox_arm_boarddata instead.

Take this as indication that the code is dead and can be safely removed.

This may introduce regressions for boards that happened to work, despite
their machine type integer being dereferenced as a pointer. If you
happen to have such a board, please pass a pointer to a
struct barebox_arm_boarddata instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v2 -> v3:
  - no change
v1 -> v2:
  - no change
---
 arch/arm/cpu/start.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 672f26e0063c..f9b617aa855a 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -189,18 +189,6 @@ __noreturn __no_sanitize_address void barebox_non_pbl_start(unsigned long membas
 		} else if (blob_is_arm_boarddata(boarddata)) {
 			totalsize = sizeof(struct barebox_arm_boarddata);
 			name = "machine type";
-		} else if ((unsigned long)boarddata < 8192) {
-			struct barebox_arm_boarddata *bd;
-			uint32_t machine_type = (unsigned long)boarddata;
-			unsigned long mem = arm_mem_boarddata(membase, endmem,
-							      sizeof(*bd));
-			pr_debug("found machine type %d in boarddata\n",
-				 machine_type);
-			bd = barebox_boarddata = (void *)mem;
-			barebox_boarddata_size = sizeof(*bd);
-			bd->magic = BAREBOX_ARM_BOARDDATA_MAGIC;
-			bd->machine = machine_type;
-			malloc_end = mem;
 		}
 
 		if (totalsize) {
-- 
2.30.2



