Delivery-date: Wed, 05 Mar 2025 14:43:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpp1b-00ACXx-2x
	for lore@lore.pengutronix.de;
	Wed, 05 Mar 2025 14:43:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpp1a-0005fn-JF
	for lore@pengutronix.de; Wed, 05 Mar 2025 14:43:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=h3e5p+naFzVdJ/sFDyNjzAhXHkkGv8b/jkliCIGDxDw=; b=D+BmZdXD4sUcsTFAqfogyDPZkU
	8sCow8fFXCWOO6/IbFVcy72ub1ojM8X2X+yz0WpC8a9MDNa/J0U+AzoKtsKLn1los/frR7Y9gHm2H
	u2XXTEb1DgSbLJnKytF5o0w5/X4UcDQ8u0avDqgFyLvRkld8Z//puNixdd477H52H8VDvOARqFAbQ
	rr80IhGopJ+Ap/zIQNUBkXpYiwrRfyrMGkI1OXhzonpdwTxaIyeIAX7yJhAOwp/CsM4jzxJinUPJN
	sWkDUZMDb2h5/yUnc5lX1yxvEgsCva7GCvrReKql1ltcj1frX045dN8cuc/U0oKdKl8fSb3apurs5
	hwHTklIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpp16-00000008Dhn-3NRD;
	Wed, 05 Mar 2025 13:42:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpoWy-000000088aT-0ddT
	for barebox@lists.infradead.org;
	Wed, 05 Mar 2025 13:11:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tpoWw-0000SH-My; Wed, 05 Mar 2025 14:11:22 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tpoWw-0049Ch-1h;
	Wed, 05 Mar 2025 14:11:22 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tpoWw-00GiuE-1P;
	Wed, 05 Mar 2025 14:11:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  5 Mar 2025 14:11:21 +0100
Message-Id: <20250305131121.3985854-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_051124_188888_622CDF47 
X-CRM114-Status: GOOD (  13.95  )
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
Subject: [PATCH master] nfs: rename global.net.nfsport to global.nfs.port
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There's already precedence in global.tftp.windowsize, so global.nfs.port
is probably a better name than squeezing it into global.net.

This parameter is not yet in any release, so the fallout is fairly
limited.

While at it, mention it in the documentation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/booting-linux.rst | 15 ++++++++++++---
 Documentation/user/networking.rst    | 23 ++++++++++++++++++++---
 fs/nfs.c                             |  4 ++--
 3 files changed, 34 insertions(+), 8 deletions(-)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index b49b2c93b1f3..6c8d25a96c1e 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -231,9 +231,18 @@ The entry can be listed with the ``-l`` option:
 When the SD card shows up as ``mmc1`` in barebox, this entry can be booted with
 ``boot mmc1`` or by setting ``global.boot.default`` to ``mmc1``.
 
-A bootloader spec entry can also reside on an NFS server, in which case an
-`RFC 2224 <https://datatracker.ietf.org/doc/html/rfc2224>`__-compatible NFS URI
-must be passed to the boot command:
+A bootloader spec entry can also reside on an NFS server by pointing the boot
+command at the mount point
+(here the default :ref:`automount <network_filesystems_automounts>`):
+
+.. code-block:: sh
+
+  global.user=myself
+  boot /mnt/nfs
+
+Alternatively, the bootloader spec support also understands
+`RFC 2224 <https://datatracker.ietf.org/doc/html/rfc2224>`__-compatible
+NFS URIs, when passed to the :ref:`boot command <command_boot>`:
 
 .. code-block:: sh
 
diff --git a/Documentation/user/networking.rst b/Documentation/user/networking.rst
index 2306cb6a60d1..0adcff6954dc 100644
--- a/Documentation/user/networking.rst
+++ b/Documentation/user/networking.rst
@@ -150,9 +150,26 @@ or
 
   mount -t nfs 192.168.2.1:/export none /mnt
 
-**NOTE:** The execution of the mount command can often be hidden behind the
-:ref:`automount command <command_automount>`, to make mounting transparent to
-the user.
+.. _network_filesystems_automounts:
+
+Automounts
+^^^^^^^^^^
+
+For user convenience, the default ``automount`` init script runs
+the :ref:`automount command <command_automount>` to create automounts for
+both TFTP and NFS. On first access, an Ethernet interface will be brought
+up and file operations will be forwarded to a host specified by global
+variables:
+
+- ``/mnt/tftp``: will use ``$global.net.server`` as TFTP server
+
+- ``/mnt/nfs``: will use ``$global.net.server`` as NFS server
+  and ``/home/${global.user}/nfsroot/${global.hostname}`` as nfsroot.
+  By default, a RPC lookup will be conducted to determine mount and
+  NFS ports, but these can be overridden together using a user-specified
+  by means of ``global.nfs.port``. The latter is equivalent to specifying
+  ``-o port=$global.nfs.port,mountport=$global.nfs.port`` as argument
+  to the :ref:`mount command <command_mount>`.
 
 Network console
 ---------------
diff --git a/fs/nfs.c b/fs/nfs.c
index 530d9c6672d8..bc3ab3aa8e87 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -1567,11 +1567,11 @@ static int nfs_init(void)
 	rootnfsopts = xstrdup("v3,tcp");
 
 	globalvar_add_simple_string("linux.rootnfsopts", &rootnfsopts);
-	globalvar_add_simple_int("net.nfsport", &nfsport_default, "%d");
+	globalvar_add_simple_int("nfs.port", &nfsport_default, "%d");
 
 	return register_fs_driver(&nfs_driver);
 }
 coredevice_initcall(nfs_init);
 
-BAREBOX_MAGICVAR(global.net.nfsport,
+BAREBOX_MAGICVAR(global.nfs.port,
 		 "Sets both NFS -o {port.mountport}= to the specified non-zero value");
-- 
2.39.5



