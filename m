Delivery-date: Mon, 05 Jun 2023 08:30:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63k1-00BRwP-QI
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 08:30:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63jz-0002iq-6w
	for lore@pengutronix.de; Mon, 05 Jun 2023 08:30:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DUl2+G4OIK2/kiGNeSVVgoDZle2ygw6/KX60OxtvlVM=; b=hqOSXkwuNJM6vPfnf8g5YobJsK
	WTHkRnNLHosZRzBbZ8VPtxinaR2xQGcKCAK8j1eizp/Fil5F4Y4r5xVoVpbocoIw5X8V+SsAicoEK
	WZvSL6KNAKACVSu0KezMMMm5re1Hfmu3rLipAtvAIlVRYUbPaDPJLHS6wQC+t5ZayoVSR+dO5vECD
	NkWlPQVo60D0SvYR6EMnnFI4133j0rs2VuV0taPpPE4Bj4pqGSTtTL6IHxk8EMjRQHZG07dVkgnNT
	oVwHbFFnYLfx3URKiHgIkJDTGOIdy+Or41rdQD1pYn6NkppzfDIzmY1bsBeL7dpQRUvdKJWl4Y01R
	RrrkexsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q63iy-00ELlF-2A;
	Mon, 05 Jun 2023 06:29:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q63iq-00ELf8-0h
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 06:29:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q63ip-000257-0B; Mon, 05 Jun 2023 08:29:43 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63io-005Cpr-DJ; Mon, 05 Jun 2023 08:29:42 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63im-001Bx6-PE; Mon, 05 Jun 2023 08:29:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Jun 2023 08:29:35 +0200
Message-Id: <20230605062939.242063-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230605062939.242063-1-a.fatoum@pengutronix.de>
References: <20230605062939.242063-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_232944_252794_ABEB09F7 
X-CRM114-Status: GOOD (  10.82  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 3/7] net: fec_mpc5200: fix false positive -Wmisleading-indentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

After the preprocessor runs, the code in question looks like this:
SDMA_INT_DISABLE

	while ((counter--) && (!(fec->eth->ievent & FEC_IEVENT_GRA)));
	{
	     struct mpc5xxx_sdma *sdma = (struct mpc5xxx_sdma *)MPC5XXX_SDMA;
	     sdma->IntMask |= (1 << tasknum);
	}

Which understandably looks like a bug. Avoid this by using do { } while
(0) and moving the semicolon to a separate line.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/powerpc/mach-mpc5xxx/include/mach/sdma.h | 25 ++++++++-----------
 drivers/net/fec_mpc5200.c                     |  3 ++-
 2 files changed, 12 insertions(+), 16 deletions(-)

diff --git a/arch/powerpc/mach-mpc5xxx/include/mach/sdma.h b/arch/powerpc/mach-mpc5xxx/include/mach/sdma.h
index 02f561675a03..176ed3e892e2 100644
--- a/arch/powerpc/mach-mpc5xxx/include/mach/sdma.h
+++ b/arch/powerpc/mach-mpc5xxx/include/mach/sdma.h
@@ -49,40 +49,35 @@ ALL PARAMETERS ARE ALL LONGWORDS (FOUR BYTES EACH).
 /*---------------------------------------------------------------------*/
 
 /* Disable SmartDMA task */
-#define SDMA_TASK_DISABLE(tasknum)                     \
-{                                                      \
+#define SDMA_TASK_DISABLE(tasknum) do { \
     volatile ushort *tcr = (ushort *)(MPC5XXX_SDMA + 0x0000001c + 2 * tasknum); \
     *tcr = (*tcr) & (~0x8000);                         \
-}
+} while (0)
 
 /* Enable SmartDMA task */
-#define SDMA_TASK_ENABLE(tasknum)                      \
-{                                                      \
+#define SDMA_TASK_ENABLE(tasknum) do { \
     volatile ushort *tcr = (ushort *) (MPC5XXX_SDMA + 0x0000001c + 2 * tasknum); \
     *tcr = (*tcr)  | 0x8000;                           \
-}
+} while (0)
 
 /* Enable interrupt */
-#define SDMA_INT_ENABLE(tasknum)                       \
-{                                                      \
+#define SDMA_INT_ENABLE(tasknum) do { \
     struct mpc5xxx_sdma *sdma = (struct mpc5xxx_sdma *)MPC5XXX_SDMA; \
     sdma->IntMask &= ~(1 << tasknum);                  \
-}
+} while (0)
 
 /* Disable interrupt */
-#define SDMA_INT_DISABLE(tasknum)   \
-{                                                      \
+#define SDMA_INT_DISABLE(tasknum) do { \
     struct mpc5xxx_sdma *sdma = (struct mpc5xxx_sdma *)MPC5XXX_SDMA; \
     sdma->IntMask |= (1 << tasknum);                   \
-}
+} while (0)
 
 
 /* Clear interrupt pending bits */
-#define SDMA_CLEAR_IEVENT(tasknum)  \
-{                                                      \
+#define SDMA_CLEAR_IEVENT(tasknum) do { \
     struct mpc5xxx_sdma *sdma = (struct mpc5xxx_sdma *)MPC5XXX_SDMA; \
     sdma->IntPend = (1 << tasknum);                    \
-}
+} while (0)
 
 /* get interrupt pending bit of a task */
 #define SDMA_GET_PENDINGBIT(tasknum)                   \
diff --git a/drivers/net/fec_mpc5200.c b/drivers/net/fec_mpc5200.c
index 53b5a861aeb8..9c9b795f140c 100644
--- a/drivers/net/fec_mpc5200.c
+++ b/drivers/net/fec_mpc5200.c
@@ -420,7 +420,8 @@ static void mpc5xxx_fec_halt(struct eth_device *dev)
 	/*
 	 * wait for graceful stop to register
 	 */
-	while ((counter--) && (!(fec->eth->ievent & FEC_IEVENT_GRA))) ;
+	while ((counter--) && (!(fec->eth->ievent & FEC_IEVENT_GRA)))
+		;
 
 	/*
 	 * Disable SmartDMA tasks
-- 
2.39.2



