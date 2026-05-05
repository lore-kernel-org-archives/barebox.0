Delivery-date: Tue, 05 May 2026 11:52:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKCSH-001CaE-1r
	for lore@lore.pengutronix.de;
	Tue, 05 May 2026 11:52:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKCSA-0003Wj-Cv
	for lore@pengutronix.de; Tue, 05 May 2026 11:52:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qvBo4Kun6UGQr0Pbz8QHGF9SeixfqwPjgOcX4bdLDKI=; b=YIv4qQcB5ih9LKig5cuT4yzzVs
	BkpwNNj0e7vKJzQ5wTDjzNSYAuC5fZCieB3E9D8eTZMw3YwYpdeyRALen2tXXaiQHhlLLsfA8V4FJ
	ICWf/+V71x5JlfzJUGy/MQrzW/+OjxBtzJKCn0Ri9bebtuSlBh57PFLvFYf/SA1ey897mXm313fWx
	3VentOIhi6vS6vlai0SyU/Zjwz3A9tHF99SmjxSCXj1epo15jMO3hf95gSaqVrLiKfF15V5IURMuz
	x5KJnkLmYS5FKOkEgCE/rGAZqOuclUkpjOJKPeAW+wLp3JPqfHc9RZZTIMZwcabvs5gHHjXKfKCk5
	kJvNJYcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKCRN-0000000FhvG-15aB;
	Tue, 05 May 2026 09:51:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKCRJ-0000000Fhtg-0QzA
	for barebox@lists.infradead.org;
	Tue, 05 May 2026 09:51:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wKCRG-000343-SI; Tue, 05 May 2026 11:51:38 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wKCRG-000Yc1-0k;
	Tue, 05 May 2026 11:51:38 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wKCRG-00000004iUp-2OoS;
	Tue, 05 May 2026 11:51:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  5 May 2026 11:50:59 +0200
Message-ID: <20260505095137.1123867-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260505095137.1123867-1-a.fatoum@pengutronix.de>
References: <20260505095137.1123867-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_025141_256081_974E79E9 
X-CRM114-Status: GOOD (  13.90  )
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
Subject: [PATCH 2/3] Documentation: user: booting-linux: split off mtdparts fixup section
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Specifying mtdparts on the command line instead of the device tree is
not as relevant nowadays, so move it into its own section at the end as
not to clutter the more relevant global.linux.bootargs section that is
going to be extended in a later commit.

While at it, extend it to cover the related blkdevparts as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/booting-linux.rst | 55 +++++++++++++++-------------
 1 file changed, 30 insertions(+), 25 deletions(-)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 3972777f30cf..cc0bdb4661ca 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -98,31 +98,6 @@ with ``global.linux.bootargs.`` will be concatenated to the bootargs:
 
   Kernel command line: console=ttymxc0,115200n8 earlyprintk ignore_loglevel
 
-Additionally all variables starting with ``global.linux.mtdparts.`` are concatenated
-to a ``mtdparts=`` parameter to the kernel. This makes it possible to consistently
-partition devices with the :ref:`command_addpart` command and pass the same string as used
-with addpart to the Kernel:
-
-.. code-block:: sh
-
-  norparts="512k(bootloader),512k(env),4M(kernel),-(root)"
-  nandparts="1M(bootloader),1M(env),4M(kernel),-(root)"
-
-  global linux.mtdparts.nor0="physmap-flash.0:$norparts"
-  global linux.mtdparts.nand0="mxc_nand:$nandparts"
-
-  addpart /dev/nor0 $norparts
-  addpart /dev/nand0 $nandparts
-
-  ...
-
-  bootm zImage
-
-  ...
-
-  Kernel command line: mtdparts=physmap-flash.0:512k(bootloader),512k(env),4M(kernel),-(root);
-			mxc_nand:1M(bootloader),1M(env),4M(kernel),-(root)
-
 Creating root= options for the Kernel
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 
@@ -380,3 +355,33 @@ If the preconfigured paths or names are not suitable, they can be adjusted in
 
 ``boot net`` will then retrieve the kernel (and also the device tree and
 initramfs, if used) over TFTP and boot it.
+
+mtdparts/blkdevparts fixup
+--------------------------
+
+All variables starting with ``global.linux.mtdparts.`` or ``global.linux.blkdevparts``
+are concatenated to a ``mtdparts=`` or ``blkdevparts=`` parameter to the
+kernel, respectively.
+This makes it possible to consistently partition devices with the :ref:`command_addpart`
+command and pass the same string as used with addpart to the Kernel:
+
+.. code-block:: sh
+
+  norparts="512k(bootloader),512k(env),4M(kernel),-(root)"
+  nandparts="1M(bootloader),1M(env),4M(kernel),-(root)"
+
+  global linux.mtdparts.nor0="physmap-flash.0:$norparts"
+  global linux.mtdparts.nand0="mxc_nand:$nandparts"
+
+  addpart /dev/nor0 $norparts
+  addpart /dev/nand0 $nandparts
+
+  ...
+
+  bootm zImage
+
+  ...
+
+  Kernel command line: mtdparts=physmap-flash.0:512k(bootloader),512k(env),4M(kernel),-(root);
+			mxc_nand:1M(bootloader),1M(env),4M(kernel),-(root)
+
-- 
2.47.3



