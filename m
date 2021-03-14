Delivery-date: Sun, 14 Mar 2021 14:04:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLQPm-0007uT-Dc
	for lore@lore.pengutronix.de; Sun, 14 Mar 2021 14:04:14 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLQPl-0002QV-Nx
	for lore@pengutronix.de; Sun, 14 Mar 2021 14:04:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PoObhY1c6pZT3xFb+edyChxXwm9YSzDTstTRN4JTJTE=; b=oWCAEodsNd5Xn6nVAW5n6PI1K
	ivb0187rtJzvsfeqCmq8bskP5nTWCl2fkG8gaa2DCCEazc1zswhmPNFCb4nn1akOtnLKBvDlWu8M1
	J56bLj+EuLDJaxFxAzOAkLfD0Kycj6ec5uRKle1VyhZBGfm5kCZDngf2n+P2nhXuPs4REaP1Sz+CH
	HelSqhgtpQ4uCjYRYJ7J7bFoAX0k5MzH2Sax2WvMlHyLaKdWdR2I6mPUtJA2rW6ePSGSwTjII8Cxr
	Dr0sUVTSHvhw8PZ3YJ/emeTWo0H+sRKxBCSS/UbGY2c15UnwggPYkdPOT7847YojKHHXfx4EhMB3m
	w6ggwCZzw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLQOr-00EEfe-VM; Sun, 14 Mar 2021 13:03:18 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLQOi-00EEej-3B
 for barebox@lists.infradead.org; Sun, 14 Mar 2021 13:03:10 +0000
X-Originating-IP: 87.123.99.173
Received: from geraet.fritz.box (unknown [87.123.99.173])
 (Authenticated sender: ahmad@a3f.at)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id D8BA120004;
 Sun, 14 Mar 2021 13:03:04 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sun, 14 Mar 2021 14:03:00 +0100
Message-Id: <20210314130301.620307-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210314122804.4128-17-a.fatoum@pengutronix.de>
References: <20210314122804.4128-17-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210314_130308_530669_B95399DD 
X-CRM114-Status: UNSURE (   8.20  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] fixup! RISC-V: add 64-bit support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The sjlj implementation is actually written so that it works fine on
both 32- and 64- bit RISC-V. We can thus select it from CONFIG_RISCV
directly.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/riscv/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index a53ac4d12031..788bf36cfe42 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -11,6 +11,7 @@ config RISCV
 	select HAVE_PBL_IMAGE
 	select HAVE_PBL_MULTI_IMAGES
 	select HAVE_IMAGE_COMPRESSION
+	select HAS_ARCH_SJLJ
 	select HAS_KALLSYMS
 
 config ARCH_TEXT_BASE
@@ -50,7 +51,6 @@ config ARCH_RV32I
 	select GENERIC_LIB_ASHLDI3
 	select GENERIC_LIB_ASHRDI3
 	select GENERIC_LIB_LSHRDI3
-	select HAS_ARCH_SJLJ
 	select 32BIT
 
 config ARCH_RV64I
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

