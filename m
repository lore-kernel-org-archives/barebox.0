Delivery-date: Mon, 02 Mar 2026 14:49:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vx3eJ-007IoW-2l
	for lore@lore.pengutronix.de;
	Mon, 02 Mar 2026 14:49:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vx3eK-0007KT-5n
	for lore@pengutronix.de; Mon, 02 Mar 2026 14:49:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NBOpKUxiFin1hsr926/3tvU6eBk7ML8LIBiMFdTOpyQ=; b=vVhLWZe3jGtgER4gj5byFCjw7U
	pzMcSAvSkgdp0WCP/TTu6eJYUvCy65qmUu6fxvRcbHctE+6qYOJyOlB71PvtaIWYixB9EvuXyLl+N
	AFLotK1bdx/xf7jtHgq2xqLCc1XZsUcUD+1jW7irmXaGYwPlQ2ujatGA62Vjt6CCHYosOYfTtLiof
	Aqr6R9oKEAAOjWWxw9Pubm8SpU7byYN3kBEDr8UMlJBVVqcjV9QInPMPO28/ntGZglTFlImyIvkVC
	JXSUCVd/6bR5waprFsix/NfGFvzpO7D9ay0Ax7zHokPAU3hcEZO54N1s0GhwwSUmr1xuyE7fhFwyc
	SPi3vXFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx3do-0000000D9kK-0lIm;
	Mon, 02 Mar 2026 13:48:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx3dj-0000000D9hj-46pT
	for barebox@lists.infradead.org;
	Mon, 02 Mar 2026 13:48:54 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vx3dh-00073f-03; Mon, 02 Mar 2026 14:48:49 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  2 Mar 2026 14:47:35 +0100
Message-ID: <20260302134843.195007-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260302134843.195007-1-a.fatoum@barebox.org>
References: <20260302134843.195007-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_054852_014325_23848D8F 
X-CRM114-Status: UNSURE (   8.58  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] powerpc: qemu-ppce500_defconfig: increase malloc area to default 4 MiB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

qemu-ppce500 was the only PowerPC board with a 1 MiB malloc area, while
other boards range from 16 to 64 MiB and the Kconfig default is 4 MiB.

The small heap caused the talloc stress test to run out of memory
(the test randomly allocates up to 1024 buffers of 1-4096 bytes).
Drop the explicit CONFIG_MALLOC_SIZE override to use the default.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/powerpc/configs/qemu-ppce500_defconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/powerpc/configs/qemu-ppce500_defconfig b/arch/powerpc/configs/qemu-ppce500_defconfig
index 6a0e070f4996..318db05ba3cd 100644
--- a/arch/powerpc/configs/qemu-ppce500_defconfig
+++ b/arch/powerpc/configs/qemu-ppce500_defconfig
@@ -1,7 +1,6 @@
 CONFIG_ARCH_MPC85XX=y
 CONFIG_QEMU_PPCE500=y
 CONFIG_NAME="qemu-ppce500_defconfig"
-CONFIG_MALLOC_SIZE=0x100000
 CONFIG_RELOCATABLE=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-- 
2.47.3



