Delivery-date: Mon, 21 Oct 2024 17:31:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2uN7-00774G-0A
	for lore@lore.pengutronix.de;
	Mon, 21 Oct 2024 17:31:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2uN6-0001Yb-Dw
	for lore@pengutronix.de; Mon, 21 Oct 2024 17:31:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wRT3xBtt3mJTthEGoxw17p3Sn2PepC82iibpTPL6H9c=; b=i0veAUk8Ddi0fne/4xAo+b+J2S
	MgZYpj+HuRtauFbZ0uptF0SadYr7WSvJ9uuaNqpqaYs+cuH28IdQ0DI8+iWlz1eP0n/xSA6ncbozK
	qoFYiDCTFcavNApmQp6PCZAdYfl4LbmUkaXJ4FettJwgydzc/lN+FXhp5Z2NXazKLwEbczXyj7tTW
	xkmKsOvcR6kWYt0I6YM9qJktOg5TX5Q+9gfZHQ45fd05C8CysPS1+jX6eKNFfn7Cmw2Y8+GFvEdvm
	FHwHZq9sna/tJhecNPOzCw08jI2Ve9ToaX+s/jap94lD5FLZ4rOqKYgj6xgAPDNd5gQd/LY2Yn/NC
	dB1TXGTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2uML-00000007nAm-2JQe;
	Mon, 21 Oct 2024 15:30:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2uFR-00000007lpt-46nw
	for barebox@lists.infradead.org;
	Mon, 21 Oct 2024 15:23:46 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1t2uFP-0000pS-CN; Mon, 21 Oct 2024 17:23:07 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Mon, 21 Oct 2024 17:22:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241021-phytec-nfs-automount-v1-1-20787c288563@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIANFxFmcC/x3MQQqAIBBA0avErBtwJCq6SrQQG2sWaahFEd09a
 fkW/z+QOAonGKoHIp+SJPgCqiuwq/ELo8zFoJVuSGnCfb0zW/QuoTly2MLhM/aOjGqpI9trKOk
 e2cn1b8fpfT9nyr3NZgAAAA==
X-Change-ID: 20241021-phytec-nfs-automount-8f1a06171c82
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_082310_052937_0BADAE65 
X-CRM114-Status: UNSURE (   6.82  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] automount: add nfs section to board automount scripts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When nfs automount was introduced in b31b7cf7e8b6, board specific
automount scripts where not updated

---
Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 arch/arm/boards/at91sam9m10ihd/env/init/automount                  | 5 ++++-
 .../boards/efika-mx-smartbook/defaultenv-efikasb/init/automount    | 6 +++++-
 .../boards/phytec-som-imx6/defaultenv-physom-imx6/init/automount   | 7 ++++++-
 3 files changed, 15 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/at91sam9m10ihd/env/init/automount b/arch/arm/boards/at91sam9m10ihd/env/init/automount
index 96ffa7059aa8f0013d88b3a9cf8522f2cfd94e2b..e7bb1e79b1acca59c8f2113cc443c83f63be689c 100644
--- a/arch/arm/boards/at91sam9m10ihd/env/init/automount
+++ b/arch/arm/boards/at91sam9m10ihd/env/init/automount
@@ -5,7 +5,10 @@
 mkdir -p /mnt/tftp
 automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'
 
-# automount nfs server example
+# automount nfs server's nfsroot
+
+mkdir -p /mnt/nfs
+automount /mnt/nfs 'ifup -a1 && mount -t nfs ${global.net.server}:/home/${global.user}/nfsroot/${global.hostname} /mnt/nfs'
 
 # SD card slot, first partition
 mkdir -p /mnt/mmc
diff --git a/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/init/automount b/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/init/automount
index 71dfd95f2b9646d46809f12c283be3fa135ad410..9a6160231b27c133c8fb03883f44c7be22950d58 100644
--- a/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/init/automount
+++ b/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/init/automount
@@ -5,7 +5,11 @@
 mkdir -p /mnt/tftp
 automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'
 
-# automount nfs server example
+# automount nfs server's nfsroot
+
+mkdir -p /mnt/nfs
+automount /mnt/nfs 'ifup -a1 && mount -t nfs ${global.net.server}:/home/${global.user}/nfsroot/${global.hostname} /mnt/nfs'
+
 
 # internal harddisk /boot partition
 mkdir -p /mnt/internal-hd0.0
diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/init/automount b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/init/automount
index fea64d627e97e97ab4d819f532dc2f80da9247a9..16fa87fcb78ba90a1bc94908faf18c5f347e8ecc 100644
--- a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/init/automount
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/init/automount
@@ -1,10 +1,15 @@
 #!/bin/sh
 
-# automount tftp server based on $eth0.serverip
+# automount tftp server
 
 mkdir -p /mnt/tftp
 automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'
 
+# automount nfs server's nfsroot
+
+mkdir -p /mnt/nfs
+automount /mnt/nfs 'ifup -a && mount -t nfs ${global.net.server}:/home/${global.user}/nfsroot/${global.hostname} /mnt/nfs'
+
 mkdir -p /mnt/mmc
 automount -d /mnt/mmc 'mmc2.probe=1 && [ -e /dev/mmc2.0 ] && mount /dev/mmc2.0 /mnt/mmc'
 

---
base-commit: dda64a15ea026c95ccd8bd8a8b70c7e070af1a15
change-id: 20241021-phytec-nfs-automount-8f1a06171c82

Best regards,
-- 
Jonas Rebmann <jre@pengutronix.de>



