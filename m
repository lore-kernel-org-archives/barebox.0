Delivery-date: Mon, 26 Apr 2021 13:35:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lazWh-000387-Hj
	for lore@lore.pengutronix.de; Mon, 26 Apr 2021 13:35:43 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lazWg-0001YH-Ny
	for lore@pengutronix.de; Mon, 26 Apr 2021 13:35:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bgs8xiKEf6/zLxenOLVGJmDy9rRxglJvkrHWgKTmnEw=; b=OnBiiT7rvE50gDfS3+q/XoqXx
	dX0RIiS2h74NJ6svYLgsvQUSVuxrn3VGKMTT96qgQELiaVEGIP4njJ+upmK9GoxUauNTtuktb6WkP
	o1cu6w+RUh06lomtXJ7WIzZVvXRy88iH/kgbLhC4YhhukDH2A0FPQLQbItZ8yHbdBfpxRuXToI6X9
	yqkyju8yz1OhjraIJedPKF5qUpce32Nc8VfvpJdd7kUYT1D7vRcQu+3LxpuSZ4niHO1VKZF+zAShp
	v4syG5JYTyzDN70vAP5UkOQUX5L8EwDHKwQWpek+xgyFFjo7xcE4rn/NMKkR27cGrURJZelnSMWR3
	iCegOesxA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lazVX-007VXw-DW; Mon, 26 Apr 2021 11:34:31 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lazVT-007VXk-PE
 for barebox@desiato.infradead.org; Mon, 26 Apr 2021 11:34:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=sLpz25p9NQvQy80efgNxotMnH5CUXMIiC8WbxCmVtnw=; b=UnPyyy51OmPHA9pwdPfChqtJbz
 OEU84d+pOOGnh1ltNyCzpJ0wyk0fXMByipjG8illK/CbU7IrrT3E2vBDgQCmlVnmgcmIWgqgRzZ3P
 Q43U3i655cHlhQEOSiTAd4J4BH3vC/eTUc/PruALFrgfLfk6zuMnmRIiEi0WiSvWRx+VmovypPvBl
 cvJYxyf58hBVfMoSkNXGeIKbKUVs3lYygFcl/WIeX2o+AKzj02Qx49o69fqO3UuL3HW6BdNLkeEIc
 V3n9aqpI2w/WgBDhjVM+alVjwq2y0OR/WP94ZFJOeihsaDsXbaVNXZiPG20U8o88z3sRVY5lVmIMM
 FZKDEEHQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lazVR-00FvcP-AN
 for barebox@lists.infradead.org; Mon, 26 Apr 2021 11:34:26 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lazVI-0001Hb-2Z; Mon, 26 Apr 2021 13:34:16 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lazVH-0006Ws-PT; Mon, 26 Apr 2021 13:34:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	has@pengutronix.de
Date: Mon, 26 Apr 2021 13:34:08 +0200
Message-Id: <20210426113408.24903-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210426113408.24903-1-a.fatoum@pengutronix.de>
References: <20210426113408.24903-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210426_043425_375914_1894A4EE 
X-CRM114-Status: GOOD (  12.22  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 2/2] Documentation: user: watchdog: sync with current
 state
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Since most of the documentation was written, the watchdog framework
has gained three more device parameters. Document them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Cc: has@pengutronix.de
---
 Documentation/user/watchdog.rst | 36 +++++++++++++++++++++++++++++----
 1 file changed, 32 insertions(+), 4 deletions(-)

diff --git a/Documentation/user/watchdog.rst b/Documentation/user/watchdog.rst
index 02bd576a89c1..ff400317a0bc 100644
--- a/Documentation/user/watchdog.rst
+++ b/Documentation/user/watchdog.rst
@@ -57,6 +57,9 @@ measured in seconds:
   barebox@DPTechnics DPT-Module:/ devinfo wdog0
   Parameters:
     autoping: 1 (type: bool)
+    priority: 100 (type: uint32)
+    running: 1 (type: enum) (values: "unknown", "1", "0")
+    seconds_to_expire: 7 (type: uint32)
     timeout_cur: 7 (type: uint32)
     timeout_max: 10 (type: uint32)
 
@@ -67,6 +70,34 @@ Use barebox' environment to persist these changes between reboots:
   nv dev.wdog0.autoping=1
   nv dev.wdog0.timeout_cur=7
 
+Watchdog State
+~~~~~~~~~~~~~~
+
+To check whether a watchdog is currently running, the ``running`` device
+parameter can be consulted. Not all watchdog devices (or their drivers)
+provide the information whether a watchdog was running prior to barebox.
+In that case, the parameter will contain the value ``unknown``.
+
+Watchdogs started by barebox can be monitored using the
+``seconds_to_expire`` parameter. A well-behaving system of watchdog
+device, watchdog driver and clocksource should reset as soon as the
+count down reaches zero.
+
+To manually start a watchdog, :ref:`command_wd` can be used.
+
+Default Watchdog
+~~~~~~~~~~~~~~~~
+
+barebox supports multiple concurrent watchdogs. The default watchdog used
+with :ref:`command_wd`, ``boot.watchdog_timeout`` and :ref:`command_boot`'s
+``-w`` option is the one with the highest positive priority.
+If multiple watchdogs share the same priority, only one will be affected.
+
+The priority is initially set by drivers and can be overridden in the
+device tree or via the ``priority`` device parameter. Normally, watchdogs
+that have a wider effect should be given the higher priority (e.g.
+PMIC watchdog resetting the board vs. SoC's watchdog resetting only itself).
+
 Boot Watchdog Timeout
 ~~~~~~~~~~~~~~~~~~~~~
 
@@ -85,7 +116,4 @@ or persistently by
   nv boot.watchdog_timeout=10
 
 where the used value again is measured in seconds.
-
-On a system with multiple watchdogs, the watchdog with the highest positive
-priority is the one affected by the ``boot.watchdog_timeout`` parameter.  If
-multiple watchdogs share the same priority, only one will be started.
+Only the default watchdog will be started.
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

