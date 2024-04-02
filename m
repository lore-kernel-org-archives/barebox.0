Delivery-date: Tue, 02 Apr 2024 15:45:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rreST-003eB0-01
	for lore@lore.pengutronix.de;
	Tue, 02 Apr 2024 15:45:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rreSS-0004ZN-7k
	for lore@pengutronix.de; Tue, 02 Apr 2024 15:45:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/LjgtZaVQmxK4+pLNOAO6DUFvZQuWY9R+Nn8wuuz4kE=; b=YfnfKOl1TLIRbEDWisjeVj4/kC
	aNWUFCZ8Yxcfk5Qiwa6bqPa+8SD0ZHSrIsTbW+NMRTHtFBj+nnLu/x00soPw9dgn2//Dymf/jHbpZ
	815vjCN/Vjfnmd4x4Mb3MTzUejJ/v82OLZVRxekFOuR6U1wmXdwJ2A2Hwe2cLoEcdvPnJ+Jm7MlNq
	XTtVqbGr3sFSS74sdu8p/bYD/Pr11dAbijIRaJCulBSwK5TaYqVT4Bz3MpLKbAofNJIOytr+s0ikG
	LAVeuHvebh2B8FzEHUi0i46CGEurjllsbsQ9Gr9eyn86H4/ZqS1sJmEjQ1FpzfOUzXu3A0WB/WvYQ
	FdpLMBGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rreRp-0000000BPmD-3iW2;
	Tue, 02 Apr 2024 13:45:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rreRl-0000000BPj5-0dDR
	for barebox@lists.infradead.org;
	Tue, 02 Apr 2024 13:45:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rreRi-0003XI-Fb; Tue, 02 Apr 2024 15:45:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rreRi-009zgb-2c; Tue, 02 Apr 2024 15:45:02 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rreRh-00FTlX-3B;
	Tue, 02 Apr 2024 15:45:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Apr 2024 15:45:01 +0200
Message-Id: <20240402134501.3689322-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240402134501.3689322-1-a.fatoum@pengutronix.de>
References: <20240402134501.3689322-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_064505_284137_F32DE750 
X-CRM114-Status: GOOD (  14.18  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 3/3] treewide: replace references to barebox.org/jsbarebox with demo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox.org/jsbarebox is now a HTTP 301 (Moved permanently) redirect to
barebox.org/demo. Change all references we have to the old URL.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/riscv.rst           | 2 +-
 Documentation/devel/project-ideas.rst    | 4 ++--
 README.md                                | 2 +-
 test/riscv/tinyemu@rv64i_defconfig.yaml  | 2 +-
 test/riscv/tinyemu@virt32_defconfig.yaml | 2 +-
 5 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/Documentation/boards/riscv.rst b/Documentation/boards/riscv.rst
index 92f663cfb9e6..990bd16a640d 100644
--- a/Documentation/boards/riscv.rst
+++ b/Documentation/boards/riscv.rst
@@ -58,7 +58,7 @@ To activate add::
 
 into the config file.
 
-See https://barebox.org/jsbarebox/?graphic=1 for a live example.
+See https://barebox.org/demo/?graphic=1 for a live example.
 
 BeagleV
 -------
diff --git a/Documentation/devel/project-ideas.rst b/Documentation/devel/project-ideas.rst
index d9957e409178..da146c3e520e 100644
--- a/Documentation/devel/project-ideas.rst
+++ b/Documentation/devel/project-ideas.rst
@@ -185,13 +185,13 @@ barebox to a new board, for new users who are only interested in
 trying it out: The browser runs Tinyemu, a virtual machine in which
 barebox executes as if on real hardware and the user can manipulate the
 (virtual) hardware from the barebox shell and learn about barebox
-conveniences: barebox.org/jsbarebox/
+conveniences: barebox.org/demo/
 
 The project is about streamlining this demo: CPU usage currently is
 quite high and teaching barebox to idle the CPU (as we do on sandbox)
 didn't help. This needs to be analyzed with the profiling tools
 provided with modern browsers. The remainder of the project can then
-focus on improving the jsbarebox tutorial. e.g. by adding new
+focus on improving the tutorial inside the demo. e.g. by adding new
 peripherals to the virtual machine.
 
 Expected outcome is snappier and less CPU-intensive barebox demo.
diff --git a/README.md b/README.md
index a668f8aee224..acb4a28a8b16 100644
--- a/README.md
+++ b/README.md
@@ -6,7 +6,7 @@ that integrates DOOM with the available barebox frameworks for framebuffer,
 input, file system and so on ... etc. This allows it to run everywhere
 where barebox is running, be it on a x86 laptop under UEFI, on industrial
 machinery or even a RISC-V emulator compiled to WebAssembly.
-Head over to [barebox.org](https://barebox.org/jsbarebox/?graphic=1) to try
+Head over to [barebox.org](https://barebox.org/demo/?graphic=1) to try
 the latter out.
 
 As barebox often functions as bare metal hardware bring up kit, it can
diff --git a/test/riscv/tinyemu@rv64i_defconfig.yaml b/test/riscv/tinyemu@rv64i_defconfig.yaml
index e9624160ef0a..cb22afc68528 100644
--- a/test/riscv/tinyemu@rv64i_defconfig.yaml
+++ b/test/riscv/tinyemu@rv64i_defconfig.yaml
@@ -13,7 +13,7 @@ targets:
       - virtio-mmio
     runner:
       download:
-        bbl64.bin: https://barebox.org/jsbarebox/bbl64.bin
+        bbl64.bin: https://barebox.org/demo/bbl64.bin
 images:
   barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
 tools:
diff --git a/test/riscv/tinyemu@virt32_defconfig.yaml b/test/riscv/tinyemu@virt32_defconfig.yaml
index 1102f36aca2b..bc6eada37684 100644
--- a/test/riscv/tinyemu@virt32_defconfig.yaml
+++ b/test/riscv/tinyemu@virt32_defconfig.yaml
@@ -13,7 +13,7 @@ targets:
       - virtio-mmio
     runner:
       download:
-        bbl32.bin: https://barebox.org/jsbarebox/bbl32.bin
+        bbl32.bin: https://barebox.org/demo/bbl32.bin
 images:
   barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
 tools:
-- 
2.39.2



