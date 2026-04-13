Delivery-date: Mon, 13 Apr 2026 09:46:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCBzs-00Bdv0-1q
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 09:46:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCBzs-0007Ir-0Z
	for lore@pengutronix.de; Mon, 13 Apr 2026 09:46:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6Wm2STeg9JPgL/R9CXkEmWmSaVIdOo6P8QMMKbrPV7s=; b=kqUwroNkLMNYPeAXbE0+JkXaRJ
	nV+PINXXKH+JIARHapKa715TLpxSGIBOjKdWG/JalgUMGYok95Z0lIlEewP99Y6XdRBEVw4sllJ7g
	Zd1QTx7ItBMreHULu0dHfw0SV9pFWVGSBJEe+bMP7qc2SQ9kJeKpIZHB+8bSuUeH9IhlxcCfNbLUW
	BZXdDFBajT+vbWO+Y45aStUXWHo/nwwBOUoLnZTTEFGBipb/1it1h+grY3CdBczD8nDJd4DmbQ71t
	q9im7amc6COUJCZc0XK/nyGuoHd9btoqCHfrSf2Nvs7A8OExZTQ6qWJLztukFHXbdxLkEJep2yBmH
	rk8Q2jvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBzH-0000000FBBZ-1caU;
	Mon, 13 Apr 2026 07:45:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBzG-0000000FB9e-0P2h
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 07:45:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=6Wm2STeg9JPgL/R9CXkEmWmSaVIdOo6P8QMMKbrPV7s=; b=OxBOtM69ZQ18Ob2rOC45QEEV3k
	1SF32CVh1+9ffmzzp5ShSzj+VtSYQ56911O/lLbB3dErTBmn0hRPj5+sFx2vD2NVkQfyqxiPKVm6x
	v0kJRjnNROzilWtWxl0472UmmYv0v26T2V5y6gfg5ruNXj4K3BEJxzeZ9/4okoTYOzp0oHZ6sgDlk
	ddkW0NEXnVKHNYawnMaLsulS2IWIyAXpOnSh72SwtntXweX5n82ehpgy3yUSb5JUXPn3MPsP/eUbv
	8Hs7BJ318h3cbVtkNtwzCcZQSVdp4RUDhkLBiLU6XnrGkSlLtv+5JymZcqIDvGHp+AyejELOqNWeW
	psASxqAA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBz7-0000000GJDC-2lfu
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 07:45:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wCBz3-0006tX-7F; Mon, 13 Apr 2026 09:45:25 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 13 Apr 2026 09:44:45 +0200
Message-ID: <20260413074522.1410710-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260413074522.1410710-1-a.fatoum@barebox.org>
References: <20260413074522.1410710-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_084533_220840_46504540 
X-CRM114-Status: UNSURE (   8.46  )
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
Subject: [PATCH 2/7] test: enable VirtIO keyboard
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The QEMU ARM64 Virt machine has no input method by default.
As we already had VirtIO input for the web demo, enable it when
--graphic is enabled.

The barebox VirtIO input driver was ported from Linux and both support
only VirtIO v1 devices, so we need to explicitly set
virtio-mmio.force-legacy=false for this to work.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 conftest.py | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/conftest.py b/conftest.py
index b0d314f3f345..c27e7a9546a1 100644
--- a/conftest.py
+++ b/conftest.py
@@ -175,6 +175,7 @@ def strategy(request, target, pytestconfig):  # noqa: max-complexity=30
 
     if "virtio-mmio" in features:
         virtio = "device"
+        strategy.append_qemu_args('-global virtio-mmio.force-legacy=false')
     if "virtio-pci" in features:
         virtio = "pci,disable-modern=off"
         features.append("pci")
@@ -210,6 +211,7 @@ def strategy(request, target, pytestconfig):  # noqa: max-complexity=30
             graphics = '-device VGA'
         elif virtio:
             graphics = '-vga none -device ramfb'
+            graphics += f' -device virtio-keyboard-{virtio}'
         else:
             pytest.exit("--graphics unsupported for target\n", 1)
 
-- 
2.47.3



