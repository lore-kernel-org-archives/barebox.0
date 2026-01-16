Delivery-date: Fri, 16 Jan 2026 14:50:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgkDb-001ydX-0U
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 14:50:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgkDa-0000B9-5q
	for lore@pengutronix.de; Fri, 16 Jan 2026 14:50:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=R3saeX926xEnkKuvD1b0b1HukpP+Sd+4OiI5/qxlSK4=; b=JRMF2rHlksxet/bNF3En65cju/
	4WqKAXQ49QtmeSQJg325DZamoGR5zPQiHigsaUaRO4rtiAQS45AdnpttcdMxuYmiRdk0mE2TI/3sd
	4rhSob+vR4uR4ZLIGM8NZW/mXFBJbgZGydBgWAAvlpzRW4GJrtlIvdHneDg+gP567RWFm1dOQ749p
	7qYr9QYgWuFV/TKOVqw3mFeCJZAFSLHInMUg5fgUKmFYG8YRTsyqabvFy3lxce0K1DYOyjnbcbYxQ
	1q7Ul/bHMqqpCfs2M5z8oeyV6KmV1wETk3svax9caJNXw1/DIkBEKrfrIdiW8ug5Ier1GlXyTsYaS
	Wt8qmFyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgkD4-0000000ED7X-3AWm;
	Fri, 16 Jan 2026 13:49:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgkD2-0000000ED6f-2iKJ
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 13:49:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vgkCz-0008WN-DD; Fri, 16 Jan 2026 14:49:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vgkCz-000vYJ-2r;
	Fri, 16 Jan 2026 14:49:49 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vgkCz-0000000GUrF-3N1u;
	Fri, 16 Jan 2026 14:49:49 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Holger Assmann <h.assmann@pengutronix.de>,
	Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 16 Jan 2026 14:49:46 +0100
Message-ID: <20260116134948.3931720-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_054952_680643_51AEB1DC 
X-CRM114-Status: UNSURE (   9.50  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX8M: atf: add debug messages just before TF-A jump
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The handoff to TF-A has been a frequent source of hangs during board
bringup in the past for various reasons.
Add a debug print just before branching to TF-A and add a comment
explaining some possible issues to aid with future debugging.

Cc: Holger Assmann <h.assmann@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/atf.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 5a8a7a7fd541..773ebfad0be3 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -53,8 +53,23 @@ static __noreturn void imx8m_tfa_start_bl31(const void *tfa_bin, size_t tfa_size
 			pr_debug("CAAM early init successful\n");
 	}
 
+	pr_debug("Loading BL31 to %p ", tfa_bin);
+
 	memcpy(bl31, tfa_bin, tfa_size);
 
+	/*
+	 * If all works fine (and TF-A has debug output enabled), the next
+	 * serial output should start with:
+	 *
+	 *   NOTICE:  BL31:
+	 *
+	 * If not, set IMX_BOOT_UART_BASE=auto when building TF-A if supported,
+	 * check if DRAM configuration is correct and that the PMIC correctly
+	 * configured the DRAM rails. For very old TF-A versions, also compare
+	 * barebox tfa_dest against whatever value your TF-A hardcodes.
+	 */
+	pr_debug("and jumping with SP: %p\n", tfa_dest - 16);
+
 	asm volatile("msr sp_el2, %0" : :
 		     "r" (tfa_dest - 16) :
 		     "cc");
-- 
2.47.3



