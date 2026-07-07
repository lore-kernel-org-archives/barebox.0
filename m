Delivery-date: Tue, 07 Jul 2026 10:08:24 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wh0qt-001990-2n
	for lore@lore.pengutronix.de;
	Tue, 07 Jul 2026 10:08:23 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AE3CE201D1C
	for <lore@pengutronix.de>; Tue, 07 Jul 2026 10:08:23 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=RF3uYHHg;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4PUU4ELYNaeu/35D9sEemfYa3DBlH1kXMMu7/ZpxKyk=; b=RF3uYHHgrdBGexxSfZ634xkiiY
	12ag4kTo64ilga+C7KnGR6qTfbT4vQULEVgQXx+rMMgpXKscc0PtY0Ybju6w07uAuUa3L0Hz6TaS4
	obcNwuIwqdUBRbE51Lji/1qgFbOzvPs62Jmccl/XG9wHFyRNwjjQBto1KvN3XKkPiDfNfU4j15YUu
	Pvl+A93jz0QdMGxKIPxdLA2Q6UHUmbCt31zGD88ghBJi838nmofGzBgUFPvXS0xBGUe53ZDjZxoSq
	kfiZ47W09SdPyooKSi4l/y38d7wNdahi6sPh7szK/g/ChpIj/JR6B3rGZZ5DxJZ/lIIN46z0x3Kro
	aivaV1Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh0pq-0000000EPsb-2hnm;
	Tue, 07 Jul 2026 08:07:18 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh0pi-0000000EPoD-0uqC
	for barebox@lists.infradead.org;
	Tue, 07 Jul 2026 08:07:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 4E265202597;
	Tue, 07 Jul 2026 10:07:08 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wh0pg-000XYg-0f;
	Tue, 07 Jul 2026 10:07:08 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wh0pg-00000005Cmo-0PwV;
	Tue, 07 Jul 2026 10:07:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 2/3] ARM: v7r: factor out armv7r_cache_enable
Date: Tue,  7 Jul 2026 10:05:28 +0200
Message-ID: <20260707080707.997606-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260707080707.997606-1-a.fatoum@pengutronix.de>
References: <20260707080707.997606-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_010710_409403_BC5B0B35 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  We enable caches early on ARMv7-R to speed up decompression.
    On ARMv7-A, we need to enable the MMU as well, but for ARMv7-R enabling the
    MPU is not necessary and so the code is a one-liner. That one line will become
    two in a subsequent commit, so prepare for that by moving it into an appropriately
    named helper function. 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-5.21 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: AE3CE201D1C
X-Stat-Signature: nkon94djtd6sy8owzr7k3og5d58nrs3z

We enable caches early on ARMv7-R to speed up decompression.
On ARMv7-A, we need to enable the MMU as well, but for ARMv7-R enabling
the MPU is not necessary and so the code is a one-liner.

That one line will become two in a subsequent commit, so prepare for
that by moving it into an appropriately named helper function.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/armv7r-mpu.c         | 5 +++++
 arch/arm/cpu/uncompress.c         | 3 ++-
 arch/arm/include/asm/armv7r-mpu.h | 2 ++
 3 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm/cpu/armv7r-mpu.c b/arch/arm/cpu/armv7r-mpu.c
index d96411a61632..d494aec583ef 100644
--- a/arch/arm/cpu/armv7r-mpu.c
+++ b/arch/arm/cpu/armv7r-mpu.c
@@ -32,6 +32,11 @@
  * [1] http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.ddi0460d/I1002400.html
  */
 
+void armv7r_cache_enable(void)
+{
+	set_cr(get_cr() | CR_C);
+}
+
 void armv7r_mpu_disable(void)
 {
 	u32 reg;
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index 55bbe0019cc4..8f0d0f55f862 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -18,6 +18,7 @@
 #include <asm/secure.h>
 #include <asm/cache.h>
 #include <asm/mmu.h>
+#include <asm/armv7r-mpu.h>
 #include <asm/unaligned.h>
 #include <compressed-dtb.h>
 #include <elf.h>
@@ -87,7 +88,7 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	if (IS_ENABLED(CONFIG_MMU))
 		mmu_early_enable(membase, memsize);
 	else if (IS_ENABLED(CONFIG_ARMV7R_MPU))
-		set_cr(get_cr() | CR_C);
+		armv7r_cache_enable();
 
 	pr_debug("uncompressing barebox ELF at 0x%p (size 0x%08x) to 0x%08lx (uncompressed size: 0x%08x)\n",
 			pg_start, pg_len, barebox_base, uncompressed_len);
diff --git a/arch/arm/include/asm/armv7r-mpu.h b/arch/arm/include/asm/armv7r-mpu.h
index 8d737d6d1407..1d890ab90a67 100644
--- a/arch/arm/include/asm/armv7r-mpu.h
+++ b/arch/arm/include/asm/armv7r-mpu.h
@@ -91,6 +91,8 @@ struct mpu_region_config {
 	enum size reg_size;
 };
 
+void armv7r_cache_enable(void);
+
 void armv7r_mpu_disable(void);
 void armv7r_mpu_enable(void);
 int armv7r_mpu_enabled(void);
-- 
2.47.3



