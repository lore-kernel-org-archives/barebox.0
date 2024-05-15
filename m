Delivery-date: Wed, 15 May 2024 13:19:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7Cfc-00FjDr-0k
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 13:19:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7Cfb-0003Ye-KL
	for lore@pengutronix.de; Wed, 15 May 2024 13:19:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nKtuzwrtsY2mE7OP2duzjeY1gZVjW0ptXx+x1myd2PQ=; b=ay0XXnRLydn9XNyoem4jW5jjTg
	m0LsQI8uo5zTRFVl4CsyL6efiGUXiuLMoMyfUGueCK3DvG44uv1Cmb3s+vLy4tKcfkboDCNAaBS53
	lRL+Zf5NxZvMHxpln5r7/JBdCLNilKf7A6BCC1FJ3MuFnLtws/7AJqHqonqGxrwBV1fAZQbrixVyC
	nZKJvxOp4pLBemEgiKelwrJAXbvidQX4S+aJ2+hH+I8+qykNrLgikOLn0ERQlgOfr8IZ3lMgrAiz1
	H3/uirRodGw11FcRmnUi6MxkZxI34vbwyvjhkfN8kxWq9wSn4KATBbO8d29dSZzV8oOi5h5SLvQy7
	hfe3H51Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Cf7-00000001L7j-0Mwo;
	Wed, 15 May 2024 11:19:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Cf3-00000001L6o-0etj
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 11:19:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7Cf1-0003Ob-Mr; Wed, 15 May 2024 13:19:03 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7Cf1-001WWy-AE; Wed, 15 May 2024 13:19:03 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7Cf1-001C2m-0j;
	Wed, 15 May 2024 13:19:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 May 2024 13:19:02 +0200
Message-Id: <20240515111902.284612-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_041905_215276_BE6422FC 
X-CRM114-Status: GOOD (  14.51  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: pstore: add some information about interfacing with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The help text erroneously states that CONFIG_FS_PSTORE_RAMOOPS_RO
disables writing completely, but this is not correct: It merely stops
barebox from zapping log content previously written by Linux.

The Kconfig help text is correct, so adjust the documentation to reflect
that and while at it, add some more information about how to access
pstore in Linux.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/filesystems/pstore.rst | 29 +++++++++++++++++++++++-----
 1 file changed, 24 insertions(+), 5 deletions(-)

diff --git a/Documentation/filesystems/pstore.rst b/Documentation/filesystems/pstore.rst
index b8c2cb825ced..e16c4f35e704 100644
--- a/Documentation/filesystems/pstore.rst
+++ b/Documentation/filesystems/pstore.rst
@@ -73,11 +73,30 @@ in the Barebox shell. The RAMOOPS area is listed as 'persistent ram':
     0x2fee4000 - 0x2fee7fff (size 0x00004000) ttb
     0x2fee8000 - 0x2feeffff (size 0x00008000) stack
 
-All pstore files that could be found are added to the /pstore directory. This is
-a read-only filesystem. If you disable the Kconfig option FS_PSTORE_RAMOOPS_RO,
-the RAMOOPS area is reset and its ECC recalculated. But that does not allow any
-writes from Barebox into that area.
-
 If the menu entry ``FS_PSTORE_CONSOLE`` is enabled, Barebox itself will add all
 its own console output to the *ramoops:console* part, which enables the regular
 userland later on to have access to the bootloaders output.
+
+All pstore files that could be found are added to the /pstore directory. This is
+a read-only filesystem with the only supported operation being unlinking:
+This resets (zaps) the RAMOOPS area and recalculates the ECC.
+
+Zapping is done automatically, if the menu entry ``FS_PSTORE_RAMOOPS_RO`` is
+disabled. In this case, only the barebox log will be available to the kernel
+and ramoops from previous boots will not survive.
+
+The usual setup is to not zap any buffers, i.e. ``CONFIG_FS_PSTORE_RAMOOPS_RO=y``
+and no manual unlinking of files in ``/pstore``.
+
+In Linux, the pstore file system is often mounted at ``/sys/fs/pstore``.
+This will often not contain older output as Linux frequently zaps ramoops
+buffers to conserve the limited space.
+
+To counteract this, userland needs to archive the pstore contents
+after booting into Linux and then clear pstore. Systemd has built-in support
+for this when compiled with ``-Dpstore=true``.
+
+Logs (including barebox log messages if enabled) will then be written to
+journal by default and are accessible via::
+
+  journalctl -b -o verbose -a -t systemd-pstore
-- 
2.39.2



