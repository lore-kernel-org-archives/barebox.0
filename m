Delivery-date: Tue, 20 Jan 2026 13:25:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viAnW-003Nrf-1q
	for lore@lore.pengutronix.de;
	Tue, 20 Jan 2026 13:25:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viAnU-0005qk-Cb
	for lore@pengutronix.de; Tue, 20 Jan 2026 13:25:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1XnWnUkdGafKaRanru/Ef6Vhv4RCwVSUgHVbcCC205I=; b=4O052g24/oV43nW9hHtPKrYpCA
	ZnjeGmvvBWDwCfZwInh9Lq/eHljqMVjS1eoXE7LaDzJ7rYW8KFT4mK2LQbVZgMwJwbQODAL0BNaGt
	ercp8uFo+EV73indA4tOMIg1xJAGb0gddxcrLms90KgoiTOLQmG2i14CUcBh5z9NP017aX4TCBA3B
	cKEVDMkMis6Q7aAgLFfs9mLCOMWLzS7l4VEh6F7u2HhF5OxxWGRhKe+1C0oW1kk+4y5YiztY+oiaG
	14asYpJ9VyhSo6sVEg3omr45VHXvdb2+++rUaZzXfp4gpNjALV5ZgUrYnLG3/ZmL3ZlRwl69XUil+
	NYA6y5ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viAn6-00000003paM-2rZR;
	Tue, 20 Jan 2026 12:25:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viAn4-00000003pZW-3oND
	for barebox@bombadil.infradead.org;
	Tue, 20 Jan 2026 12:24:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=1XnWnUkdGafKaRanru/Ef6Vhv4RCwVSUgHVbcCC205I=; b=gvwcAcvDam30l0tF2++Yvw9pGP
	wnvFxIDOJJlYFtNGYpI7kwLyQI3bsbmVXJOdgepqMljoiihgfolo6zMvdI2i4PDnsH5HT95/C6s8a
	fVzQ82+0uSuBpIdsFojWVi7qJqZf0cA/T6yZeV8TnfIoC/mlLd8FFywq9vJQifni975Gb8fvPKqvc
	o1QCZ0dJxsY5fCzzRFYhd7sPQeVy9HwOK9SETwcEgS6JorpYVSmbwWpSXyl4Nr+swk5DngR3W9GTM
	Bv78k8nQt4b4M4+3CHfBPEJ2cK2j4fGAUvAsUPBbQZdYZzSiviefoJa68DBXd813aOeK8GpawWRs/
	TsCzrDGA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viAn0-0000000E0xr-2r7R
	for barebox@lists.infradead.org;
	Tue, 20 Jan 2026 12:24:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viAn0-0005eU-72; Tue, 20 Jan 2026 13:24:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viAn0-001aAG-2C;
	Tue, 20 Jan 2026 13:24:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viAn0-00000002dE4-2Wmt;
	Tue, 20 Jan 2026 13:24:53 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 20 Jan 2026 13:24:45 +0100
Message-ID: <20260120122453.627239-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260120122453.627239-1-a.fatoum@pengutronix.de>
References: <20260120122453.627239-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_122454_927154_4C375866 
X-CRM114-Status: GOOD (  10.97  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 2/3] ARMv7: hyp: allow disabling support for invoking barebox in HYP mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Older SoCs like the Cortex-A9 don't need this handling and disabling
it allows us to save about 500 bytes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/Kconfig       | 10 ++++++++++
 arch/arm/cpu/lowlevel_32.S |  2 +-
 arch/arm/cpu/start.c       |  2 +-
 arch/arm/cpu/uncompress.c  |  2 +-
 4 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index 04b1585679f3..47c116ea98c5 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -83,6 +83,16 @@ config CPU_V7
 	depends on 32BIT
 	select CPU_32v7
 
+config CPU_V7VE
+	bool "ARMv7 Virtualization Extensions Support"
+	depends on CPU_V7
+	default y
+	help
+	  Say y here if it's possible for your CPU to be in HYP (hypervisor)
+	  mode when entering barebox.
+
+	  If unsure, say y.
+
 # ARMv8
 config CPU_V8
 	bool "Generic ARMv8 support"
diff --git a/arch/arm/cpu/lowlevel_32.S b/arch/arm/cpu/lowlevel_32.S
index 5d524faf9cff..3b1dea5c67c0 100644
--- a/arch/arm/cpu/lowlevel_32.S
+++ b/arch/arm/cpu/lowlevel_32.S
@@ -12,7 +12,7 @@ ENTRY(arm_cpu_lowlevel_init)
 	/* save sp, because possible HYP -> SVC transition below clobbers it */
 	mov	r3, sp
 
-#ifdef CONFIG_CPU_32v7
+#ifdef CONFIG_CPU_V7VE
 	/* careful: the hyp install corrupts r0 and r1 */
 	bl	__hyp_install
 #endif
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index c2f14736dac5..bbcf465be4db 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -137,7 +137,7 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 							   barebox_image_size,
 							   hd);
 
-	if (IS_ENABLED(CONFIG_CPU_V7))
+	if (IS_ENABLED(CONFIG_CPU_V7VE))
 		armv7_hyp_install();
 
 	pbl_barebox_break();
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index 9a9f391022c1..dffdd2c81232 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -121,7 +121,7 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 
 	pr_debug("jumping to ELF entry point at 0x%p\n", barebox);
 
-	if (IS_ENABLED(CONFIG_CPU_V7) && boot_cpu_mode() == HYP_MODE)
+	if (IS_ENABLED(CONFIG_CPU_V7VE) && boot_cpu_mode() == HYP_MODE)
 		armv7_switch_to_hyp();
 
 	barebox(membase, memsize, handoff_data);
-- 
2.47.3



