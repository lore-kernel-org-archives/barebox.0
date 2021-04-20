Delivery-date: Tue, 20 Apr 2021 10:06:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYlP7-0008Fz-EZ
	for lore@lore.pengutronix.de; Tue, 20 Apr 2021 10:06:41 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYlP6-0004IH-Cb
	for lore@pengutronix.de; Tue, 20 Apr 2021 10:06:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ht82D8bKcowvllt/5w4RhC2ijGdpjO/QnYK1k4WHWcY=; b=TSHTmf04q3o+ABZ9bFT70SSqG
	mozPJWEXLcWZOFWozkG0a7fyX3HSjWMyaHwvJblrYpZk+qtXs97hys5s1fI0FZhej2zFX8B2S5QAD
	VUiXkHdciGgMFccfD+MpxHA3rcB2vQYQ1aQxhKoAh0Dm56oKCfYfqHqnNG2R47uXutn9g7i0BlWQF
	OBn1DlcLytWuqIzdvxLZcqvzl469qdu+nz0RmTk7MhnDTx05AeNi5aNb55fmS+jBDCQS3XisKRWhR
	lGgXwblj/cQuAuvZT70P7pxTh/sqfBpBa3lIbTQb3Gnxt2mFgnvasO5nuPALBprbgFd1gYz8jUwus
	ScAkuf6Zw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYlO1-00BWy5-AA; Tue, 20 Apr 2021 08:05:33 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYlNj-00BWuN-Ir
 for barebox@desiato.infradead.org; Tue, 20 Apr 2021 08:05:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=lF4/xrwunJfy5Mp2OPvbsZfvLqPu3jfrqIgF0IKmBbo=; b=WYgWZ/sp1uhI4ba2jf/g7pWSRC
 /P43cboAiOQrWox8UVQcCxUmEJIwdREfQEuFtLcqaAF0ontEB9RhRZI/7OL6gzJA+pq1UzyDRbVSJ
 Sadzy4TtLBeDQl3l/0HmhMYZc+SPYyjqswUQT9TxFhXmiVRJtuYgurzsY+u1DUJNQ/QPL/8CVGk34
 KcJMbtjrdcv34cWaRsx8sRwNHqRYRJwcNRxjlnXj7q78mrVnfez9eASUJdKuHHRfr+c2An0lHqkMj
 s3AFz26ODkcBdyF7XxLSB8mJIEwp26w78iECIg5Z83mtsPsPkjVaLr/f1/qACDMNC6K6cvZF4UILB
 MeT4pQTw==;
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYlNh-00Bu0Z-1W
 for barebox@lists.infradead.org; Tue, 20 Apr 2021 08:05:14 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
 id E4D5F1167C9; Tue, 20 Apr 2021 09:57:22 +0200 (CEST)
Received: from localhost (unknown [IPv6:2001:9e8:79:8c02:c0d3:dbff:fefe:ff70])
 by magratgarlick.emantor.de (Postfix) with ESMTPSA id 9E1CD116A69;
 Tue, 20 Apr 2021 09:57:18 +0200 (CEST)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 20 Apr 2021 09:57:00 +0200
Message-Id: <20210420075700.246124-7-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210420075700.246124-1-r.czerwinski@pengutronix.de>
References: <20210420075700.246124-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_010513_244655_E326A66F 
X-CRM114-Status: GOOD (  12.41  )
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
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 7/8] ARM: mmu-early: map no-map entries XN & uncached
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Ensure that reserved map entries with the no-map flag are marked as
uncached and non-execute during the early MMU initialization.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/cpu/mmu-early.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/cpu/mmu-early.c b/arch/arm/cpu/mmu-early.c
index b985aa455f..63cf61b2aa 100644
--- a/arch/arm/cpu/mmu-early.c
+++ b/arch/arm/cpu/mmu-early.c
@@ -3,9 +3,11 @@
 #include <errno.h>
 #include <linux/sizes.h>
 #include <asm/memory.h>
+#include <asm-generic/memory_layout.h>
 #include <asm/system.h>
 #include <asm/cache.h>
 #include <asm-generic/sections.h>
+#include <pbl.h>
 
 #include "mmu.h"
 
@@ -24,6 +26,8 @@ static inline void map_region(unsigned long start, unsigned long size,
 void mmu_early_enable(unsigned long membase, unsigned long memsize,
 		      unsigned long _ttb)
 {
+	struct pbl_reserved_memory* res_mem = get_pbl_reserved_memory();
+	int i;
 	ttb = (uint32_t *)_ttb;
 
 	arm_set_cache_functions();
@@ -58,6 +62,14 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize,
 	/* maps main memory as cachable */
 	map_region(membase, memsize, PMD_SECT_DEF_CACHED);
 
+	for(i=0; i < get_pbl_reserved_memory_num(); i++) {
+		if(res_mem->flag & FDT_RES_MEM_FLAG_NOMAP)
+			map_region(res_mem->base, res_mem->size,
+				   PMD_SECT_DEF_UNCACHED | PMD_SECT_XN);
+		res_mem++;
+	}
+
+
 	/*
 	 * With HAB enabled we call into the ROM code later in imx6_hab_get_status().
 	 * Map the ROM cached which has the effect that the XN bit is not set.
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

