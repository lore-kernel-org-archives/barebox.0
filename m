Delivery-date: Mon, 13 Apr 2026 09:46:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCBzl-00Bdta-15
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 09:46:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCBzk-0007Er-Jp
	for lore@pengutronix.de; Mon, 13 Apr 2026 09:46:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z1Ox9VNQKqWMSIPaoo2xJA+NnlDN9Ld8F0W9oOv0mfI=; b=OQmVVBJNOsgG3pAu98/T56r8nX
	eGsZs/AbI3dKB4nAR6eOIyDDFgv4eufWIGBxxGA5A9AbS4P8tSpGG6Kpk+0EXgcXmAxFcAhk+LUpa
	aa3e/zOKQNWz4HQOkbsx49VQl4jxUR/54JXICSGUmRgU/22mXvF2p8t0bESZPu8RMhAs3YBjvECcy
	N/A6t3kl1ZEMyRDg7y+cPx1/ZIaKwuGPaU7sRnPSISsNeKWletuGuL1irICQr+CXAAFj9yAFIisBi
	R0EHIrWcE1vUKZVNJcee01VRrxOtvaK0RN53BLFqkvWUT4X/0vAcB0fYB+Ns80Kf0UtbMbzbwmFBS
	wbbFMECg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBzE-0000000FB8z-3769;
	Mon, 13 Apr 2026 07:45:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBzD-0000000FB6i-2EDU
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 07:45:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=z1Ox9VNQKqWMSIPaoo2xJA+NnlDN9Ld8F0W9oOv0mfI=; b=Ekibl6O8KBINnQHUmC7lvJD6Uh
	n/nZmkCitSyZK5i6OUTS1x6NzEa9Px01moENt6OPxSoEqsEr2Li6PCvr8bzsHw73I+XYVODIBd/ZH
	ak65FHroblYz3/JLOqkKro3UYthAKZ1CtLexNpNVrnvFByUkCx1PELu5Rrik83I1Deu8b9E6DPCtU
	hKZgUXtsSXGgPMb8JixSR3I0I6D1mNBROhn4QFOKmo6VndUl2FaAgGvWNJEhJhyMdS9LSq6MuNkyx
	6+sflIdLu29JPaLb60zLFZ2kk5xCzwB25FA0XAwNSoHaFjbpPHQkX2homjjX++hcNu0oCrCuBWm3d
	7dX+55Tg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBz6-0000000GJDB-3isG
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 07:45:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wCBz2-0006tX-PQ; Mon, 13 Apr 2026 09:45:24 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 13 Apr 2026 09:44:44 +0200
Message-ID: <20260413074522.1410710-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260413074522.1410710-1-a.fatoum@barebox.org>
References: <20260413074522.1410710-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_084531_428877_20E96872 
X-CRM114-Status: UNSURE (   7.34  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/7] ARM: multi_v8_defconfig: enable QEMU ramfb driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Enable CONFIG_DRIVER_VIDEO_RAMFB so that barebox can drive the QEMU
ramfb display device. All dependencies (CONFIG_VIDEO,
CONFIG_QEMU_FW_CFG, CONFIG_FS_QEMU_FW_CFG) are already enabled.

This will allow framebuffer testing with --graphics on the QEMU Virt
platform later.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/configs/multi_v8_defconfig   | 1 +
 test/arm/virt@multi_v8_defconfig.yaml | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index a6cc49859620..d2f04d30a422 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -222,6 +222,7 @@ CONFIG_USB_GADGET_MASS_STORAGE=y
 CONFIG_VIDEO=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_DRIVER_VIDEO_BOCHS_PCI=y
+CONFIG_DRIVER_VIDEO_RAMFB=y
 CONFIG_SOUND=y
 CONFIG_MCI=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
diff --git a/test/arm/virt@multi_v8_defconfig.yaml b/test/arm/virt@multi_v8_defconfig.yaml
index 2e654359709e..4eb75da4610e 100644
--- a/test/arm/virt@multi_v8_defconfig.yaml
+++ b/test/arm/virt@multi_v8_defconfig.yaml
@@ -17,6 +17,8 @@ targets:
       - network
       - barebox-state
       - testfs
+    env:
+      nv/dev.fb0.enable: 1
 images:
   barebox-qemu-virt.img: !template "$LG_BUILDDIR/images/barebox-qemu-virt.img"
 imports:
-- 
2.47.3



