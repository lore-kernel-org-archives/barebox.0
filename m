Delivery-date: Mon, 19 Feb 2024 14:39:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3rq-00Ea5R-0B
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 14:39:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3rp-00062H-D8
	for lore@pengutronix.de; Mon, 19 Feb 2024 14:39:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wa0og75y2ugmmR42hho0rSeXsD/1YQ341jjYli1bgNA=; b=jBnkfQo2BTf2OjXRnh1DcTlnBd
	IxztARI02gxbOViMlQX2iJvu5xj33sZiQEmLbW3iR9M4mI1LSVjPx9ZRlJyFfX/aot9+QhMgyPq5e
	67HEdyclYCkyMYhseDsC0s+UaiVCRqFAnDktattjAS849GKrQutAP5Qf2Qq7sBfPqcgWlol7JrKjZ
	HT6sOX+R4XUEULgvAAdPxmd/HI1c5vyVCBkBv4Mhxbjiu17Muzt+78iJRGmTgmSSPipMsOn8pdQXY
	J5RqNIeF0//9PD1qhcLXuKAMiJ6mIsta5HnxH4gTfxX55bW4vNL4rWGEn9fksG5x5O03QLzlPzLPj
	bFIhTr4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3rM-0000000AgBQ-099M;
	Mon, 19 Feb 2024 13:39:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3r9-0000000Ag0W-33EN
	for barebox@bombadil.infradead.org;
	Mon, 19 Feb 2024 13:38:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=wa0og75y2ugmmR42hho0rSeXsD/1YQ341jjYli1bgNA=; b=LsAz/Sez0K8Tw5UTaBeDtvhAmG
	PXUOVPIiPshF0P/TzwjLTyLRmWykDpPkc5FlW1Lf/y4Jw1XzgmhTKVZFUMe5zzxBv9NzbapKspOJn
	G9OyWSE0p3ZWiXc4l+kECG40yoUfKkJ0xSoaHGnOCgdGWUfaL2j5LdGdw2iYchgEK9iCNljU6m4Oa
	wVu3WPWhZUjgsF0LJwA0+aGLSU4Q493Ai5zdISIzHGY/MA6QtOlHjDZ66ObociVjMOiWHVMB8STcz
	TOstx0YiKzKmB7ERuEpxq7925/ScE+vHTy9Z1pe1pOo4fKrQMmrsSJH6f6l86DDDyFj6SAN3YGXPa
	h8c1fjqg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3r4-00000001Gf8-30cI
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 13:38:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r1-00051P-HF; Mon, 19 Feb 2024 14:38:43 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r1-001f3W-4g; Mon, 19 Feb 2024 14:38:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r0-00GySQ-3D;
	Mon, 19 Feb 2024 14:38:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Feb 2024 14:38:25 +0100
Message-Id: <20240219133835.3886399-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
References: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_133847_315606_3129EAC4 
X-CRM114-Status: GOOD (  13.10  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 05/15] usb: xhci: Add missing endian conversions (cpu_to_leXX / leXX_to_cpu)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This imports U-Boot commit 543eb12ecd91df324554b8abc8d52e965bd4922b:

| Author:     Stefan Roese <sr@denx.de>
| AuthorDate: Tue Jul 21 10:46:02 2020 +0200
|
| usb: xhci: Add missing endian conversions (cpu_to_leXX / leXX_to_cpu)
|
| While trying to use the U-Boot xHCI driver on the MIPS Octeon platform,
| which is big endian, I noticed that the driver is missing a few endian
| conversion calls. This patch adds these missing endian conversion
| calls.
|
| Signed-off-by: Stefan Roese <sr@denx.de>

This introduces no functional change for existing platforms as the
barebox xHCI driver doesn't run on any big-endian CPUs.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/host/xhci-mem.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/host/xhci-mem.c b/drivers/usb/host/xhci-mem.c
index 1a66bc6a61a4..c49693bd9f1b 100644
--- a/drivers/usb/host/xhci-mem.c
+++ b/drivers/usb/host/xhci-mem.c
@@ -498,7 +498,7 @@ int xhci_alloc_virt_device(struct xhci_ctrl *ctrl, unsigned int slot_id)
 	byte_64 = (uintptr_t)(virt_dev->out_ctx->bytes);
 
 	/* Point to output device context in dcbaa. */
-	ctrl->dcbaa->dev_context_ptrs[slot_id] = byte_64;
+	ctrl->dcbaa->dev_context_ptrs[slot_id] = cpu_to_le64(byte_64);
 
 	xhci_flush_cache((uintptr_t)&ctrl->dcbaa->dev_context_ptrs[slot_id],
 			 sizeof(__le64));
@@ -777,7 +777,7 @@ void xhci_setup_addressable_virt_dev(struct xhci_ctrl *ctrl,
 
 	dev_dbg(&udev->dev, "route string 0x%x\n", route);
 
-	slot_ctx->dev_info |= route;
+	slot_ctx->dev_info |= cpu_to_le32(route);
 
 	switch (speed) {
 	case USB_SPEED_SUPER:
-- 
2.39.2



