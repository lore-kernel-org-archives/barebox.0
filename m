Delivery-date: Wed, 25 Jun 2025 14:32:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUPIU-00AvhE-0m
	for lore@lore.pengutronix.de;
	Wed, 25 Jun 2025 14:32:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUPIT-00015A-LB
	for lore@pengutronix.de; Wed, 25 Jun 2025 14:32:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wDkaPHgzpkKZDuDel4aD3pnrC2oKt9UDBcbNYdJ3rj4=; b=tNsViTHPuNXGm2jOk2kftXFDyE
	cTMirr5j2YHNrm9Hs0o8RhH83uheGIqC36/sFqEj+4lC2eNf80In44v6IWbjG9IMeI/jmTOOINXf6
	hT905pqbwzRu0aZ2LZ9GRTnX+pZwmq689rJ3lrDvE/E61vuhvMoqZcRNRVRfezqtHZkYiphR38sYO
	Fak6g7whQg2PUlFgCD3WzCgmJ2mjs6vSXJb5PYTCEf+8B4MoiAE5yumSoabG1LeVF0hne4CpcGNOq
	S/UVwnG2waYdpAK8vaPF0mQmua2UB4Pkpv/OxxfYqNCdCdhhkN813sSMai6lmOi8BIcxp2WpdIMwt
	vZqWggmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUPHx-00000008dGr-1Sf4;
	Wed, 25 Jun 2025 12:31:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUNjJ-00000008N6w-3ZPT
	for barebox@lists.infradead.org;
	Wed, 25 Jun 2025 10:51:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1uUNjG-0001ZM-OA; Wed, 25 Jun 2025 12:51:46 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1uUNjG-005GZL-1m;
	Wed, 25 Jun 2025 12:51:46 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1uUNjG-00FDVr-1V;
	Wed, 25 Jun 2025 12:51:46 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Wed, 25 Jun 2025 12:51:45 +0200
Message-Id: <20250625105145.3626715-3-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250625105145.3626715-1-rhi@pengutronix.de>
References: <20250625105145.3626715-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_035149_932856_4737ACC3 
X-CRM114-Status: GOOD (  12.01  )
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
Subject: [PATCH 3/3] doc: user: net: document Fastboot over UDP usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 Documentation/user/networking.rst | 16 ++++++++++++++++
 Documentation/user/usb.rst        |  4 ++++
 2 files changed, 20 insertions(+)

diff --git a/Documentation/user/networking.rst b/Documentation/user/networking.rst
index 6997da10dbea..605936c6a895 100644
--- a/Documentation/user/networking.rst
+++ b/Documentation/user/networking.rst
@@ -203,6 +203,22 @@ The netconsole can be used just like any other console. Note, however, that the
 simple console protocol is UDP based, so there is no guarantee about packet
 loss.
 
+Fastboot over UDP
+-----------------
+
+When built with ``CONFIG_NET_FASTBOOT=y`` and the environment variable
+``fastboot.net.autostart`` is set to any non-empty value, barebox will
+listen for fastboot commands on UDP port 5554.
+You might need to configure a IP address first in order to use fastboot (e.g.
+via DHCP or statically; see above).
+
+Additionally, you have to configure at least the ``fastboot.partitions``
+variable, see :ref:`usbgadget_variables`.
+
+On your development host, use fastboot with the ``-s udp:<IP-address>``
+parameter, specifying the IP address of your board.
+See :ref:`fastboot` for more information about Fastboot usage.
+
 DSA (Distributed Switch Architecture) Support in Barebox
 --------------------------------------------------------
 
diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
index 43072be53db7..f233927656bc 100644
--- a/Documentation/user/usb.rst
+++ b/Documentation/user/usb.rst
@@ -153,6 +153,8 @@ barebox can provide a serial console over USB. This can be initialized with the
 :ref:`command_usbserial` command. Once the host is plugged in it should show a
 new serial device, on Linux for example ``/dev/ttyACM0``.
 
+.. _fastboot:
+
 Android Fastboot support
 ^^^^^^^^^^^^^^^^^^^^^^^^
 
@@ -307,6 +309,8 @@ chosen at boot time from other driver or script.
 To get usbgadget autostart support barebox has to be compiled with
 CONFIG_USB_GADGET_AUTOSTART enabled.
 
+.. _usbgadget_variables:
+
 USB Gadget autostart Options
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 
-- 
2.39.5



