Delivery-date: Fri, 10 Feb 2023 23:50:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQcDk-003aUI-9M
	for lore@lore.pengutronix.de; Fri, 10 Feb 2023 23:50:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQcDh-0005Qx-D6
	for lore@pengutronix.de; Fri, 10 Feb 2023 23:50:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lLw1UhbM3mgQUkRHlh81q2GYH/DWUWsF29RRodf0Svg=; b=QrmOgsHURjDcOADHEdFptZkDTe
	57E2nGxLGMtgYgGuskYnyabBLcFx85G/jS88dssfWa2jg55OBzzfcUAvLmsMrO76PBGb50V6LTnkh
	icwVg32UlNtHkCT1LlCFiGzyM1KyoGLKrhvnPwAmEkW8cwtGiyLItdJzusAMvDS7oHgKtDUbGcupC
	jfR3iYlprZfrIZmbIxe8vZXLptnkeO7hAESuAXDVxGPbxIkZq8TssiilXzjJOGLGLlN2a+xPudCMo
	/JVxghDhU6DEHP3BDIGx9N8wpQYOygMUzSGV906n3Is2pkB4yofkwoykeWwrT0Tn9hii2TtgT0xgX
	SvOGwSpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQcCF-007pUi-U5; Fri, 10 Feb 2023 22:48:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQcC7-007pSw-Qy
	for barebox@lists.infradead.org; Fri, 10 Feb 2023 22:48:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1pQcC3-0005BP-6A; Fri, 10 Feb 2023 23:48:35 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1pQcC0-0045Ma-L4; Fri, 10 Feb 2023 23:48:33 +0100
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1pQcC0-00AteL-F9; Fri, 10 Feb 2023 23:48:32 +0100
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Fri, 10 Feb 2023 23:48:30 +0100
Message-Id: <20230210224831.2597135-1-rhi@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_144839_941464_651DB5ED 
X-CRM114-Status: GOOD (  11.04  )
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
Subject: [PATCH 1/2] Documentation: networking: resize reStructuredText table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Make more space for long lines which we'll add in the next commit.

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 Documentation/user/networking.rst | 38 +++++++++++++++----------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/Documentation/user/networking.rst b/Documentation/user/networking.rst
index 2306cb6a60d1..6bd16ea8d1bd 100644
--- a/Documentation/user/networking.rst
+++ b/Documentation/user/networking.rst
@@ -38,25 +38,25 @@ Network devices are configured with a set of device specific variables:
 Additionally there are some more variables that are not specific to a
 device:
 
-+------------------------------+--------------+------------------------------------------------+
-| name                         | type         |                                                |
-+==============================+==============+================================================+
-| global.net.gateway           | ipv4 host    | The network gateway used when a host is not in |
-|                              |              | any directly visible subnet. May be set        |
-|                              |              | automatically by DHCP.                         |
-+------------------------------+--------------+------------------------------------------------+
-| global.net.server            | hostname or  | The default server used by the defaultenv boot |
-|                              | ipv4 address | scripts for NFS and TFTP; see                  |
-|                              |              | :ref:`booting_linux_net`.                      |
-|                              |              | If unspecified, may be set by DHCP.            |
-+------------------------------+--------------+------------------------------------------------+
-| global.net.nameserver        | ipv4 address | The DNS server used for resolving host names.  |
-|                              |              | May be set by DHCP.                            |
-+------------------------------+--------------+------------------------------------------------+
-| global.net.ifup_force_detect | boolean      | Set to true if your network device is not      |
-|                              |              | detected automatically during start (i.e. for  |
-|                              |              | USB network adapters).                         |
-+------------------------------+--------------+------------------------------------------------+
++------------------------------+--------------+-------------------------------------------------------+
+| name                         | type         |                                                       |
++==============================+==============+=======================================================+
+| global.net.gateway           | ipv4 host    | The network gateway used when a host is not in        |
+|                              |              | any directly visible subnet. May be set               |
+|                              |              | automatically by DHCP.                                |
++------------------------------+--------------+-------------------------------------------------------+
+| global.net.server            | hostname or  | The default server used by the defaultenv boot        |
+|                              | ipv4 address | scripts for NFS and TFTP; see                         |
+|                              |              | :ref:`booting_linux_net`.                             |
+|                              |              | If unspecified, may be set by DHCP.                   |
++------------------------------+--------------+-------------------------------------------------------+
+| global.net.nameserver        | ipv4 address | The DNS server used for resolving host names.         |
+|                              |              | May be set by DHCP.                                   |
++------------------------------+--------------+-------------------------------------------------------+
+| global.net.ifup_force_detect | boolean      | Set to true if your network device is not             |
+|                              |              | detected automatically during start (i.e. for         |
+|                              |              | USB network adapters).                                |
++------------------------------+--------------+-------------------------------------------------------+
 
 The first step for networking is configuring the network device. The network
 device is usually ``eth0``. The current configuration can be viewed with the
-- 
2.30.2



