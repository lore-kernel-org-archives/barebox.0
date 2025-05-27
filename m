Delivery-date: Tue, 27 May 2025 08:27:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJnmc-000ljk-2e
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 08:27:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJnmc-0003HV-3J
	for lore@pengutronix.de; Tue, 27 May 2025 08:27:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Sb0+NaCoQPcWZU3/fjBnxEKKQ0n0NwpvqjkzfAv9zdM=; b=mLJlT0zo0NByhGA6P23XIb0CME
	mRnWEakJl/dyzGywYWbZsnQo/vjYhEtPbaq/U8vd9VtdfUpqGzxrpFEU1HR/C4khd94+guNavPkEM
	fLucPNPdjxpFBYkuj9iWlNcO9vUvZWQ5OXN9VGlK68y1kYbeEh7QJMbdcdVwazdJtHkYg+YC+qvhX
	GbuVTUW/fdTd5Axnk7a8zbcV/YkzP2CWauv/pOyIicHkRuUOGFbgJon+jKX2La5IB+4dElq3Z2/qb
	qHVr2nUYoyk/KN8AZoPgFeh9rlxsgKRNoa/EB3QpS5TgM6uAPeZCwsazGFr4TjkvLfF1KMLfLBNfx
	5MOkRT/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJnmC-0000000A21F-2wYW;
	Tue, 27 May 2025 06:27:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJnm6-0000000A1ui-3QCy
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 06:27:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ejo@pengutronix.de>)
	id 1uJnm4-0002wj-Dz; Tue, 27 May 2025 08:26:56 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ejo@pengutronix.de>)
	id 1uJnm4-000N9x-0k;
	Tue, 27 May 2025 08:26:56 +0200
Received: from ejo by dude06.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ejo@pengutronix.de>)
	id 1uJnm4-00C54U-0W;
	Tue, 27 May 2025 08:26:56 +0200
From: =?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ejo@pengutronix.de
Date: Tue, 27 May 2025 08:26:28 +0200
Message-Id: <20250527062632.2879361-1-ejo@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_232658_861196_35337054 
X-CRM114-Status: GOOD (  17.33  )
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
X-Spam-Status: No, score=-7.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] doc: user: barebox: improved and consistent markup for console examples
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This removes some unexpected highlighting, like for 'done' in the 'git
clone' output.

* Consistently use 'console' type for console output.
  'sh' is for shell scripts.
* Prefix all commands with prompt symbol "$", to have proper
  highlighting of variables, etc.
  Sphinx will ensure the resulting HTML lines are still copy+pastable.

Signed-off-by: Enrico Jörns <ejo@pengutronix.de>
---
 Documentation/user/barebox.rst | 66 +++++++++++++++++-----------------
 1 file changed, 34 insertions(+), 32 deletions(-)

diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index 338c2f5d03..983ebdee91 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -16,7 +16,7 @@ https://www.barebox.org/download/
 Development versions of barebox are accessible via Git. A local repository clone
 can be checked out as follows:
 
-.. code-block:: sh
+.. code-block:: console
 
   $ git clone git://git.pengutronix.de/git/barebox.git
   Cloning into 'barebox'...
@@ -34,7 +34,7 @@ barebox, this is the right branch to send patches against.
 If you want to see which patches are already selected for the next release,
 you can look at the ``next`` branch:
 
-.. code-block:: sh
+.. code-block:: console
 
   $ git checkout -b next origin/remotes/next
 
@@ -66,17 +66,17 @@ in your $PATH, just the prefix.
 
 Either export ``ARCH`` and ``CROSS_COMPILE`` once before working on barebox:
 
-.. code-block:: sh
+.. code-block:: console
 
-  export ARCH=arm
-  export CROSS_COMPILE=/path/to/arm-cortexa8-linux-gnueabihf-
-  make ...
+  $ export ARCH=arm
+  $ export CROSS_COMPILE=/path/to/arm-cortexa8-linux-gnueabihf-
+  $ make ...
 
 or add them to each invocation of the ``make`` command:
 
-.. code-block:: sh
+.. code-block:: console
 
-  ARCH=arm CROSS_COMPILE=/path/to/arm-cortexa8-linux-gnueabihf- make ...
+  $ ARCH=arm CROSS_COMPILE=/path/to/arm-cortexa8-linux-gnueabihf- make ...
 
 For readability, ARCH/CROSS_COMPILE are skipped from the following examples.
 
