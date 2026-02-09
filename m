Delivery-date: Mon, 09 Feb 2026 10:15:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpNMx-00AVIz-0x
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 10:15:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpNMw-0006A4-7J
	for lore@pengutronix.de; Mon, 09 Feb 2026 10:15:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Sjw5Dd4VM8eNb0HKMcnYtDIaKVc5rc2ThLn/oIvzxls=; b=Jg0tJmxvOw4f0ZYQhMTNl/itMF
	Pxzfb0+9LwLVACsAMYZEs46RUY9Al3+RNunHXk9Gl0E3Bsv9MzVb0vt/OX5L8f3+mvRHXxH4q4Cwx
	8ZibppH4rA/IuYvHGoHq5hrzFJ915hi/QCPxVVEisezLlmAXTEINuBHMs236Ac7fAzV9BxefQefg9
	qeZVYbx5giIDR19SZ7mnkSP8E3o/uHk2UiffknhMHHbHyrpC8cG3SNyDHuUx6Wr3ay8TA5wKy9ifN
	YYgmzMzWMW1N0WuYsYiVe5vL2PNcHW2rwmqoJyNFKRzRwH3KJ6srDXdpLKMCscryqaucsXw6++OzJ
	LOEh6Wfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpNMa-0000000F6gK-0ISc;
	Mon, 09 Feb 2026 09:15:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpNMU-0000000F6ba-3doT
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 09:15:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vpNMT-0005oY-8c; Mon, 09 Feb 2026 10:15:17 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: "Claude Opus 4.6" <noreply@anthropic.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  9 Feb 2026 10:10:30 +0100
Message-ID: <20260209091513.3563412-6-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260209091513.3563412-1-a.fatoum@barebox.org>
References: <20260209091513.3563412-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_011520_279398_243F5955 
X-CRM114-Status: UNSURE (   8.78  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 5/6] mach-mpc85xx: speed: add fsl_set_timebase_clock() override
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some platforms (e.g. QEMU) don't implement the GUTS PORPLLSR register,
so the register-based timebase frequency calculation returns 0. Add
fsl_set_timebase_clock() that allows board code to provide the correct
timebase frequency before initcalls run, bypassing the register read.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/powerpc/mach-mpc85xx/include/mach/clock.h |  1 +
 arch/powerpc/mach-mpc85xx/speed.c              | 10 ++++++++++
 2 files changed, 11 insertions(+)

diff --git a/arch/powerpc/mach-mpc85xx/include/mach/clock.h b/arch/powerpc/mach-mpc85xx/include/mach/clock.h
index bfd9cf4d8ecd..2d0f079f5c68 100644
--- a/arch/powerpc/mach-mpc85xx/include/mach/clock.h
+++ b/arch/powerpc/mach-mpc85xx/include/mach/clock.h
@@ -14,6 +14,7 @@ struct sys_info {
 
 unsigned long fsl_get_bus_freq(ulong dummy);
 unsigned long fsl_get_ddr_freq(ulong dummy);
+void fsl_set_timebase_clock(unsigned long freq);
 unsigned long fsl_get_timebase_clock(void);
 unsigned long fsl_get_i2c_freq(void);
 void fsl_get_sys_info(struct sys_info *sysInfo);
diff --git a/arch/powerpc/mach-mpc85xx/speed.c b/arch/powerpc/mach-mpc85xx/speed.c
index 4a69de3dc81a..8018132874ba 100644
--- a/arch/powerpc/mach-mpc85xx/speed.c
+++ b/arch/powerpc/mach-mpc85xx/speed.c
@@ -104,10 +104,20 @@ unsigned long fsl_get_ddr_freq(ulong dummy)
 	return sys_info.freqDDRBus;
 }
 
+static unsigned long timebase_clock_override;
+
+void fsl_set_timebase_clock(unsigned long freq)
+{
+	timebase_clock_override = freq;
+}
+
 unsigned long fsl_get_timebase_clock(void)
 {
 	struct sys_info sysinfo;
 
+	if (timebase_clock_override)
+		return timebase_clock_override;
+
 	fsl_get_sys_info(&sysinfo);
 
 	return (sysinfo.freqSystemBus + 4UL)/8UL;
-- 
2.47.3



