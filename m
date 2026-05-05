Delivery-date: Tue, 05 May 2026 11:52:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKCSD-001CZC-1W
	for lore@lore.pengutronix.de;
	Tue, 05 May 2026 11:52:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKCS8-0003WG-Cv
	for lore@pengutronix.de; Tue, 05 May 2026 11:52:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HTuxH91k7VfvElv7Hy3gIxgwA1P4eEGr2bdc99jEMlc=; b=dHEbIHssp1Gbv15HhvjrBAixp2
	YjoSgjLJF/AfzP3rfIx0ii9hiPku3FyAmoSFL1X+FL1K5rl7VoIGWbl768OdaPWFbgAVebzdVaN6U
	6bdl4QKN16y44aqPz9i4ZAzotncMqiELrbkwbvymWupA+y6q/8fgkEbSvfiQDaI+XXb76mAKi/b/d
	NFGgnd+9oib6RfuVhrdP/WYI5S/WXXuc4giIie9jLkoAZ+v2hLmwBGCnpJ9Rt7gJmZYl+bpmw0B+q
	P87n3xit9r4eA4pM4evzAd4cUaBdnI9dNPaAdxH3wmGxxGBorw0g4RPcNNavzDKzxWlyxhitzZhwl
	8K9Yof/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKCRM-0000000Fhv4-2NAA;
	Tue, 05 May 2026 09:51:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKCRJ-0000000Fhth-0R02
	for barebox@lists.infradead.org;
	Tue, 05 May 2026 09:51:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wKCRG-000342-Qb; Tue, 05 May 2026 11:51:38 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wKCRG-000Yby-0a;
	Tue, 05 May 2026 11:51:38 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wKCRG-00000004iUp-2CPt;
	Tue, 05 May 2026 11:51:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  5 May 2026 11:50:58 +0200
Message-ID: <20260505095137.1123867-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260505095137.1123867-1-a.fatoum@pengutronix.de>
References: <20260505095137.1123867-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_025141_260029_37DE3B6A 
X-CRM114-Status: GOOD (  13.51  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] common: fix help text reference to internal imagicvars
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Both ${global.linux.bootargs.bootm.appendroot} and
${global.linux.bootargs.machine_id} are magic vars internally populated
by barebox to hold the computed root= or systemd.machine_id options.

They are out of place in the help text as they are an implementation
detail and not user API. In the case of CONFIG_MMCBLKDEV_ROOTARG, it's
even incorrect as the help text is talking about what a user can do to
trigger the root= appending and that should be either
global.bootm.appendroot=1 or adding linux-appendroot to the blspec file.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index fd422714d560..28a89265b386 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -769,7 +769,7 @@ config MMCBLKDEV_ROOTARG
 	  kernel doesn't contain commit [1]. The first linux kernel release
 	  containing that commit is v5.10-rc1.
 
-	  The appending only happens if barebox' 'linux.bootargs.bootm.appendroot'
+	  The appending only happens if barebox' 'global.bootm.appendroot'
 	  variable is set or the used blspec entry contains 'linux-appendroot'.
 
 	  Note: It is crucial that the kernel device tree and the barebox device
@@ -1285,8 +1285,9 @@ config MACHINE_ID
 	  updating barebox the machine id might change.
 
 	  global.bootm.provide_machine_id may be used to automatically set
-	  the linux.bootargs.machine_id global variable with a value of
-	  systemd.machine_id=${global.machine_id}
+	  fix up the kernel command line on boot with 
+
+	    systemd.machine_id=${global.machine_id}
 
 	  Note: if no hashable information is available no machine id will be passed
 	  to the kernel.
-- 
2.47.3



