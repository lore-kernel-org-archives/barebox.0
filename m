Delivery-date: Thu, 20 Mar 2025 06:20:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Ks-001l5U-0E
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 06:20:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Kq-0003ex-MW
	for lore@pengutronix.de; Thu, 20 Mar 2025 06:20:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eSmkERmpaiYiTolRnzVDaNoELUBDXhxyGHUbsGabnLc=; b=C0OVAN97jlz0qhHoqqn2MNQ0tD
	I29OtFr5D5faWyJ3zz+qH2VNom2zPjYfeIMQXYD6OxuarBXWkC/2WjzEl9hfyU4Sd7JLGoyHHb4r5
	yHRHpAHdwSugHrppbig8kfza5rdIZ7aPSXRbpRiCQpRL6+rAREc1RvNLTmcYTwhLco7U6HDHAsPad
	YGR7PYb9gLfw6gM8o3I1T0ug/8qCmSsK0UZVesemeFFyWqjUm7z0RnH0O99D2vdoVYAmde44apgKl
	oy63ayeaAy+m1BmFhpJZBPks4QOw1TM0nynfY28WR/fkh0xq2nWhOooWfEOcZ6H9nk85g9X7a5nkz
	P+QnzMVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8KS-0000000BCWv-0YMj;
	Thu, 20 Mar 2025 05:20:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8KM-0000000BCSB-08FA
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 05:20:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8KK-0003EF-RR; Thu, 20 Mar 2025 06:20:20 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8KK-000hvV-0i;
	Thu, 20 Mar 2025 06:20:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8KK-007GGZ-1n;
	Thu, 20 Mar 2025 06:20:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Mar 2025 06:20:19 +0100
Message-Id: <20250320052019.1726331-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250320052019.1726331-1-a.fatoum@pengutronix.de>
References: <20250320052019.1726331-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_222022_070695_56E24FCA 
X-CRM114-Status: GOOD (  13.66  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/6] Documentation: devel: add short section on file systems
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox has a lot of commands that can be used to exercise different
aspects of a file system. Add some documentation for that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devel/background-execution.rst |  2 +
 Documentation/devel/devel.rst                |  1 +
 Documentation/devel/filesystems.rst          | 73 ++++++++++++++++++++
 3 files changed, 76 insertions(+)
 create mode 100644 Documentation/devel/filesystems.rst

diff --git a/Documentation/devel/background-execution.rst b/Documentation/devel/background-execution.rst
index cf8675b9aa0e..e1e350785298 100644
--- a/Documentation/devel/background-execution.rst
+++ b/Documentation/devel/background-execution.rst
@@ -1,3 +1,5 @@
+.. _background_execution:
+
 Background execution in barebox
 ===============================
 
diff --git a/Documentation/devel/devel.rst b/Documentation/devel/devel.rst
index 39070074ca1b..3e9d44218334 100644
--- a/Documentation/devel/devel.rst
+++ b/Documentation/devel/devel.rst
@@ -9,6 +9,7 @@ Contents:
    :maxdepth: 2
 
    porting
+   filesystems
    background-execution
    project-ideas
 
diff --git a/Documentation/devel/filesystems.rst b/Documentation/devel/filesystems.rst
new file mode 100644
index 000000000000..454e736c701f
--- /dev/null
+++ b/Documentation/devel/filesystems.rst
@@ -0,0 +1,73 @@
+File system development in barebox
+==================================
+
+The barebox file system support is based heavily on Linux.
+
+Access to all file systems goes through the virtual file system
+layer, which provides uniform access to all mounted file systems
+under the same root.
+
+As power-fail safe writing of file system couldn't be guaranteed,
+most file systems supported by barebox are read-only.
+Safe writing is possible, however, via the :ref:`state_framework`.
+
+For an up-to-date listing of writable filesystems, refer to the
+``CONFIG_FS_WRITABLE`` Kconfig symbol.
+
+Testing File systems
+--------------------
+
+Nearly all file system operations have commands that directly exercise them:
+
++--------------------------+-----------------------------------------+
+| Command                  | Operations                              |
++==========================+=========================================+
+| :ref:`command_cat`       | ``open``, ``close``, ``read``           |
++--------------------------+-----------------------------------------+
+| :ref:`command_echo`      | ``create``, ``write``                   |
++--------------------------+-----------------------------------------+
+| :ref:`command_sync`      | ``flush``                               |
++--------------------------+-----------------------------------------+
+| :ref:`command_erase`     | ``erase``                               |
++--------------------------+-----------------------------------------+
+| :ref:`command_protect`   | ``protect``                             |
++--------------------------+-----------------------------------------+
+| :ref:`command_md`        | ``lseek``, ``memmap``                   |
++--------------------------+-----------------------------------------+
+| :ref:`command_rm`        | ``unlink``                              |
++--------------------------+-----------------------------------------+
+| :ref:`command_mkdir`     | ``mkdir``                               |
++--------------------------+-----------------------------------------+
+| :ref:`command_rmdir`     | ``rmdir``                               |
++--------------------------+-----------------------------------------+
+| :ref:`command_ln`        | ``symlink``                             |
++--------------------------+-----------------------------------------+
+| :ref:`command_readlink`  | ``readlink``                            |
++--------------------------+-----------------------------------------+
+| | :ref:`command_ls`      |  ``opendir``, ``readdir``, ``closedir`` |
+| | :ref:`command_tree`    |                                         |
++--------------------------+-----------------------------------------+
+| :ref:`command_stat`      | ``stat``                                |
++--------------------------+-----------------------------------------+
+| :ref:`command_truncate`  | ``truncate``                            |
++--------------------------+-----------------------------------------+
+
+This leaves two specialized operations that can't be easily tested
+via the shell:
+
+- ``discard_range``: Advise that a range need not be preserved
+- ``ioctl``: Issue device-specific output and input control commands
+
+Unused metadata
+---------------
+
+barebox currently ignores ownership and permission information
+inside file systems as well as special nodes like FIFOs or
+sockets. When porting file systems, these parts can be omitted.
+
+Background execution
+--------------------
+
+Outside command context (i.e. in
+:ref:`pollers and secondary barebox threads <background_execution>`),
+virtual file system access is only permitted with ramfs.
-- 
2.39.5



