Delivery-date: Mon, 22 Mar 2021 08:18:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOEpu-00039y-Vt
	for lore@lore.pengutronix.de; Mon, 22 Mar 2021 08:18:50 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOEpu-0000sE-14
	for lore@pengutronix.de; Mon, 22 Mar 2021 08:18:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RGi9ghotK5a/K9RxiTTv7JLtYS2eJ218W+vo41ojnaI=; b=TJ8wN0UeQ5nhhx50WctU0bnDgV
	DTmF1NaGNYSKXB2c3HFlb91NfytfI0X+lVa2nO7yEiDFdPpu6kDQPTJOHGC931Fj3DTqWmWOrZpJF
	69F9zuo2VzCu4WmeKoskqUdooKL0RwYazbpCveAIAmwuWA538J5BvJpUrMZxRJZJ6OLmnkxAWbdtM
	NEiDUr/5Hmzmr5hjF30texv4mAqMzo3GsiKVACcMs/VV0FGu5TKjBz6nGD60ku4hnypgMwtRruHWd
	FNAoyE6KHey3bIkY0PXag00hnQWSCfeSG47Yg5281/4liBtecR2temd0TLUmRGpVNvFqyx6ntS431
	7FILw7Ng==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOEop-00B4UY-69; Mon, 22 Mar 2021 07:17:43 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOEoh-00B4UD-CH
 for barebox@lists.infradead.org; Mon, 22 Mar 2021 07:17:37 +0000
Received: from geraet.fritz.box (unknown [83.135.84.27])
 (Authenticated sender: ahmad@a3f.at)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 246EF240007;
 Mon, 22 Mar 2021 07:17:32 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 22 Mar 2021 08:17:27 +0100
Message-Id: <20210322071727.3739277-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_071735_637892_3D424778 
X-CRM114-Status: UNSURE (   7.84  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! ARM64: board-dt-2nd: adopt kernel image header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

No functional change, but code is way simpler.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/cpu/board-dt-2nd-aarch64.S | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/arch/arm/cpu/board-dt-2nd-aarch64.S b/arch/arm/cpu/board-dt-2nd-aarch64.S
index d32b4066cae2..d2c9f132cef6 100644
--- a/arch/arm/cpu/board-dt-2nd-aarch64.S
+++ b/arch/arm/cpu/board-dt-2nd-aarch64.S
@@ -9,8 +9,7 @@
 
 .section .text_head_entry_start_dt_2nd
 ENTRY("start_dt_2nd")
-1:
-	adr x1, 1b		   /* code0 */
+	adr x1, 0	   	   /* code0 */
 	b 2f                       /* code1 */
 	.xword 0x80000             /* Image load offset */
 	.xword _barebox_image_size /* Effective Image size */
@@ -22,13 +21,9 @@ ENTRY("start_dt_2nd")
 	.int   0                   /* reserved (PE-COFF offset) */
 	.asciz "barebox"	   /* unused for now */
 2:
-	ldr x2, linkadr
-	subs x1, x1, x2		    /* get runtime image load offset */
 	mov sp, x1
 	/* Stack now grows into the 0x80000 image load offset specified
 	 * above. This is more than enough until FDT /memory is decoded.
 	 */
 	b dt_2nd_aarch64
-linkadr:
-.xword start_dt_2nd
 ENTRY_PROC_END(start_dt_2nd)
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

