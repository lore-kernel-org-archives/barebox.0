Delivery-date: Mon, 27 Oct 2025 20:26:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDSra-00CR6C-21
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 20:26:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDSra-0004kU-2O
	for lore@pengutronix.de; Mon, 27 Oct 2025 20:26:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Iu98Ktf3YwPOpOPTgs+st3DmZsLimkDdgmrnPVZC134=; b=RIEDWkxVTtCH94exdxJ3XlcWyY
	1vulnlXjT6AfYr+Treafz0A3NhOF35qGm/ECCUlmAQK0zU9IG29BOLt1n9Rj8CabX7GkYbu/Sasqi
	77KE6Qz7sS6hNhwU3RMmVduanZgIPfsYbWOD62TZX6p1j0dQgXfq0aGsQphvl2GBSBxTiXGAJsqbV
	6cbEroK581moMt/nlFIr0MgqajELc1obCUX9uiwW59vdvnfkFSGOicc7xOYow+LdnjD6MUN62CiXe
	IY2lem6V8GgO6nN9myWon8FeIKBCcFU2ubXYNrUeIBNmXnokRpUs0BUMbWzDKqmodiAn1Rhh3ERva
	2u+t9SsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDSr0-0000000EfAf-0boO;
	Mon, 27 Oct 2025 19:26:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDSqx-0000000EfA3-2Kcf
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 19:26:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vDSqu-0004c6-Um; Mon, 27 Oct 2025 20:26:01 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 27 Oct 2025 20:25:58 +0100
Message-ID: <20251027192559.2584642-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_122603_592464_61769604 
X-CRM114-Status: UNSURE (   7.82  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] video: make video/mipi_dsi.h header self-contained
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When we start compiling the MIPI-DSI code for sandbox allyesconfig, we
will stumble upon ARRAY_SIZE not being defined, so anticipate this by
including the relevant header.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/video/mipi_dsi.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/video/mipi_dsi.h b/include/video/mipi_dsi.h
index db9fbfd8d6da..0278f2d93b0d 100644
--- a/include/video/mipi_dsi.h
+++ b/include/video/mipi_dsi.h
@@ -17,6 +17,7 @@
 
 #include <video/mipi_display.h>
 #include <linux/container_of.h>
+#include <linux/array_size.h>
 #include <linux/bitops.h>
 #include <linux/device.h>
 #include <linux/errno.h>
-- 
2.47.3



