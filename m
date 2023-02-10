Delivery-date: Fri, 10 Feb 2023 23:50:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQcDi-003aTq-Np
	for lore@lore.pengutronix.de; Fri, 10 Feb 2023 23:50:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQcDf-0005Q6-MN
	for lore@pengutronix.de; Fri, 10 Feb 2023 23:50:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZyI+a3klvz1qntVrfD6+EGJ5Y6cx1aYJhTUB8FoxCgI=; b=ZT5B8CVEX5gzpA+3JrGhxSqZ75
	4q2OcCxK61qol/VKdiINv/E6xIwG4RW9r9JkgnkvdXL0oU+jQHMRIOq4zgzAGh5e7bycoqcyPBkaR
	J5hEN2C85pOfAklgqj5dmpRPnGeMuBsD6x0QoNhQk41BDOgYTD44wY5u2DjOGxPi0MZFt7erdW9qG
	1dGT3HMMsEBlHSN729aDKTTKQ+eH0qWvTn0B4BR3Tqx4GtukKvQak+kB3fZxrGSEJHe6BgluSxS/K
	PH653Zz4jE9X7ijUnQvDkPhQGlq6UNIHC1dPVSdpG3rd9ZMan/HZRrlaqcM5xZKLt7otySK2kOp6q
	5KNVXgyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQcCD-007pUF-HF; Fri, 10 Feb 2023 22:48:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQcC7-007pSv-Rc
	for barebox@lists.infradead.org; Fri, 10 Feb 2023 22:48:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1pQcC2-0005BO-Ek; Fri, 10 Feb 2023 23:48:34 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1pQcC0-0045MY-Jr; Fri, 10 Feb 2023 23:48:33 +0100
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1pQcC1-00AteO-4C; Fri, 10 Feb 2023 23:48:33 +0100
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Fri, 10 Feb 2023 23:48:31 +0100
Message-Id: <20230210224831.2597135-2-rhi@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230210224831.2597135-1-rhi@pengutronix.de>
References: <20230210224831.2597135-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_144839_914691_5E4B9FB9 
X-CRM114-Status: GOOD (  14.40  )
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
Subject: [PATCH 2/2] defaultenv: boot/net: allow customising NFS port and path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There are use cases where the port and mount path of the NFS root need
to be changed from the default values, e.g. with the userspace NFS
daemon used by 'ptxdist nfsroot', which tells you:

    Mount rootfs with nfsroot=/root,v3,tcp,port=13049,mountport=13049

(The port number can vary of course, depending on how many users on your
devel server have already started unfsd at the same time.)

Support such use cases by introducing two new variables for the port
number and the mount path, which get inserted into the kernel command
line. Use the old default mount path as fallback when the new variable
is not set.

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 Documentation/user/networking.rst     | 10 ++++++++++
 defaultenv/defaultenv-2-base/boot/net | 11 ++++++++++-
 2 files changed, 20 insertions(+), 1 deletion(-)

diff --git a/Documentation/user/networking.rst b/Documentation/user/networking.rst
index 6bd16ea8d1bd..e95957c0a26a 100644
--- a/Documentation/user/networking.rst
+++ b/Documentation/user/networking.rst
@@ -53,6 +53,16 @@ device:
 | global.net.nameserver        | ipv4 address | The DNS server used for resolving host names.         |
 |                              |              | May be set by DHCP.                                   |
 +------------------------------+--------------+-------------------------------------------------------+
+| global.net.nfspath           | string       | If set, determines the mount path of the root         |
+|                              |              | file system on the NFS server.                        |
+|                              |              | If not set, the default value                         |
+|                              |              | ``/home/${global.user}/nfsroot/${global.hostname}``   |
+|                              |              | is used.                                              |
++------------------------------+--------------+-------------------------------------------------------+
+| global.net.nfsport           | short        | If set, determines the port of the NFS server         |
+|                              |              | (the ``mountport`` and ``port`` arguments of the      |
+|                              |              | ``nfsroot`` parameter in the kernel command line).    |
++------------------------------+--------------+-------------------------------------------------------+
 | global.net.ifup_force_detect | boolean      | Set to true if your network device is not             |
 |                              |              | detected automatically during start (i.e. for         |
 |                              |              | USB network adapters).                                |
diff --git a/defaultenv/defaultenv-2-base/boot/net b/defaultenv/defaultenv-2-base/boot/net
index e79432eb277c..236955ef6fed 100644
--- a/defaultenv/defaultenv-2-base/boot/net
+++ b/defaultenv/defaultenv-2-base/boot/net
@@ -22,7 +22,16 @@ initramfs="${path}/${global.user}-initramfs-${global.hostname}"
 if [ -f "${initramfs}" ]; then
 	global.bootm.initrd="$initramfs"
 else
-	nfsroot="${nfsserver}:/home/${global.user}/nfsroot/${global.hostname}"
+	if [ -z "${global.net.nfspath}" ]; then
+		nfsroot="${nfsserver}:/home/${global.user}/nfsroot/${global.hostname}"
+	else
+		nfsroot="${nfsserver}:${global.net.nfspath}"
+	fi
+
+	if [ -n "${global.net.nfsport}" ]; then
+		nfsroot="${nfsroot},port=${global.net.nfsport},mountport=${global.net.nfsport}"
+	fi
+
 	ip_route_get -b ${global.net.server} global.linux.bootargs.dyn.ip
 	global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
 fi
-- 
2.30.2



