Delivery-date: Wed, 02 Mar 2022 17:00:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPRP0-00Fdnr-G8
	for lore@lore.pengutronix.de; Wed, 02 Mar 2022 17:00:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPROy-0007ot-R0
	for lore@pengutronix.de; Wed, 02 Mar 2022 17:00:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xp9cML9se1/tILNRLZ2+lOc6Gjq8vGaPPsgimapDweU=; b=BvNF7MCHXTUOhq
	jVEkGzXfAfs9X0yRtqDBjW6C0Ifi8ZQvYmIjFmkw601504bPc+jFqI5fdx4Fdz6Vaci/JZSJddxQx
	Nl5DFEosLVmvmS4R7u+50cA3FNLbZtC7qw7o3Fwfa+cF9l3yS/NIp9Z/j0bcJQLgpX6JcYpjHcoxP
	OXOgNykFfezRo0PeR+bQbUxhI0iftCJ0K3fMRkIsjWQdkiFiluttvCsOFeRncOnAP2k/V8q0ieB7g
	eEObIA+mS2if2WCMBiWTgJnU0HRLWFeQMM0gCiUNEt3NE8QAnb8wvCFy1uNVfg6Q9Ihz2TVmReL2q
	70M3uWbfImqsGi8poSpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPRNR-003G3d-5L; Wed, 02 Mar 2022 15:58:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPRNL-003G2I-JL
 for barebox@lists.infradead.org; Wed, 02 Mar 2022 15:58:53 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nPRNI-0007b8-2s; Wed, 02 Mar 2022 16:58:48 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nPRNH-00CXtB-KF; Wed, 02 Mar 2022 16:58:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de, sha@pengutronix.de,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Mar 2022 16:58:46 +0100
Message-Id: <20220302155846.2990159-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_075851_849237_BBDD6D28 
X-CRM114-Status: GOOD (  20.73  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] Documentation: devel: project-ideas: align with GSoC
 guidelines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Google informed orgs for GSoC 2022 about required info for ideas list:

  As we state in the Defining a Project Idea List section of the Mentor
  guide, please provide the following information for each idea:

  a) a project title/description
  b) more detailed description of the project (2-5+ sentences)
  c) expected outcomes
  d) skills required/preferred
  e) possible mentors
  f) expected size of project (175 or 350 hour)
  g) an easy, medium or hard difficulty rating of each project.

We are nearly there, add the missing points.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devel/project-ideas.rst | 44 ++++++++++++++++++++++-----
 1 file changed, 37 insertions(+), 7 deletions(-)

diff --git a/Documentation/devel/project-ideas.rst b/Documentation/devel/project-ideas.rst
index f27e4d5406fc..a3643298ab08 100644
--- a/Documentation/devel/project-ideas.rst
+++ b/Documentation/devel/project-ideas.rst
@@ -13,16 +13,26 @@ If you find a project interesting and would like to work on it, reach out
 to the :ref:`mailing list <feedback>` and we can together
 try to figure out whether you are a good match for the project.
 
+For GSoC, following barebox developers are mentoring:
+
+  - Ahmad Fatoum (IRC: ``a3f``)
+  - Sascha Hauer (IRC: ``_sha_``)
+  - Rouven Czerwinski (IRC: ``Emantor``)
+
 This list can be edited and extended by sending patches to the mailing list.
 Other interesting ideas: Support for new file systems (EROFS, extfat, btrfs).
 Switch device framework (currently scripts write into a ``/dev/switch`` file
 to configure passthrough), Improvements for barebox-efi (e.g. as a coreboot
 payload), ... etc.
 
+Ideas listed below should contain a title, description, expected outcomes,
+skills (and HW if any) required and a difficulty rating.
+Projects are meant to be about 175 hours of effort, unless otherwise noted.
+
 Address static analyzer feedback for barebox
 ============================================
 
-Skills: C
+Skills: C. Difficulty: Lowest
 
 barebox is automatically tested using Synopsys' free "Coverity Scan" service.
 The static analyzer has so far identified 191 possible defects at
@@ -36,13 +46,15 @@ To make this service more useful, the project would involve categorizing
 reported issues and handling them as appropriate: Mark them as not applicable
 if false positive or provide patches to fix real issues.
 
+Expected outcome is that barebox is coverity-clean.
+
 This project does not require dedicated hardware. QEMU or barebox built
 to run under Linux (sandbox) may be used.
 
 Update barebox networking stack for IPv6 support
 ================================================
 
