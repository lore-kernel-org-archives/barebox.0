Delivery-date: Fri, 04 Jun 2021 10:33:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lp5Gy-000528-9i
	for lore@lore.pengutronix.de; Fri, 04 Jun 2021 10:33:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lp5Go-0007Ls-0L
	for lore@pengutronix.de; Fri, 04 Jun 2021 10:33:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gDQ/0PmsG4/m6ti4zDOP6AmqJkb6YqinvoY5Bxm5Lsk=; b=RR64K+GOCX1X2h
	qc0kkHs35rcw/38Tym4KLwHgjbvD3Dkbk2CjgbRyNR4aNuM5AZodi3BwFhkxVePP0G3nRSfSNv2b3
	mTNqBf184eIoY0NVYywzyGuHMRgD20zFCLtqIopXU4+hZ783CI9xJb9EaOfYuDYi/hU8X8d85Ic5N
	IOGCbF1DsURgANFUI9ds9IROkbfmFnUwxE98Z/AzE1wlLDpeVAWVNINUK5P7xDOP/xDKJTOrO6BoW
	iS935YevRMlZpQvYQLm5UmGS4AkqkNZutiNsbe+VVZmDtxve5MPqgf/R14Syt/w/A39iCARfikjf1
	eKjFSpINC7qNTKD0O0BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lp5F3-00CJ0u-M1; Fri, 04 Jun 2021 08:31:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lp5Ep-00CIxU-KU
 for barebox@lists.infradead.org; Fri, 04 Jun 2021 08:31:35 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lp5Eg-0006k8-94; Fri, 04 Jun 2021 10:31:22 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lp5Ef-0002mZ-CG; Fri, 04 Jun 2021 10:31:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri,  4 Jun 2021 10:31:02 +0200
Message-Id: <20210604083109.10581-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210604083109.10581-1-a.fatoum@pengutronix.de>
References: <20210604083109.10581-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210604_013131_702838_CA510AD7 
X-CRM114-Status: GOOD (  12.50  )
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
Cc: jmaselbas@kalray.eu, Ahmad Fatoum <a.fatoum@pengutronix.de>,
 rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 06/13] Documentation: boards: RISC-V: update TinyEMU support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Adding the tinyemu files as separate files and including them has the
nice benefit that temu users can just use these files directly instead
of copy pasting. While at it, update the section as input, as support
was added meanwhile.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/riscv.rst                | 20 +++++++++----------
 Documentation/boards/riscv/barebox-virt32.cfg |  7 +++++++
 Documentation/boards/riscv/barebox-virt64.cfg |  7 +++++++
 3 files changed, 24 insertions(+), 10 deletions(-)
 create mode 100644 Documentation/boards/riscv/barebox-virt32.cfg
 create mode 100644 Documentation/boards/riscv/barebox-virt64.cfg

diff --git a/Documentation/boards/riscv.rst b/Documentation/boards/riscv.rst
index 59cdc00a99e6..955a6fbb6bd1 100644
--- a/Documentation/boards/riscv.rst
+++ b/Documentation/boards/riscv.rst
@@ -41,25 +41,25 @@ TinyEMU
 -------
 
 TinyEMU can emulate a qemu-virt like machine with a RISC-V 32-, 64-
-and 128-bit CPU. It can run barebox with this sample configuration::
+and 128-bit CPU. It can run 32-bit barebox with this sample configuration:
 
-  /* temu barebox-virt64.cfg */
-  {
-      version: 1,
-      machine: "riscv64",
-      memory_size: 256,
-      bios: "bbl64.bin",
-      kernel: "./images/barebox-dt-2nd.img",
-  }
+.. literalinclude:: riscv/barebox-virt32.cfg
+
+as well as 64-bit barebox with this configuration:
+
+.. literalinclude:: riscv/barebox-virt64.cfg
 
 ``barebox-dt-2nd.img`` can be generated like with Qemu. Graphical
-output is also supported, but virtio input support is still missing.
+output and input are also supported.
 To activate add::
 
     display0: { device: "simplefb", width: 800, height: 600 },
+    input_device: "virtio",
 
 into the config file.
 
+See https://barebox.org/jsbarebox/?graphic=1 for a live example.
+
 Erizo
 -----
 
diff --git a/Documentation/boards/riscv/barebox-virt32.cfg b/Documentation/boards/riscv/barebox-virt32.cfg
new file mode 100644
index 000000000000..5f0eb34eee9c
--- /dev/null
+++ b/Documentation/boards/riscv/barebox-virt32.cfg
@@ -0,0 +1,7 @@
+{
+    version: 1,
+    machine: "riscv32",
+    memory_size: 256,
+    bios: "bbl32.bin",
+    kernel: "images/barebox-dt-2nd.img",
+}
diff --git a/Documentation/boards/riscv/barebox-virt64.cfg b/Documentation/boards/riscv/barebox-virt64.cfg
new file mode 100644
index 000000000000..45e1cd830802
--- /dev/null
+++ b/Documentation/boards/riscv/barebox-virt64.cfg
@@ -0,0 +1,7 @@
+{
+    version: 1,
+    machine: "riscv64",
+    memory_size: 256,
+    bios: "bbl64.bin",
+    kernel: "images/barebox-dt-2nd.img",
+}
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