@@ -87,23 +87,23 @@ All configuration files can be found under the ``arch/${ARCH}/configs/``
 directory. For an overview of possible Make targets for your architecture,
 type:
 
-.. code-block:: sh
+.. code-block:: console
 
-  make help
+  $ make help
 
 Your output from ``make help`` will be based on the architecture you've
 selected via the ``ARCH`` variable. So if, for example, you had selected:
 
-.. code-block:: sh
+.. code-block:: console
 
-  export ARCH=mips
+  $ export ARCH=mips
 
 your help output would represent all of the generic (architecture-independent)
 targets, followed by the MIPS-specific ones:
 
-.. code-block:: sh
+.. code-block:: console
 
-  make [ARCH=mips] help
+  $ make [ARCH=mips] help
   ...
   ... list of generic targets ...
   ...
@@ -122,16 +122,16 @@ can't find your board in the list, it may be supported by one of the multi-board
 configs. As an example, this is the case for tegra_v7_defconfig and imx_v7_defconfig.
 Select your config with ``make <yourboard>_defconfig``:
 
-.. code-block:: sh
+.. code-block:: console
 
-  make imx_v7_defconfig
+  $ make imx_v7_defconfig
 
 The configuration can be further customized with one of the configuration frontends
 with the most popular being ``menuconfig``:
 
-.. code-block:: sh
+.. code-block:: console
 
-  make menuconfig
+  $ make menuconfig
 
 barebox uses the same configuration and build system as Linux (Kconfig,
 Kbuild), so you can use all the kernel config targets you already know, e.g.
@@ -149,9 +149,9 @@ Once you check out your barebox source directory, and before you do any
 configuration or building, set the environment variable ``KBUILD_OUTPUT``
 to point to your intended output directory, as in:
 
-.. code-block:: sh
+.. code-block:: console
 
-  export KBUILD_OUTPUT=.../my_barebox_build_directory
+  $ export KBUILD_OUTPUT=.../my_barebox_build_directory
 
 From that point on, all of the ``make`` commands you run in your source
 directory will generate their output in your specified output directory.
@@ -174,9 +174,9 @@ Compilation
 After barebox has been :ref:`configured <configuration>` it can be compiled
 simply with:
 
-.. code-block:: sh
+.. code-block:: console
 
-  make
+  $ make
 
 The resulting binary varies depending on the board barebox is compiled for.
 Without :ref:`multi_image` support the ``barebox-flash-image`` link will point
@@ -320,10 +320,12 @@ In addition to these barebox also builds host and target tools that are useful
 outside of barebox build: e.g. to manipulate the environment or to load an
 image over a boot ROM's USB recovery protocol. These tools may link against
 libraries, which are detected using ``PKG_CONFIG`` and ``CROSS_PKG_CONFIG``
-for native and cross build respectively. Their default values are::
+for native and cross build respectively. Their default values are:
+
+.. code-block:: console
 
-  PKG_CONFIG=pkg-config
-  CROSS_PKG_CONFIG=${CROSS_COMPILE}pkg-config
+  $ PKG_CONFIG=pkg-config
+  $ CROSS_PKG_CONFIG=${CROSS_COMPILE}pkg-config
 
 These can be overridden using environment or make variables.
 
@@ -340,9 +342,9 @@ about ``libusb-1.0``. This config won't build any target tools.
 
 .. code-block:: console
 
-  export ARCH=sandbox
-  make hosttools_defconfig
-  make scripts
+  $ export ARCH=sandbox
+  $ make hosttools_defconfig
+  $ make scripts
 
 Target Tools
 ^^^^^^^^^^^^
@@ -355,7 +357,7 @@ use. Example:
 
 .. code-block:: console
 
-  export ARCH=sandbox CROSS_COMPILE=aarch64-linux-gnu-
-  export CROSS_PKG_CONFIG=pkg-config
-  make targettools_defconfig
-  make scripts
+  $ export ARCH=sandbox CROSS_COMPILE=aarch64-linux-gnu-
+  $ export CROSS_PKG_CONFIG=pkg-config
+  $ make targettools_defconfig
+  $ make scripts
-- 
2.39.5



