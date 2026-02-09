Delivery-date: Mon, 09 Feb 2026 13:42:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpQb2-00AYSb-1I
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 13:42:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpQb1-0000dW-EC
	for lore@pengutronix.de; Mon, 09 Feb 2026 13:42:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HyTizxn4eTX7wkz3W/DV12WcepnXacxhjxNzVuIHaN4=; b=sO98SSibZFJSnSpi2xg/NSonO7
	ZtO4mZSwSB+diGp383kMhFTkIswFk5IA2Ofo4g7y6HOrXWlA+LRZPaHJxfK5OMrSv8d8Yuo/clNzF
	//ELagScV0NXQb+iQm3OVP9uhydn1YF2kjAwDsUH6HulAIflRUIxtgZWu5qfNSZPWAtTbCGcX8A0m
	kQGwPW/xatqWAR+yNs60HxUahTG2NcdnP6O7+KOHuspezjTKqU29LxTN5wai3sTMJwTOG5cjEe0kY
	AA81TfykwYczYX3NA7Wb9HA2AkCbufzrWhUN8xgYpvefsr4IT8t+8gEZrMjWTdoZy6MhOTJccd/lh
	X4IZtPLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpQad-0000000FNAI-0atS;
	Mon, 09 Feb 2026 12:42:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpQab-0000000FN9s-0k6j
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 12:42:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpQaZ-0000Ze-9K; Mon, 09 Feb 2026 13:42:03 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpQaZ-004tNf-2T;
	Mon, 09 Feb 2026 13:42:03 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpQaZ-0000000CXLj-00lB;
	Mon, 09 Feb 2026 13:42:03 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Feb 2026 13:41:53 +0100
Message-ID: <20260209124202.2988120-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_044205_217309_1C760C1F 
X-CRM114-Status: UNSURE (   8.82  )
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
Subject: [PATCH] test: arm: modules32_defconfig: increase memory size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While 128M is too much and leads to errors:

  pci_ecam_generic: relocation out of range, section 5 reloc 0
	sym 'dev_request_mem_resource'

  pci_ecam_generic: relocation out of range, section 12 reloc 0
	sym 'platform_driver_register'

Taking 64M as previous power of two is needlessly conservative.
100M seems to work fine, so use that. This will be useful for upcoming
decompression tests as LZ4 decompressions allocates a 8M buffer.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/arm/modules32_defconfig.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/test/arm/modules32_defconfig.yaml b/test/arm/modules32_defconfig.yaml
index aa01881f0ecc..b12042624769 100644
--- a/test/arm/modules32_defconfig.yaml
+++ b/test/arm/modules32_defconfig.yaml
@@ -5,7 +5,7 @@ targets:
         qemu_bin: qemu-system-arm
         machine: virt
         cpu: cortex-a7
-        memory: 64M  # To avoid indirection via (unsupported) PLTs
+        memory: 100M  # To avoid indirection via (unsupported) PLTs
         bios: barebox-qemu-virt.img
         display: qemu-default
       BareboxDriver:
-- 
2.47.3



