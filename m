Delivery-date: Mon, 05 Dec 2022 14:37:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2Bez-00Bdhe-Dv
	for lore@lore.pengutronix.de; Mon, 05 Dec 2022 14:37:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2Bey-0005Pl-WD
	for lore@pengutronix.de; Mon, 05 Dec 2022 14:37:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EfXGuK8iIeRD9K3Jz3kYpwbU8w8jSOmEjpjFfIsM2Qo=; b=upJbj7UVOP4TEjws7G8rJuLOAM
	kHNdvN0nTUxdOzLI1vhl9IQyhl31bdP2GaVHkSBrelVgSqvAwratFvhBDfp7GOIFsyWuUEvclpOHl
	U3h6o+HjDOKFXWIqTT1sQJ/Fz/6Wv/IAHIGAiWyOT4cATpOVHo4R5dZIVayKQidItBFsXMQ0pFx3o
	A/A+Wtl5x59G0TtOzaVqYISHaj8rYra39mNxvB813BWcuuu1fmqyKzSYhQE4w9MFFzncTgy100PH/
	vt/BZRsoKdQDn6CW9kM9EsVemKMQOnEccifaGWPxA4y/wk0n8jMnYh2HYNNhaIkq4hiNRyKjfj95P
	fpNzOQ+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2Bdi-003WB3-Eh; Mon, 05 Dec 2022 13:36:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2Bdd-003W6B-Og
	for barebox@lists.infradead.org; Mon, 05 Dec 2022 13:36:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p2Bdc-0005Gn-6C; Mon, 05 Dec 2022 14:36:04 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p2Bda-002U62-Ph; Mon, 05 Dec 2022 14:36:03 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p2Bda-00Cer2-Va; Mon, 05 Dec 2022 14:36:02 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Dec 2022 14:36:02 +0100
Message-Id: <20221205133602.3016471-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_053605_821896_E48D9629 
X-CRM114-Status: UNSURE (   9.20  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] common: boards: qemu-virt: fix env path for QEMU RISC-V
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

At least with QEMU emulator version 7.1.0 (Debian 1:7.1+dfsg-2+b2),
the flash node is no longer in /soc and is instead top-level like
ARM Virt. Fix the path in the overlay accordingly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boards/qemu-virt/overlay-of-flash.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/boards/qemu-virt/overlay-of-flash.dts b/common/boards/qemu-virt/overlay-of-flash.dts
index ace2c7026b7a..3f2beaac3798 100644
--- a/common/boards/qemu-virt/overlay-of-flash.dts
+++ b/common/boards/qemu-virt/overlay-of-flash.dts
@@ -4,8 +4,8 @@
 /plugin/;
 
 #ifdef RISCV_VIRT
-#define PARTS_TARGET_PATH	"/soc/flash@20000000"
-#define ENV_DEVICE_PATH		"/soc/flash@20000000/partitions/partition@3c00000"
+#define PARTS_TARGET_PATH	"/flash@20000000"
+#define ENV_DEVICE_PATH		"/flash@20000000/partitions/partition@3c00000"
 #else
 #define PARTS_TARGET_PATH	"/flash@0"
 #define ENV_DEVICE_PATH		"/flash@0/partitions/partition@3c00000"
-- 
2.30.2



