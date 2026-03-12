Delivery-date: Thu, 12 Mar 2026 16:03:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hZS-00Arhu-2u
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 16:03:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hZT-0000dk-4g
	for lore@pengutronix.de; Thu, 12 Mar 2026 16:03:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DLltlNaDsIYdYZowOxc+qfyTAaJ2HkBzVgPYeY9poyY=; b=iD+s/n9yyDUE81TOcPlSjCg4uq
	3vGdyGolzDEswAidvl0UZAh5CXj6IPzC8suszJ4vCKmxAd+96ogRZGo3RP3TtRr0P8uTcd3eFKXww
	UDK+3sIiRzoVkTBbJYClTt82L3HK00f07WxRGSQBgd0tnWPKoo0Tyy4BFEkRotJAKrFsO2YKYlbHN
	N5oaP1r7OjCkE9rHzvXBG+UmLjAfDvTuAstst5TdKUdQjCfvkMeHpz81uDbJxLq/5mChb6SDhskrD
	4Tff4jZlyqZYjw+FXmOA2MGulqoAvZHWr7g3h7hejeIVrNJ7Z0Hwu3AuKM8va1Wd+dakG+To8inhM
	4dnzk4WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hYa-0000000EI5Y-062I;
	Thu, 12 Mar 2026 15:02:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hYX-0000000EI37-2MbF
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 15:02:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hYV-0008VD-Vu; Thu, 12 Mar 2026 16:02:32 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hYU-0052Q1-1O;
	Thu, 12 Mar 2026 16:02:31 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHe-000000093tN-17DM;
	Thu, 12 Mar 2026 15:45:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Mar 2026 15:44:58 +0100
Message-ID: <20260312144505.2159816-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
References: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_080233_602682_CFBD4AC3 
X-CRM114-Status: GOOD (  16.24  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 15/16] Documentation: user: devboot: add section on forwarding build dirs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In case the kernel is built on a remote build server, it can be useful
for devboot to fetch directly from there with the TFTP server running in
the local LAN. Add some documentation about that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/devboot.rst | 53 ++++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/Documentation/user/devboot.rst b/Documentation/user/devboot.rst
index ad1b4c909ab0..4425f0ebe91a 100644
--- a/Documentation/user/devboot.rst
+++ b/Documentation/user/devboot.rst
@@ -202,3 +202,56 @@ script is loaded. Make them persistent with:
 
 ``global.hostname`` is typically derived from the device tree, but can be
 overridden.
+
+Forwarding a remote build directory over the internet
+^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
+
+If the build server is not reachable from the Device-Under-Test, one
+possibility is to forward the build artifacts to a local TFTP server
+via SSHFS::
+
+  sshfs -o follow_symlinks,allow_other buildserver:/tftpboot /tftpboot
+
+The local development host can then export /tftpboot via TFTP.
+
+If the TFTP server is not running on the local development host, the
+``dpipe`` utility can be used to connect a local SFTP server process to
+an SSH session that runs ``sshfs`` in slave mode on the remote machine:
+
+.. code-block:: sh
+
+  dpipe /usr/lib/openssh/sftp-server = ssh a3f@tftpserver.in-my.lan sshfs -o slave,follow_symlinks,allow_other -o idmap=user -o gid=1001 :/tftpboot /tftpboot
+
+This works as follows:
+
+- ``dpipe`` connects the standard input/output of both sides of ``=``.
+- The left side runs the local SFTP server, giving the remote end access
+  to the local filesystem.
+- The right side runs ``sshfs`` on the TFTP server host in ``slave``
+  mode, reading SFTP protocol directly from stdin instead of spawning its
+  own SSH connection.
+- ``follow_symlinks`` resolves symlinks on the build host, so the TFTP
+  server sees regular files even if the build tree uses symlinks.
+- ``allow_other`` permits the TFTP daemon (which typically runs as a
+  different user) to read the mounted files.
+- ``idmap=user`` maps the remote user's UID to the local user, avoiding
+  permission issues.
+- ``gid=1001`` sets the group ID for all files (adjust to match the
+  group that the TFTP daemon runs as on the server, e.g. ``tftp`` or
+  ``nogroup``).
+- The colon prefix in ``:/tftpboot`` refers to the root of the *local*
+  (build host) filesystem as exported by the SFTP server.
+
+The result is that ``/tftpboot`` on the remote TFTP server mirrors the
+``/tftpboot`` directory on the build host. Build output can be
+symlinked there and the board will fetch it directly over TFTP.
+
+To undo the mount, terminate the ``dpipe`` process and run
+``fusermount -u /tftpboot`` on the TFTP server.
+
+.. note::
+
+   On Debian/Ubuntu, ``dpipe`` can be installed via ``apt install vde2``
+   ``sshfs`` and ``fuse`` must be installed on the TFTP server.
+   ``/etc/fuse.conf`` on the server must have ``user_allow_other``
+   enabled for ``allow_other`` to work.
-- 
2.47.3



