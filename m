Delivery-date: Tue, 01 Nov 2022 19:08:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opvgK-00BAyo-3S
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 19:08:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opvgI-0007Ch-8W
	for lore@pengutronix.de; Tue, 01 Nov 2022 19:08:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uZhEGFZQHLlrJfxwqZbR8+Uw8OjYzxZ4JT1WJAexO8w=; b=pU2L+qAm2ZsA0eP+uw2caxAZNn
	hRPjrM711BJyo8JJfutHfyulFklscG5aAIGgNaV/4+FHheZSmA3jOpfQXwFkzt7J4Z3IVbV59VFDA
	Gs9RQ1PSAdckLCUG2e21fueKkVvzLWlIEAu75TzV9FW6nDkc03sU6p1GDQ0tZQq0bYJZe65+vMcFY
	rZlpaMTQi9XzxMlLAbMRfWSURYrW97sd6H+3HkWqF0q+SG47QeiOWPJly3khZnqHmbd6vmLmerc/L
	Wy0fhLQChSZ/x4I6WIguny/lwepaKNhFbYPUyUO5Kxkf0wANSxFtwVyIUOEe1EMr89TuFh2JKMGmH
	KYiQkQhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opvf6-006PeY-Q1; Tue, 01 Nov 2022 18:06:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opvex-006PaR-Oa
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 18:06:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1opvew-0006y2-GW; Tue, 01 Nov 2022 19:06:46 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1opvew-001j4P-Qa; Tue, 01 Nov 2022 19:06:45 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1opveu-0011aN-Dy; Tue, 01 Nov 2022 19:06:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Nov 2022 19:06:39 +0100
Message-Id: <20221101180643.244270-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221101180643.244270-1-a.fatoum@pengutronix.de>
References: <20221101180643.244270-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_110647_840214_A22493B3 
X-CRM114-Status: GOOD (  10.05  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] ARM: asm: set aside new arm_mem_scratch space
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

While ARMv7 and later allow mapping the interrupt vector table at
arbitrary address, older ARMs only accept 0x0000_0000 and 0xFFFF_0000
(i.e. SZ_4G - SZ_64K).

For this reason, barebox grows its stack down from the last SZ_64K
of the early memory bank and leaves the last 64K for MMU IVT setup.
That way if the early memory bank extends till the end of the 4G
address space, installing the IVT at 0xFFFF_0000 won't break anything.

SZ_64K is way more than any IVT would need, so let us repurpose the
last SZ_32K to be some generic scratch space for prebootloader to report
data to barebox proper. No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index dd12f642d993..2dcd4153200f 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -73,6 +73,13 @@ static inline void arm_fixup_vectors(void)
 
 void *barebox_arm_boot_dtb(void);
 
+#define __arm_mem_scratch(endmem) ((endmem) - SZ_32K)
+
+static inline const void *arm_mem_scratch_get(void)
+{
+	return (const void *)__arm_mem_scratch(arm_mem_endmem_get());
+}
+
 #define __arm_mem_stack_top(membase, endmem) ((endmem) - SZ_64K)
 
 #if defined(CONFIG_BOOTM_OPTEE) || defined(CONFIG_PBL_OPTEE)
-- 
2.30.2



