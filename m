Delivery-date: Wed, 25 Jun 2025 14:32:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUPIX-00Avhe-36
	for lore@lore.pengutronix.de;
	Wed, 25 Jun 2025 14:32:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUPIU-00015i-My
	for lore@pengutronix.de; Wed, 25 Jun 2025 14:32:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8E2H+OnLyZAB39y8pOkAM0DQN3+3CPt9XdO8U2zYzVQ=; b=kh/StIsS1HZpG4ou65kNyn28tX
	c2vFzjAae7RTAmh7wGWWn1Xy7TGY+SOJbFDX3M77SSYMVXJmoQyWaRzxOR/p6QYxCL8dUteQ4p7M6
	rHwJ8XYAp0YDtJuMlpgoS9xLM6yMG7qoMYzBNYNFa/zXZEz+IPUCZ379NyWMx169t689p5H9SsKmZ
	Lk36PTmBXmSZ1sowE6IQKsMmYH/WWThVs2YlRvqnJ/NpxhoHlAJh93evZ5DzoU7zlv0NAuUc4FdRk
	ZepCZss4qzKKy0HkifIaZGZnmre6kfRfiA3QhPKZkZLeBfxP4HIXXviAwCf75i9NrTrIkKdAWQHvu
	jVo0dh/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUPHw-00000008dG8-0zTn;
	Wed, 25 Jun 2025 12:31:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUNjJ-00000008N6v-3bog
	for barebox@lists.infradead.org;
	Wed, 25 Jun 2025 10:51:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1uUNjG-0001ZK-Nz; Wed, 25 Jun 2025 12:51:46 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1uUNjG-005GZK-1i;
	Wed, 25 Jun 2025 12:51:46 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1uUNjG-00FDVp-1S;
	Wed, 25 Jun 2025 12:51:46 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Wed, 25 Jun 2025 12:51:44 +0200
Message-Id: <20250625105145.3626715-2-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250625105145.3626715-1-rhi@pengutronix.de>
References: <20250625105145.3626715-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_035149_907726_067FB4E3 
X-CRM114-Status: UNSURE (   8.73  )
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
Subject: [PATCH 2/3] doc: user: usb: link to syntax when explaining the partition variables
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 Documentation/user/usb.rst | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
index 7eb360d629c9..43072be53db7 100644
--- a/Documentation/user/usb.rst
+++ b/Documentation/user/usb.rst
@@ -51,6 +51,8 @@ the :ref:`command_usbgadget` commands supports registering composite gadgets, wh
 exports multiple functions at once. This happens in the "background" without impacting
 use of the shell.
 
+.. _usbgadget_partitions:
+
 Partition description
 ^^^^^^^^^^^^^^^^^^^^^
 
@@ -316,12 +318,16 @@ USB Gadget autostart Options
   See :ref:`command_usbgadget` -a. (Default 0).
 ``global.system.partitions``
   Common function description for all of DFU, fastboot and USB mass storage
-  gadgets. Both Fastboot and DFU partitions also have dedicated override
+  gadgets.
+  See :ref:`usbgadget_partitions` above for the syntax.
+  Both Fastboot and DFU partitions also have dedicated override
   variables for backwards-compatibility:
 
 ``global.usbgadget.dfu_function``
-  Function description for DFU. See :ref:`command_usbgadget` -D [desc].
+  Function description for DFU. See :ref:`command_usbgadget` -D [desc],
+  and :ref:`usbgadget_partitions` above for the syntax.
 ``global.fastboot.partitions``
-  Function description for fastboot. See :ref:`command_usbgadget` -A [desc].
+  Function description for fastboot. See :ref:`command_usbgadget` -A [desc],
+  and :ref:`usbgadget_partitions` above for the syntax.
 ``global.fastboot.bbu``
   Export barebox update handlers. See :ref:`command_usbgadget` -b. (Default 0).
-- 
2.39.5