-Skills: C, Networking
+Skills: C, Networking. Difficulty: Medium
 
 The barebox network stack is mainly used for TFTP and NFSv3 (over UDP) boot.
 Most embedded systems barebox runs on aren't deployed to IPv6 networks yet,
@@ -55,13 +67,15 @@ makes it possible to integrate an IPv6 stack, e.g. lwIP.
 There are also community patches to integrate a TCP stack into barebox.
 These can be evaluated as time allows.
 
+Expected outcome is that barebox can TFTP/NFS boot over IPv6.
+
 This project does not require dedicated hardware. QEMU or barebox built
 to run under Linux (sandbox) may be used.
 
 Improving barebox test coverage
 ===============================
 
-Skills: C
+Skills: C. Difficulty: Lowest
 
 barebox is normally tested end-to-end as part of a deployed system.
 More selftests/emulated tests would reduce the round trip time for testing
@@ -78,13 +92,16 @@ tests for barebox functionality and by fuzzing the parsers available in
 barebox, with special consideration to the FIT parser, which is used in
 secure booting setups.
 
+Expected outcome is a richer test suite for barebox and an automated
+setup for fuzzing security-critical parsers.
+
 This project does not require dedicated hardware. QEMU or barebox built
 to run under Linux (sandbox) may be used.
 
 Porting barebox to new hardware
 ===============================
 
-Skills: C, low-level affinity
+Skills: C, low-level affinity. Difficulty: Medium
 
 While Linux and Linux userspace can be quite generic with respect to the
 hardware it runs on, the bucket needs to stop somewhere: barebox needs
@@ -102,6 +119,9 @@ If time allows (because most drivers are already available in barebox),
 new drivers can be ported to enable not only running Linux on the board,
 but bareDOOM as well.
 
+Expected outcome is upstreamed barebox drivers and board support to
+enable running on previously unsupported hardware.
+
 This project requires embedded hardware with preferably an ARM SoC, as
 these have the widest barebox support, but other architectures are ok
 as well.
@@ -109,7 +129,7 @@ as well.
 Improve barebox RISC-V support
 ==============================
 
-Skills: C, RISC-V interest, low-level affinity
+Skills: C, RISC-V interest, low-level affinity. Difficulty: Medium
 
 barebox supports a number of both soft and hardRISC-V targets,
 e.g.: BeagleV, HiFive, LiteX and the QEMU/TinyEMU Virt machine.
@@ -121,12 +141,16 @@ stage, so much opportunity in implementing the gritty details:
     - MMU support in S-Mode to trap access violations
     - Improve barebox support for multiple harts (hardware threads)
 
+Expected outcome is better RISC-V support: Access violations are
+trapped in both S- and M-Mode. Virtual memory is implemented and
+Linux can be booted on multiple harts.
+
 This project does not require dedicated hardware. QEMU can be used.
 
 Improve barebox I/O performance
 ===============================
 
-Skills: C, low-level affinity
+Skills: C, low-level affinity. Difficulty: Medium
 
 On a normal modern system, booting may involve mounting and traversing
 a file system, which employs caching for directory entries and sits
@@ -145,13 +169,15 @@ possible to increase throughput of barebox I/O:
       and write performance. This may not be optimal for all devices
       and can be revisited.
 
+Expected outcome is faster read/write/erasure of MMC block devices.
+
 This project requires embedded hardware with SD/eMMC that is supported
 by a barebox media card interface (MCI) driver.
 
 Improve JSBarebox, the barebox web demo
 =======================================
 
-Skills: C (Basics), Javascript/Web-assembly, Browser-Profiling
+Skills: C (Basics), Javascript/Web-assembly, Browser-Profiling. Difficulty: Medium
 
 While Linux and Linux userspace can be quite generic with respect to the
 hardware it runs on, the bucket needs to stop somewhere: barebox needs
@@ -170,5 +196,9 @@ provided with modern browsers. The remainder of the project can then
 focus on improving the jsbarebox tutorial. e.g. by adding new
 peripherals to the virtual machine.
 
+Expected outcome is snappier and less CPU-intensive barebox demo.
+TinyEMU is extended, so the RISC-V machine is more like real
+hardware and tutorial is extended to make use of the new pripherals.
+
 This project does not require dedicated hardware. The development
 machine need only support a recent browser.
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

