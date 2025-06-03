Delivery-date: Tue, 03 Jun 2025 11:26:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uMNuV-003GEc-1F
	for lore@lore.pengutronix.de;
	Tue, 03 Jun 2025 11:26:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uMNuU-0006aH-Pi
	for lore@pengutronix.de; Tue, 03 Jun 2025 11:26:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LBHvJC1almeXSyd015KH1XvozAXtJmzOylw0ZkF3Lpc=; b=YvF5EvA5eDfp1Hl8duEDl41poI
	HUM+8OU9gvPkF6N96eyKIyj19PADA6Sg2fVYw0lrJDl9Wb0iRpFkUmps2Zq7+7DqyRQ6nLUXAExKm
	m0N8jZ/iCV4oluCjlnfOyl96bEXWXs/FoHTxCuoETRqqejjZVnRThvdbjgdPqPrf3cV1MTkPhBIOY
	JZa9qxk0xm/MMfpC3nMmHpMhursXBdI24tEkB98p2NlK6Dp9RdsHsTSBOGL4ovls/6T4/j7iC416n
	GBN+NYPAgh75RaWow2520FkladvCqRspZjwj0wyiTmQO2gCDCUUJQmc3htEB60a2s1eguIUS3Zqci
	4Irl5HQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMNtu-0000000AVaF-0U6K;
	Tue, 03 Jun 2025 09:25:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMNpF-0000000AUEp-3WY2
	for barebox@lists.infradead.org;
	Tue, 03 Jun 2025 09:20:54 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1uMNpE-00038Q-K9; Tue, 03 Jun 2025 11:20:52 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	rouven.czerwinski@linaro.org,
	Fabian Pflug <f.pflug@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  3 Jun 2025 11:20:44 +0200
Message-Id: <20250603092044.1464440-2-f.pflug@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250603092044.1464440-1-f.pflug@pengutronix.de>
References: <20250603092044.1464440-1-f.pflug@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250603_022053_876431_D857EA28 
X-CRM114-Status: GOOD (  15.97  )
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
Subject: [PATCH 2/2] ARM: optee-early: invalidate caches before jump to OP-TEE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The optee-early code was initially added for i.MX6UL. Trying to naively
enable it on an i.MX6Q boards was observed to cause spurious hangs on
return from OP-TEE to barebox.

The root cause seems to be inadequate cache handling by OP-TEE: OP-TEE
enables the MMU and caches with it, but didn't take care to invalidate
all cache lines before enabling the MMU, which triggered the
aforementioned hangs.

To paper over this issue, let's just invalidate the cache lines on the
barebox side instead before jumping to OP-TEE. This issue did likely not
affect the original i.MX6UL, because its Cortex-A7 has an architected L2
cache that's guaranteed zeroed (no dirty cache lines) on power-on reset,
unlike the i.MX6Q's Cortex-A9, where the external L2 cache powers on
with unpredictable content including the dirty bits.

This means on e.g. the i.MX6UL, we will now do one extra cache invalidation
that's not needed. This should be negligible and we are already had an
unconditional invalidation in __barebox_arm_entry.

Note that this is a different implementation than what we do on ARM64,
there we load TF-A before it jumps to OP-TEE and assuming
non-architected caches or caches with uninitialized content on power-on
to be a dying breed, our ARM64 implementation is likely not affected.

Co-authored-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 arch/arm/lib32/optee-early.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/lib32/optee-early.c b/arch/arm/lib32/optee-early.c
index 0cda0ab163..b1dba67d42 100644
--- a/arch/arm/lib32/optee-early.c
+++ b/arch/arm/lib32/optee-early.c
@@ -35,6 +35,19 @@ int start_optee_early(void *fdt, void *tee)
 	/* We use setjmp/longjmp here because OP-TEE clobbers most registers */
 	ret = setjmp(tee_buf);
 	if (ret == 0) {
+		/*
+		 * At least OP-TEE v4.1.0 seems to not invalidate all dirty cache
+		 * lines before enabling the MMU. This can lead to spurious hangs
+		 * on return to barebox on systems where there might be left-over
+		 * dirty cache lines, whether from BootROM or because L2 cache
+		 * is non-architected and powers on with unpredictable content
+		 * like is the case with PL310 on i.MX6Q.
+		 *
+		 * Let's invalidate the caches here, so board entry points need
+		 * not bother.
+		 */
+		arm_early_mmu_cache_invalidate();
+
 		tee_start(0, 0, fdt);
 		longjmp(tee_buf, 1);
 	}
-- 
2.39.5



