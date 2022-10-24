Delivery-date: Mon, 24 Oct 2022 08:59:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omrQM-000MsA-Ik
	for lore@lore.pengutronix.de; Mon, 24 Oct 2022 08:59:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omrQL-0008Pk-2G
	for lore@pengutronix.de; Mon, 24 Oct 2022 08:59:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OYVfGLl8ITh+rFW4KcCi6mul83Xncs8bDJ2p07+knTA=; b=i2ikdNrVP9dmiAETHRJtTXGXHV
	5q0eGefbX3tjCxI3RVWccpeleue6l3lkvPcmd5x8Eq5qiUIrvGXiBiXbZ+88bsVht5cn9kPqxFq3s
	OAcQfwiLvwKQDkjZRvYJ1xzrm/MluJoBU5Dq851EB74ciMmodgHOJZKGMrSF41oF2LzLTgaH/Xu+g
	uQFKbdY4qgFlU53C9m8zLwfsEvTBzZqb+cO2mfdmO7khb5slzUbBHV4ziU9Ua7i+KWPCVGBOwQ2HH
	BwNaujcmRGpMzmOcjJxj5/5GNoz2F2LMsEh98tUKcosz9h2yt3yv6eybIFG2keIZJX4Le3rLEn9Un
	k+ei+AcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omrP6-00HMsT-2b; Mon, 24 Oct 2022 06:57:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omrOk-00HMiM-Th
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 06:57:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1omrOh-0007qT-8b
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 08:57:19 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1omrOh-0003rb-Eu
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 08:57:18 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1omrOf-00567d-KE
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 08:57:17 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 24 Oct 2022 08:57:16 +0200
Message-Id: <20221024065716.1215046-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221024065716.1215046-1-a.fatoum@pengutronix.de>
References: <20221024065716.1215046-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221023_235723_027567_3FE67736 
X-CRM114-Status: GOOD (  20.25  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 8/8] Documentation: devel: porting: bring it up-to-date
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

A number of changes happened since this guide was first drafted:

  - We no longer use inline assembly for the header on ARM64, which
    lacks __attribute__((naked))

  - FDT compression algorithm is no longer limited to LZO

Update the guide to reflect this and while at it, fix some typos.
---
 Documentation/devel/porting.rst | 26 ++++++++++++++++++--------
 1 file changed, 18 insertions(+), 8 deletions(-)

diff --git a/Documentation/devel/porting.rst b/Documentation/devel/porting.rst
index dea5ebd1c511..f95e8cbba3e4 100644
--- a/Documentation/devel/porting.rst
+++ b/Documentation/devel/porting.rst
@@ -195,14 +195,15 @@ Looking at other boards you might see some different patterns:
    by using ``ENTRY_FUNCTION_WITHSTACK``, which will take care to initialize the
    stack beforehand. If either a barebox assembly entry point,
    ``ENTRY_FUNCTION_WITHSTACK`` or earlier firmware has set up the stack, there is
-   no reason to use ``__naked``, just use ``ENTRY_FNCTION_WITHSTACK`` with a zero
+   no reason to use ``__naked``, just use ``ENTRY_FUNCTION_WITHSTACK`` with a zero
    stack top.
 
 ``noinline``
    Compiler code inlining is oblivious to stack manipulation in
    inline assembly. If you want to ensure a new function has its own stack frame
    (e.g. after setting up the stack in a ``__naked`` function), you must jump to
-   a ``__noreturn noinline`` function.
+   a ``__noreturn noinline`` function. This is already handled by
+   ``ENTRY_FUNCTION_WITHSTACK``.
 
 ``arm_setup_stack``
    For 32-bit ARM, ``arm_setup_stack`` initializes the stack
@@ -214,7 +215,7 @@ Looking at other boards you might see some different patterns:
 ``__dtb_z_my_board_start[];``
    Because the PBL normally doesn't parse anything out
    of the device tree blob, boards can benefit from keeping the device tree blob
-   compressed and only unpack it in barebox proper. Such LZO-compressed device trees
+   compressed and only unpack it in barebox proper. Such compressed device trees
    are prefixed with ``__dtb_z_``. It's usually a good idea to use this.
 
 ``imx6q_barebox_entry(...);``
@@ -232,7 +233,7 @@ Looking at other boards you might see some different patterns:
 
 ``*_start_image(...)/*_load_image(...)/*_xload_*(...)``
    If the SRAM couldn't fit both PBL and the compressed barebox proper, PBL
-   will need to chainload full barebox binary from disk.
+   will need to chainload full barebox binary from the boot medium.
 
 Repeating previous advice: The specifics about how different SoCs handle
 things can vary widely. You're best served by mimicking a similar recently
@@ -404,9 +405,18 @@ New header format
 =================
 
 Your loader may require a specific header or format. If the header is meant
-to be executable, it should preferably be added as inline assembly to
-the start of the PBL entry points. See ``__barebox_arm_head`` and
-``__barebox_riscv_header``. Otherwise, add a new tool to ``scripts/``
+to be executable, it should be written in assembly.
+If the C compiler for that platform supports ``__attribute__((naked))``, it
+can be written in inline assembly inside such a naked function. See for
+example ``__barebox_arm_head`` for ARM32 or ``__barebox_riscv_header`` for RISC-V.
+
+For platforms, without naked function support, inline assembly may not be used
+and the entry point should be written in a dedicated assembly file.
+This is the case with ARM64, see for example ``__barebox_arm64_head`` and the
+``ENTRY_PROC`` macro.
+
+Another way, which is often used for non-executable headers with extra
+meta-information like a checksum, is adding a new tool to ``scripts/``
 and have it run as part the image build process. ``images/`` contains
 various examples.
 
@@ -434,7 +444,7 @@ well as its prerequisites like clocks, resets or pin multiplexers.
 
 Examples for this are the i.MX xload functions. Some BootROMs boot from
 a FAT file system. There is vfat support in the PBL. Refer to the sama5d2
-baord support for an example.
+board support for an example.
 
 Core drivers
 ============
-- 
2.30.2



