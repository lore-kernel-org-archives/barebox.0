Delivery-date: Tue, 16 Jan 2024 18:09:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPmvt-002FOw-2t
	for lore@lore.pengutronix.de;
	Tue, 16 Jan 2024 18:09:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPmvu-0007Vc-Jz
	for lore@pengutronix.de; Tue, 16 Jan 2024 18:09:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7M/e3GRKiuZ9D+3qK826+4i+YdxkQmSB6G36tIE19Xc=; b=4nelt69/+I2l0NVxEPS5au9OKS
	US50Qhr0P7GLCmCrNBDKRPA5mn+7yD+Ofg5OGjJKk3+eHgixPUeIKT3kxLB9/ETfW6lYuUWXWYCfm
	ePFw1dmwQSRfHlosx08fR5eNbPFQtJ98xM2rfVksz4vcaJAoA3F9j2HhY8PcunOs+N7GB5yGFHswW
	o750P8r3W4026Ng7+m3nlS/Ld3d831LWY4znPUQu3xrJlo7KnXl/1h81E4PtE1RqT+GnT3CAPciIl
	IezPCC1Z5XZCbHKcZwSptDlS01lqrXMXS25D6jAf/+WqDi71ZX887ePdPZaeJkDoPnG2nOwElPnDK
	Pux/sP7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmus-00Chyy-0J;
	Tue, 16 Jan 2024 17:07:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmug-00ChqH-18
	for barebox@lists.infradead.org;
	Tue, 16 Jan 2024 17:07:50 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rPmuf-0006lg-7M
	for barebox@lists.infradead.org; Tue, 16 Jan 2024 18:07:45 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 16 Jan 2024 18:07:28 +0100
Message-Id: <20240116170738.209954-9-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240116170738.209954-1-m.felsch@pengutronix.de>
References: <20240116170738.209954-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_090746_480809_9F891618 
X-CRM114-Status: GOOD (  10.07  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 08/18] optee: add support to verify 64-bit headers as well
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Guard the check by IS_ENABLED() to make it possible to verify 32-bit and
64-bit optee headers.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/optee.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/common/optee.c b/common/optee.c
index 32a6c0a15b94..fd2b03d06d2d 100644
--- a/common/optee.c
+++ b/common/optee.c
@@ -14,8 +14,14 @@ int optee_verify_header(struct optee_header *hdr)
 		return -EINVAL;
 	}
 
-	if (hdr->arch != OPTEE_ARCH_ARM32 || hdr->init_load_addr_hi) {
-		pr_err("Only 32bit supported\n");
+	if (IS_ENABLED(CPU_V7) &&
+	    (hdr->arch != OPTEE_ARCH_ARM32 || hdr->init_load_addr_hi)) {
+		pr_err("Wrong OP-TEE Arch for ARM v7 CPU\n");
+		return -EINVAL;
+	}
+
+	if (IS_ENABLED(CPU_V8) && hdr->arch != OPTEE_ARCH_ARM64) {
+		pr_err("Wrong OP-TEE Arch for ARM v8 CPU\n");
 		return -EINVAL;
 	}
 
-- 
2.39.2



