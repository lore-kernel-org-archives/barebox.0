Delivery-date: Wed, 10 Jan 2024 17:02:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNb2R-00BoII-1M
	for lore@lore.pengutronix.de;
	Wed, 10 Jan 2024 17:02:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNb2Q-0002lH-RM
	for lore@pengutronix.de; Wed, 10 Jan 2024 17:02:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ONg1RJ1D/EscaQdmNGW4el7rSEGFhUrHXEVyMazI5yk=; b=3SADzQSO50azEkruLbg7DglBSA
	fFeXlymgwc2MghOdxTErR/99cGDvJlyYs953A8NdX45hyov5dYIq9a2SM/IbHZc3LOimzx6zfrXzZ
	72gN15UjbLsmzurEm69rp5VmMhrwJ8EsaAsewhdPNhWWmg+EuG32RajVnd6TSPgIWPA7fdRIqjbrV
	qZSw3fuQteS+0WSwJecsIhJTK6rfBSXE7rvE9h/f4kPP+mqr4kC0J90vQYXtLOcUEbsGX4a6AIT5b
	xTkT5xlAKOer+elyMIjuB2of5FFIg5d7ZWU7CQVAu4DuXBcqqoriemtvABiWP4kopUM4dvQJQ1sOd
	JjUPIpjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNb1J-00Ckfl-1s;
	Wed, 10 Jan 2024 16:01:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNb1E-00Ckap-1E
	for barebox@lists.infradead.org;
	Wed, 10 Jan 2024 16:01:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1D-0002Bh-5D; Wed, 10 Jan 2024 17:01:27 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1C-001jum-OT; Wed, 10 Jan 2024 17:01:26 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1C-00HLtL-29;
	Wed, 10 Jan 2024 17:01:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 10 Jan 2024 17:01:04 +0100
Message-Id: <20240110160112.4134162-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240110160112.4134162-1-a.fatoum@pengutronix.de>
References: <20240110160112.4134162-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_080128_447926_D03F9EA0 
X-CRM114-Status: GOOD (  10.53  )
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
Subject: [PATCH v2 02/11] dma: select ARCH_DMA_DEFAULT_COHERENT for x86 and sandbox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux only considers the value of CONFIG_ARCH_DMA_DEFAULT_COHERENT if
the architecture also defines either of:

  - CONFIG_ARCH_HAS_SYNC_DMA_FOR_DEVICE
  - CONFIG_ARCH_HAS_SYNC_DMA_FOR_CPU
  - CONFIG_ARCH_HAS_SYNC_DMA_FOR_CPU_ALL

We don't have those in barebox and also have less architectures to
support, so we'll just select ARCH_DMA_DEFAULT_COHERENT from all
architectures where this applies to: x86, sandbox and RISC-V.
RISC-V already selects it, so we add it to the other two.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
  v1 -> v2:
    - select symbol for sandbox as well
---
 arch/sandbox/Kconfig | 1 +
 arch/x86/Kconfig     | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index 136a97b1ad30..3419b6e4f686 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -18,6 +18,7 @@ config SANDBOX
 	select ARCH_HAS_SJLJ
 	select ARCH_HAS_CTRLC
 	select HAS_DEBUG_LL
+	select ARCH_DMA_DEFAULT_COHERENT
 	default y
 
 config ARCH_TEXT_BASE
diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index bd6a94bd0b0e..b982ea32cb3a 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -5,6 +5,7 @@ config X86
 	select HAS_KALLSYMS
 	select HAS_DMA
 	select GENERIC_FIND_NEXT_BIT
+	select ARCH_DMA_DEFAULT_COHERENT
 	default y
 
 config ARCH_TEXT_BASE
-- 
2.39.2



