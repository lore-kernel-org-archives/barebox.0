Delivery-date: Fri, 15 Dec 2023 13:13:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rE744-003bVH-1D
	for lore@lore.pengutronix.de;
	Fri, 15 Dec 2023 13:13:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rE744-0002Uu-Mq
	for lore@pengutronix.de; Fri, 15 Dec 2023 13:13:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kfcT5x5sGud+yCA+LIq/m9jgrp2glhSfi+qs5/KdX8o=; b=aGLaRX5V+BvpKgAHw9LPdiplsT
	Oe2PlMSPULQdfX2Fr7BsYclH24NOH8oO5eJnNDnwx7NcY/Uq4UJxK1VKY1O+CNbTIgR2ZxUHsEx35
	bUyeNpDSwVlwLbKrT4tYBd+nbK4h6i79kUQKvQxPh3/kbZC0pzWNRkvZCZSF3wrUbJdXdIMMy0AZh
	sLmPhxTM5AJynVLH/9UsiJ2AXrm3zALEFeNckOOUDxvyf/Qha9+JsG9KH6lc0DU03VHRFH8qSxV8l
	gygnM0ctv8y6/0hX7DzpYUzmsqNW9EZi2NWukBsEIh53mEOJsvi3aa1LJVpBh+rsVu39ba9fAUuvj
	zc8jckqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rE72q-003BBc-2e;
	Fri, 15 Dec 2023 12:11:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rE72o-003BAJ-0d
	for barebox@lists.infradead.org;
	Fri, 15 Dec 2023 12:11:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rE72n-000289-0A; Fri, 15 Dec 2023 13:11:53 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rE72m-00G18o-JS; Fri, 15 Dec 2023 13:11:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rE72m-000EPO-1j;
	Fri, 15 Dec 2023 13:11:52 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Fri, 15 Dec 2023 13:11:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231215-doc-fit-images-for-chainloading-v1-1-9b704facdc3b@pengutronix.de>
References: <20231215-doc-fit-images-for-chainloading-v1-0-9b704facdc3b@pengutronix.de>
In-Reply-To: <20231215-doc-fit-images-for-chainloading-v1-0-9b704facdc3b@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_041154_231898_46D61270 
X-CRM114-Status: GOOD (  10.75  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] doc: user: barebox: bootz instead of bootm
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox-dt-2nd.img is in the `zImage` format, therefore use the proper
command for booting on 32-bit platforms.
---
 Documentation/user/barebox.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index 80f0f96a98..f4e600bde0 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -212,7 +212,7 @@ like a Linux kernel that is passed an external device tree. For example:
 
   U-Boot: tftp $kernel_addr barebox-dt-2nd.img
   U-Boot: tftp $fdt_addr my-board.dtb
-  U-Boot: bootm $kernel_addr - $fdt_addr # On 32-bit ARM
+  U-Boot: bootz $kernel_addr - $fdt_addr # On 32-bit ARM
   U-Boot: booti $kernel_addr - $fdt_addr # for other platforms
 
 For non-DT enabled-bootloaders or other architectures, often the normal barebox

-- 
2.39.2



