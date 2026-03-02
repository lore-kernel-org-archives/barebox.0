Delivery-date: Mon, 02 Mar 2026 14:49:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vx3eL-007IpD-29
	for lore@lore.pengutronix.de;
	Mon, 02 Mar 2026 14:49:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vx3eL-0007L9-Vx
	for lore@pengutronix.de; Mon, 02 Mar 2026 14:49:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pwYjQNA1HCSfc2Gobld1lNijp29VufQPW3vFp8Y55Z8=; b=WFNBED4LfgzBIRScbKHyX/CwXS
	7tOo5CAH5jMfuR588HAqHHdU0iq2495ocuW1S1zp+EwLPHp+57R7JoEiwVe9bdg484HQtX2MWPAAh
	XmJT2QtKjSfz8jLEF2wpSUs8J0iTVed+2SMrJhq3irWW28GLyE6PpkMeG7gZ4YRwZViMqARy+oltT
	t8xhlkT68xYEP1gY5+0UA4yuA2CGpKl6ZFj19wkvNjOS7geVUocLtxPfeJk/A6jXxBP1TFJo7mFhw
	w4+kiAj3yY1OzdqxeM1i4zaQE14fOlsEp7wSP09rGpPalcHvvcn3uLCz4V6G9Wson/kQ9oW7t4icw
	o59FJJ7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx3dn-0000000D9k7-3Fdt;
	Mon, 02 Mar 2026 13:48:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx3dk-0000000D9hm-1iV0
	for barebox@lists.infradead.org;
	Mon, 02 Mar 2026 13:48:54 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vx3dh-00073f-E9; Mon, 02 Mar 2026 14:48:49 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: "Claude Opus 4.6" <noreply@anthropic.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  2 Mar 2026 14:47:36 +0100
Message-ID: <20260302134843.195007-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260302134843.195007-1-a.fatoum@barebox.org>
References: <20260302134843.195007-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_054852_445904_79D6BD8A 
X-CRM114-Status: UNSURE (   8.37  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] test: selftest: mmu: skip mirroring tests when not supported
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

PowerPC e500 uses large CAM-style TLB entries that can't do arbitrary
virtual-to-physical remapping. When arch_remap_range returns -ENOSYS
for the mirroring case, skip the 6 mirroring subtests instead of
counting them as failures.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 test/self/mmu.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/test/self/mmu.c b/test/self/mmu.c
index f5a09d76131e..1dd42db7e9c1 100644
--- a/test/self/mmu.c
+++ b/test/self/mmu.c
@@ -107,6 +107,10 @@ static void test_remap(void)
 	expect_success(ret, "asserting no mirror before remap");
 
 	ret = arch_remap_range(mirror, buffer_phys, TEST_BUFFER_SIZE, MAP_UNCACHED);
+	if (ret == -ENOSYS) {
+		skipped_tests += 6;
+		goto skip_mirroring;
+	}
 	expect_success(ret, "remapping with mirroring");
 
 	for (i = 0; i < TEST_BUFFER_SIZE; i += sizeof(u32)) {
@@ -150,6 +154,8 @@ static void test_remap(void)
 
 	expect_success(ret, "asserting mirroring after remap (virt += 4K)");
 
+skip_mirroring:
+
 	ret = remap_range(buffer, TEST_BUFFER_SIZE, MAP_DEFAULT);
 	expect_success(ret, "remapping buffer with default attrs");
 	memtest(buffer, TEST_BUFFER_SIZE, "newly cached buffer");
-- 
2.47.3



