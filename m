Delivery-date: Mon, 06 Feb 2023 14:47:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pP1qS-00G0Xm-Ux
	for lore@lore.pengutronix.de; Mon, 06 Feb 2023 14:47:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pP1qQ-0006oj-96
	for lore@pengutronix.de; Mon, 06 Feb 2023 14:47:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6NnrQHf3qi1cRNq2iUB34/2oQjEWWGdMPig4MIz5ZUs=; b=4DLqS7dJQbS1l6NBJ19rW+v1aC
	s/Lyx0ZiuDC6mCszouoT4Jp7ByQuDshEMXEKO4z4g3rGt+raZIxFoR1wZnMO+6rWbGVjz6tCzsT+0
	Pb/ZKo8HRW9lA0OrfEyyrnkAu4hZCPf94ABY+HQAtpJuYY9yBavlM5pSepT9EtpA4o2zNg8Wy4N57
	ezF9Pe1bP1Wci6Gg1ODK3tB5MHbPDy+Pccol5qA4wnmOSpDvqAFezm6yPNrOPHe8/EDxzApffMUvf
	faf67vK/FvD3mkY1vnBvzl6wvCY/9JkkxPGgC5GF/pktpM8InoE2eyu2spgG96XOl2AlNAt5X5q1N
	aXR4JL5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP1oy-008f1w-Nl; Mon, 06 Feb 2023 13:46:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP1os-008f0G-Je
	for barebox@lists.infradead.org; Mon, 06 Feb 2023 13:46:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1pP1ol-0006Qy-LX; Mon, 06 Feb 2023 14:45:59 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1pP1oj-0034cK-QM; Mon, 06 Feb 2023 14:45:59 +0100
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1pP1ok-00DXkc-7H; Mon, 06 Feb 2023 14:45:58 +0100
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Mon,  6 Feb 2023 14:45:51 +0100
Message-Id: <20230206134551.3227602-1-rhi@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230206_054606_668130_F3F34621 
X-CRM114-Status: GOOD (  10.72  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: networking: improve net.* variable description
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 Documentation/user/booting-linux.rst |  2 ++
 Documentation/user/networking.rst    | 10 ++++++----
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 60babb513cea..1a95f87e77c4 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -232,6 +232,8 @@ device where the entry is found on. This makes it possible to use the same rootf
 image on different devices without having to specify a different root= option each
 time.
 
+.. _booting_linux_net:
+
 Network boot
 ------------
 
diff --git a/Documentation/user/networking.rst b/Documentation/user/networking.rst
index 9231ebde56ac..2306cb6a60d1 100644
--- a/Documentation/user/networking.rst
+++ b/Documentation/user/networking.rst
@@ -45,15 +45,17 @@ device:
 |                              |              | any directly visible subnet. May be set        |
 |                              |              | automatically by DHCP.                         |
 +------------------------------+--------------+------------------------------------------------+
-| global.net.server            | hostname or  | The default server. If unspecified, may be set |
-|                              | ipv4 address | by DHCP                                        |
+| global.net.server            | hostname or  | The default server used by the defaultenv boot |
+|                              | ipv4 address | scripts for NFS and TFTP; see                  |
+|                              |              | :ref:`booting_linux_net`.                      |
+|                              |              | If unspecified, may be set by DHCP.            |
 +------------------------------+--------------+------------------------------------------------+
 | global.net.nameserver        | ipv4 address | The DNS server used for resolving host names.  |
-|                              |              | May be set by DHCP                             |
+|                              |              | May be set by DHCP.                            |
 +------------------------------+--------------+------------------------------------------------+
 | global.net.ifup_force_detect | boolean      | Set to true if your network device is not      |
 |                              |              | detected automatically during start (i.e. for  |
-|                              |              | USB network adapters)                          |
+|                              |              | USB network adapters).                         |
 +------------------------------+--------------+------------------------------------------------+
 
 The first step for networking is configuring the network device. The network
-- 
2.30.2



