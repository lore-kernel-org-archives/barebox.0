Delivery-date: Thu, 17 Feb 2022 09:29:00 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nKc9s-001b2u-2Q
	for lore@lore.pengutronix.de; Thu, 17 Feb 2022 09:29:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nKc9p-00028g-Uv
	for lore@pengutronix.de; Thu, 17 Feb 2022 09:28:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wFAzdcntcOb80LSqNMDXWJAqUPrH5H8Ta68RzCgNHXk=; b=bqoDCmaolwjmO4
	EREBTeSDoCtwVDu1u7yu1w+ftz7CsHYmCFsROQ2nR9U7b4FfZXjA9KgXG7lWBi7gUyPy1rywtPpMR
	Xn4lwkZvp07JRHRscK5vjSlO5HwB9EPlqOCv/5izyu/hQUNpliI2ylY6j6NZYM6IeQLCzwKmzQ7Ua
	iy7mEgOLTUMu71hKlbDClQhpdmQ7U+0F/iYIJDvhcAj/JSi2IqGFfc0ODuNrnxQMcl5r54ER4zdpc
	NUf0AJXUV4kk+JyWjTt4BGIVLwbBYLUuK0QreLC9jBk7N99ppd4Q4q7gRtEy6hi3UEWxANoypaVtJ
	/ZI4VCDwPSu8/PJ2637A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKc8X-009PJx-8w; Thu, 17 Feb 2022 08:27:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKc8G-009PD6-CB
 for barebox@lists.infradead.org; Thu, 17 Feb 2022 08:27:22 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nKc8F-0001md-55; Thu, 17 Feb 2022 09:27:19 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nKc8E-000Lc5-M0; Thu, 17 Feb 2022 09:27:18 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 17 Feb 2022 09:27:14 +0100
Message-Id: <20220217082714.81749-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220217082714.81749-1-a.fatoum@pengutronix.de>
References: <20220217082714.81749-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220217_002720_642616_7C49C5F6 
X-CRM114-Status: GOOD (  30.38  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/1] Documentation: devel: add new project ideas section
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This section will collect ideas to improve barebox and should serve as a
pool of ideas for people who want to enter the field of firmware development
but need some guidance what to work on.

These tasks can be adopted as part of programs like Google Summer of Code
or by motivated individuals outside such programs.

It's structured after coreboot's

  https://doc.coreboot.org/contributing/project_ideas.html

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devel/devel.rst         |   1 +
 Documentation/devel/project-ideas.rst | 174 ++++++++++++++++++++++++++
 Documentation/user/introduction.rst   |   2 +
 3 files changed, 177 insertions(+)
 create mode 100644 Documentation/devel/project-ideas.rst

diff --git a/Documentation/devel/devel.rst b/Documentation/devel/devel.rst
index f703c3bf2767..39070074ca1b 100644
--- a/Documentation/devel/devel.rst
+++ b/Documentation/devel/devel.rst
@@ -10,6 +10,7 @@ Contents:
 
    porting
    background-execution
+   project-ideas
 
 * :ref:`search`
 * :ref:`genindex`
