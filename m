Delivery-date: Fri, 13 Jun 2025 11:09:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ0Q6-006oTb-0x
	for lore@lore.pengutronix.de;
	Fri, 13 Jun 2025 11:09:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ0Q5-0004px-Mh
	for lore@pengutronix.de; Fri, 13 Jun 2025 11:09:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pubpatYrtKPzyYdwWPN+K7esiBRlZZGbQaV2TrrYyp8=; b=wMJWH498RA70b9iwaP3PafqnVg
	hvtfX8sPRDoUdT3OCTrncoNjG9i46tr8HKms9+E8JvD8vr7WU9Y+RvyiesBQk5ZnHKep8X17TsB7w
	9v7XtE3k3AKaCDq4k8qHaLAMD1vElmXlE6eOCWruOuaorx9Hi6uVnKCMB5irHIL5pODwu1J35oZ30
	Xm31L1eLzisNql0BP7sqVGTN61gykCTHodIIuTsZrhwr6FRkID6DvdyMc+P4ximRX1pcmVXTfVN/M
	Z5HugtjILR+KY8a4LIzDLzM+mH2RLRpOeDJr9fEhfpwdZM6IbztxGx/90H4jV6lkL/wjzSmvMCMkC
	QabWe9fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ0Pq-0000000Fs8h-1wap;
	Fri, 13 Jun 2025 09:09:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPzJe-0000000FiFB-3CCc
	for barebox@bombadil.infradead.org;
	Fri, 13 Jun 2025 07:59:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=pubpatYrtKPzyYdwWPN+K7esiBRlZZGbQaV2TrrYyp8=; b=bFwOwUEDMyaLPa07G4i/PX4rOj
	seoCJ8HIyc4X7AoaFNLPZZiXrKq2ZxtYMu2U3zqxTt1HeCqsvrS0977C54w2RNxA91DKMNnKWFx1Z
	rw/MVEkfGSwcSF9zIy5Su8OXCL4GHl/SHN4nThVVljNvtyi5+ELPWRm3NlveIJ6CSCpnACHCXQ2HH
	CHnP6iks4ggBjjkfX8wnMuHGT4jkrmMQebFg4CilXalYX4hRgzZUqJRbaINbgbv0BYutg+Xi1UxKp
	siict4VFKj9xxs48p8xt8w+3e+MPfs1dgLELy5X43NbI+xj9PPFyFDZfls8z2drBTXS0QshfQbYUf
	NcpZXEgg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPzJc-00000002uds-3pcD
	for barebox@lists.infradead.org;
	Fri, 13 Jun 2025 07:59:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPzJL-0004ci-Jl; Fri, 13 Jun 2025 09:58:51 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPzJL-003Fny-12;
	Fri, 13 Jun 2025 09:58:51 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPzJL-00CPUK-0j;
	Fri, 13 Jun 2025 09:58:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Jun 2025 09:58:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250613-arm-mmu-xn-ro-v1-3-60f05c6e7b4b@pengutronix.de>
References: <20250613-arm-mmu-xn-ro-v1-0-60f05c6e7b4b@pengutronix.de>
In-Reply-To: <20250613-arm-mmu-xn-ro-v1-0-60f05c6e7b4b@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749801531; l=1634;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=dAYE9A02RC+ERb27/+ziNOfZTly2kW/Hw43IP47vhN4=;
 b=8/ACu+ldhJhYZSnZld7MABGb2m3fI2+2ZaTnzL6bPAOV7vQFY/msgNOpMFnJ1uc3LM0F/rnc4
 3o6hWyDM84WDgH93V70vfVVBZE5SKztQZ1IZzQG5XjWwFIyyvXGVntX
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_085909_083816_0FD3F06A 
X-CRM114-Status: GOOD (  10.84  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/7] ARM: mmu: move ARCH_MAP_WRITECOMBINE to header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ARCH_MAP_WRITECOMBINE is defined equally for both mmu_32 and mmu_64 and
we'll add more mapping types later, so move it to a header file to be
shared by both mmu implementations.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu-common.h | 2 ++
 arch/arm/cpu/mmu_32.c     | 1 -
 arch/arm/cpu/mmu_64.c     | 2 --
 3 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
index d0b50662570a48fafd47edac9fbc12fe2a62458a..0f11a4b73d1199ec2400f64a2f057cf940d4ff2d 100644
--- a/arch/arm/cpu/mmu-common.h
+++ b/arch/arm/cpu/mmu-common.h
@@ -9,6 +9,8 @@
 #include <linux/kernel.h>
 #include <linux/sizes.h>
 
+#define ARCH_MAP_WRITECOMBINE	((unsigned)-1)
+
 struct device;
 
 void dma_inv_range(void *ptr, size_t size);
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 2754bea88a514c2886e43ffc4dbf310d75055fca..3e0c761cd43486d3193b80b5f79097bdd5cd333c 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -23,7 +23,6 @@
 #include "mmu_32.h"
 
 #define PTRS_PER_PTE		(PGDIR_SIZE / PAGE_SIZE)
-#define ARCH_MAP_WRITECOMBINE	((unsigned)-1)
 
 static inline uint32_t *get_ttb(void)
 {
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 65c6f1bb9f8ac2f4b55baf46c2af3d3714060088..440258fa767735a4537abd71030a5540813fc443 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -24,8 +24,6 @@
 
 #include "mmu_64.h"
 
-#define ARCH_MAP_WRITECOMBINE  ((unsigned)-1)
-
 static uint64_t *get_ttb(void)
 {
 	return (uint64_t *)get_ttbr(current_el());

-- 
2.39.5



