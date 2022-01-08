Delivery-date: Sat, 08 Jan 2022 18:15:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6FJt-00EcbX-3y
	for lore@lore.pengutronix.de; Sat, 08 Jan 2022 18:15:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6FJr-0004Kr-Ke
	for lore@pengutronix.de; Sat, 08 Jan 2022 18:15:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dVtCre/YBeAzKFmO/FHWZGSVYGG+mbre4vmZI0k/Tgg=; b=mcWkV9oSJgRIw9
	dt8X64IUix/P+gWTotMBMf/H85aBs4JGIFKpeeWx+xWQnktds2RYqCRWtSKdqj76/k6bAF3ysadss
	GrCb4uaoBOLgjcnSQm6/10c6n/3ttjHoNFm2t/uH4BqHbIHtlvS9KWyxeoHLOCD5LRScozJkG8hVi
	G5myaDF1WGAuNTmdcsdurEu8zml/EZMDKq2oyrNGIpJh4sRTpudmm3HLLKwQn/8iBA07hzhK5lSrc
	3DQSPWQB2/h9jM9GRrxrGA2BW0x0ryeR1FFdXbeD9b75bblrhvaLyq7Y4amjH0ZGuqp0pY2hiDafJ
	UFa1nvMHPBl2Vq2F1BVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n6FIA-006jBK-TE; Sat, 08 Jan 2022 17:14:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n6FI6-006jAo-Of
 for barebox@lists.infradead.org; Sat, 08 Jan 2022 17:14:07 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n6FHx-0003pv-Ig; Sat, 08 Jan 2022 18:13:57 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n6FHx-002SU7-3U; Sat, 08 Jan 2022 18:13:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat,  8 Jan 2022 18:13:55 +0100
Message-Id: <20220108171356.586099-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220108_091406_820802_3A44FF6B 
X-CRM114-Status: GOOD (  10.47  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] common: boards: qemu-virt: fix dtc warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

DTC complains about a Warning (chosen_node_is_root):

  /fragment@1/__overlay__/chosen: chosen node must be at root node

As /chosen is already available in the device tree of all of:

  - ARM 32-Bit QEMU Virt
  - ARM 64-Bit QEMU Virt
  - RISC-V 32-Bit QEMU Virt
  - RISC-V 64-Bit QEMU Virt

Just reference that in a new fragment to silence the warning.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boards/qemu-virt/overlay-of-flash.dts | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/common/boards/qemu-virt/overlay-of-flash.dts b/common/boards/qemu-virt/overlay-of-flash.dts
index b3cdf6893f8a..ace2c7026b7a 100644
--- a/common/boards/qemu-virt/overlay-of-flash.dts
+++ b/common/boards/qemu-virt/overlay-of-flash.dts
@@ -37,15 +37,20 @@
 			};
 		};
 	};
+
 	fragment@1 {
-		target-path="/";
+		target-path = "/chosen";
 		__overlay__ {
-			chosen {
-				environment {
-					compatible = "barebox,environment";
-					device-path = ENV_DEVICE_PATH;
-				};
+			environment {
+				compatible = "barebox,environment";
+				device-path = ENV_DEVICE_PATH;
 			};
+		};
+	};
+
+	fragment@2 {
+		target-path = "/";
+		__overlay__ {
 			aliases {
 				state = "/state";
 			};
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