diff --git a/Documentation/devel/project-ideas.rst b/Documentation/devel/project-ideas.rst
new file mode 100644
index 000000000000..f27e4d5406fc
--- /dev/null
+++ b/Documentation/devel/project-ideas.rst
@@ -0,0 +1,174 @@
+#####################
+barebox Project Ideas
+#####################
+
+This section collects ideas to improve barebox and should serve as a pool
+of ideas for people who want to enter the field of firmware development
+but need some guidance what to work on.
+
+These tasks can be adopted as part of programs like Google Summer of Code
+or by motivated individuals outside such programs.
+
+If you find a project interesting and would like to work on it, reach out
+to the :ref:`mailing list <feedback>` and we can together
+try to figure out whether you are a good match for the project.
+
+This list can be edited and extended by sending patches to the mailing list.
+Other interesting ideas: Support for new file systems (EROFS, extfat, btrfs).
+Switch device framework (currently scripts write into a ``/dev/switch`` file
+to configure passthrough), Improvements for barebox-efi (e.g. as a coreboot
+payload), ... etc.
+
+Address static analyzer feedback for barebox
+============================================
+
+Skills: C
+
+barebox is automatically tested using Synopsys' free "Coverity Scan" service.
+The static analyzer has so far identified 191 possible defects at
+https://scan.coverity.com/projects/barebox
+
+There is a number of false positives there, but it already helped us
+find actual regressions, e.g. 610720857348 ("fs: ext4: fix bogus behavior
+on failure to read ext4 block").
+
+To make this service more useful, the project would involve categorizing
+reported issues and handling them as appropriate: Mark them as not applicable
+if false positive or provide patches to fix real issues.
+
+This project does not require dedicated hardware. QEMU or barebox built
+to run under Linux (sandbox) may be used.
+
+Update barebox networking stack for IPv6 support
+================================================
+
+Skills: C, Networking
+
+The barebox network stack is mainly used for TFTP and NFSv3 (over UDP) boot.
+Most embedded systems barebox runs on aren't deployed to IPv6 networks yet,
+so it's the right time now to future-proof and learn more about networking
+internals. One major complication with IPv6 support is neighbor discovery
+protocols that require networking to be possible "in the background".
+barebox' recent improvements of resource sharing and cooperative scheduling
+makes it possible to integrate an IPv6 stack, e.g. lwIP.
+
+There are also community patches to integrate a TCP stack into barebox.
+These can be evaluated as time allows.
+
+This project does not require dedicated hardware. QEMU or barebox built
+to run under Linux (sandbox) may be used.
+
+Improving barebox test coverage
+===============================
+
+Skills: C
+
+barebox is normally tested end-to-end as part of a deployed system.
+More selftests/emulated tests would reduce the round trip time for testing
+and thus enable more widely tested patches. A framework has been recently
+merged to enable this:
+
+    * Selftest similar to the kernel can be registered and run. These
+      directly interface with C-Code.
+    * Labgrid tests: These boot barebox in a virtual machine or on real
+      hardware and use the shell to test barebox behaviors.
+
+This project will focus on improving the testing coverage by writing more
+tests for barebox functionality and by fuzzing the parsers available in
+barebox, with special consideration to the FIT parser, which is used in
+secure booting setups.
+
+This project does not require dedicated hardware. QEMU or barebox built
+to run under Linux (sandbox) may be used.
+
+Porting barebox to new hardware
+===============================
+
+Skills: C, low-level affinity
+
+While Linux and Linux userspace can be quite generic with respect to the
+hardware it runs on, the bucket needs to stop somewhere: barebox needs
+detailed knowledge of the hardware to initialize it and to pass this
+along information to Linux. In this project, familiarity with barebox
+and a new unsupported SoC will be established with the goal of porting
+barebox to run on it. Prospective developers can suggest suitable
+hardware (boards/SoCs) they are interested in. Preference is for
+hardware, which is generally available and has more open documentation.
+
+The goal is to have enough support to run barebox on the board, set up
+RAM and load a kernel from non-volatile storage and boot it.
+
+If time allows (because most drivers are already available in barebox),
+new drivers can be ported to enable not only running Linux on the board,
+but bareDOOM as well.
+
+This project requires embedded hardware with preferably an ARM SoC, as
+these have the widest barebox support, but other architectures are ok
+as well.
+
+Improve barebox RISC-V support
+==============================
+
+Skills: C, RISC-V interest, low-level affinity
+
+barebox supports a number of both soft and hardRISC-V targets,
+e.g.: BeagleV, HiFive, LiteX and the QEMU/TinyEMU Virt machine.
+
+Unlike e.g. ARM and MIPS, RISC-V support is still in its formative
+stage, so much opportunity in implementing the gritty details:
+
+    - Physical memory protection in M-Mode to trap access violations
+    - MMU support in S-Mode to trap access violations
+    - Improve barebox support for multiple harts (hardware threads)
+
+This project does not require dedicated hardware. QEMU can be used.
+
+Improve barebox I/O performance
+===============================
+
+Skills: C, low-level affinity
+
+On a normal modern system, booting may involve mounting and traversing
+a file system, which employs caching for directory entries and sits
+on top of a block device which caches blocks previously read from the
+hardware driver, often by means of DMA. There are a number of improvements
+possible to increase throughput of barebox I/O:
+
+    - Support for higher MMC speed modes: The maximum currently supported
+      is 50/52 MHz and no DDR.
+    - More efficient erase: Communication protocols like Android Fastboot
+      encode large blocks of zeros specially. MMCs with erase-to-zero
+      capability could perform such erases in the background instead
+      of having to write big chunks of zeros.
+    - Block layer block sizes: There is a fixed block size used for
+      caching, which is meant to be a good compromise for read
+      and write performance. This may not be optimal for all devices
+      and can be revisited.
+
+This project requires embedded hardware with SD/eMMC that is supported
+by a barebox media card interface (MCI) driver.
+
+Improve JSBarebox, the barebox web demo
+=======================================
+
+Skills: C (Basics), Javascript/Web-assembly, Browser-Profiling
+
+While Linux and Linux userspace can be quite generic with respect to the
+hardware it runs on, the bucket needs to stop somewhere: barebox needs
+detailed knowledge of the hardware to initialize it and to pass this
+along information to Linux. JSBarebox removes the hurdle of porting
+barebox to a new board, for new users who are only interested in
+trying it out: The browser runs Tinyemu, a virtual machine in which
+barebox executes as if on real hardware and the user can manipulate the
+(virtual) hardware from the barebox shell and learn about barebox
+conveniences: barebox.org/jsbarebox/
+
+The project is about streamlining this demo: CPU usage currently is
+quite high and teaching barebox to idle the CPU (as we do on sandbox)
+didn't help. This needs to be analyzed with the profiling tools
+provided with modern browsers. The remainder of the project can then
+focus on improving the jsbarebox tutorial. e.g. by adding new
+peripherals to the virtual machine.
+
+This project does not require dedicated hardware. The development
+machine need only support a recent browser.
diff --git a/Documentation/user/introduction.rst b/Documentation/user/introduction.rst
index 523fe288f9fe..e7388b8bc95e 100644
--- a/Documentation/user/introduction.rst
+++ b/Documentation/user/introduction.rst
@@ -15,6 +15,8 @@ development binary as well as for lean production systems.
 Just like busybox is the Swiss Army Knife for embedded Linux,
 barebox is the Swiss Army Knife for bare metal, hence the name.
 
+.. _feedback:
+
 Feedback
 --------
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

