Delivery-date: Tue, 27 Oct 2026 14:25:22 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLhB4-003vte-01
	for lore@lore.pengutronix.de;
	Tue, 27 Oct 2026 14:25:22 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B634720292B
	for <lore@pengutronix.de>; Tue, 27 Oct 2026 14:25:21 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=T2FowD0T;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ZNY0GHcx;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793107522; a=rsa-sha256;
	cv=pass;
	b=UrSAAJFxyCWDb++EqqkNq4GWZ3uhKJkeY9gphv9c/4q0kEjTSaakUE1I7vDlvldvv8b/KR
	sXvmb5+LLbmZHQxNRIa1dv3D9KarZGkyTT9UZtuUla5spYCWVoOOJWojsO8kGa77aJ/1Y9
	IPK2oUfKag19cGSylWkPS9qFoYBvEPcPBq0hAb4YIcg6TldpB/Lx2Eh/cD6CSV1v46d7MJ
	BdGTBEkZ/ahoiNmrfhvkczuZiAHFRzrNILQ/HululZfrUIc09jr11bvk2pRuqQqFzRHYPP
	GCl/j3HvZ1/PHb7NrYNkWRRxWP1dGp3YPfkdx6/v6pMwcyy1rxK8oELFkmGStQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=T2FowD0T;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ZNY0GHcx;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793107522;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=F2CRrC2CZvHfZrJGbFgofQ5FcXK4PppN2nh7xhFjR8s=;
	b=WhNIZyrizF/Lvu8lIWFb3DBrLAyBmKgU4Za5s6pjKIltPKtuUpgDwK7RzMiYuUgxT7GjSr
	jhVyp09c5IrN9sf9JBINQ5+UyQudiE2NowOJeBjFDUcoHkHLGNStLFP7fDImQmToPBilIu
	xYFzz76xbvpukatTHEanPsqdSeUOskCxqqw1++eWpUmCJdswFgW4W/W37Lwa/KD5aKCgKe
	SSv5L1Xngw9qvQYkI3vbyFNbFUKEg/pcZZDSYvlOo84CsvVeOsIMcM2XotFxJ2Y4noCSxU
	HRvc3uOYFTeJ3d34NoLRNBMXSs7hwZOCXNqpQAq3gzICxiKM6f1FeSnWlhrsVg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=F2CRrC2CZvHfZrJGbFgofQ5FcXK4PppN2nh7xhFjR8s=; b=T2FowD0TLDxSqb
	B3y6GPll1eq8gjIl9mcfVmG1mXofJ+nmMpf0hQBfApVefsAYwhVPi2Onsih/i0RSzanKFD+dML9aO
	AK7Drde7mFiGHrfu/tXb1Sw9eGTIquriWjcWSOYHY0zKpRzC5fpCLk1akpk5cuN6MFPRXJGaxfs4M
	mIIf1I4bu9eMoViSRkLLgHokfy03OHGA6HRb3Y1bighOaY+Qsg1veCp9UlPNpCu+iRxA6K8BM5Bvk
	/cG8AbI/cflN4huxwMvM1/vneCsWbtVI2FlOkJ9ylm0In6UhYVxP1LDs1yYXuj2r4qJZam21Ohxr/
	s/gllEm/2B5Y+tCGq/xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLh9u-00000004q68-1QkO;
	Tue, 27 Oct 2026 13:24:10 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLh9n-00000004pzh-28Me
	for barebox@lists.infradead.org;
	Tue, 27 Oct 2026 13:24:06 +0000
Received: from ratatoskr.trumtrar.info (unknown [IPv6:2a00:1f:f805:2b01:a03:2f4:308a:7b52])
	(Authenticated sender: str@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 752F1202930;
	Tue, 27 Oct 2026 14:23:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793107439;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=F2CRrC2CZvHfZrJGbFgofQ5FcXK4PppN2nh7xhFjR8s=;
	b=ZNY0GHcxg9Xi5Ja/mHyedAMsgCwZFgEkOPyemeWuzdPwNop+WsTPI+kRLKNkI1ak2HUPRn
	BsNo2wAOE1v45lwjkT9DpuAdZ93ka5QE4Z8dNgkIKQGw+yDT3hIF4V8jEXciAIS4k3C5/L
	k3ipKZg7fXhSds/+IBMGKlnfl374UgfJr/OZ/cX5B9BAPLJrKTP+2VFPjmwkgKoUeK6eCX
	rAihSu6Z5CmvgaNi+8oNy6CMMwrwWlZphm9rNwPGwNAPh6Rs27OKR77+kR4kJkdMTrXfkC
	PXXgsx3TS87rbKiemOW/suNWkAVI3iucM00XiyvEHc647FFm+OyLBAbohiu58w==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793107439; a=rsa-sha256;
	cv=none;
	b=WS26j/OwIl1FW7M8HBnqunFB7CMSrMX3uK+qsenPekVxwr8dCAivgkmAMbrWwwdi0wt+UP
	i+vGNnRpAXVGQqlw7nPCynqfyKKW8LHisd2i3EdAYY2ixWhYdsx9wZXjf0QoxX+LywCSJY
	NeWf/kQnFi2bqKBiIuyAgXpO8qPcXY4tJWFRBEEWb0IWeHodnH0tmXb2FCJVVqjJY1CGAC
	KYw7jNleQTZ61eijaQbkFitX5e4QrxPgwo+gtDkEboG4PF3xbY3I40H2uU3VGHRl5UiFJG
	kCxpPSc2zMRP6pLalRebMmsZD8Z1404GIcQpOXtzlfmxBoQqXIOEJ2g/uVFrlQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=str@pengutronix.de smtp.mailfrom=s.trumtrar@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793107439;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=F2CRrC2CZvHfZrJGbFgofQ5FcXK4PppN2nh7xhFjR8s=;
	b=Uhioex4S8M4YbYnpF5L/zEH27qk6bDdRvfERC3OexFAQZrGI7Zsd74LJY4EzA9OZZFVmok
	68oKoM1AYkS8HWJp2Ejl+xCMknUFROfKzCwhZgbbXolb3/FqlYr0Z6ft2BZei8k+EYwUnY
	oE0pxSGJu1mRX5ivSvucLppD9lDBKwDlpQ3cfgvvbvDEqoZPisADR6p7ZqQQ3zEXCa5GXf
	WtAs9vxbbLJDoEKvBnRJYmu184zF5YsaSZyV875a8zvPm8i+ZZqlqLFujOMT24LLK9qtVO
	jx6BZGHp8Hdd7vI5vjoYmOC7Am9IbwjThx8Ywzxia2KSljYQSkks4kNPNasV6w==
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 27 Oct 2026 14:23:54 +0100
Subject: [PATCH 2/4] bootm: append a Linux bootconfig to the initrd
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261027-v2026-10-0-topic-bootconfig-v1-2-2758d3d9a165@pengutronix.de>
References: <20261027-v2026-10-0-topic-bootconfig-v1-0-2758d3d9a165@pengutronix.de>
In-Reply-To: <20261027-v2026-10-0-topic-bootconfig-v1-0-2758d3d9a165@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=17971;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=L2/Wh6Vv3SXdx4you0wViWJjEas6wfMrRly2Apo7nbY=;
 b=owGbwMvMwCUmtVehiCsuTInxtFoSQ9aDpe9epG8T/r5+QcGksB3TzG7udO5v23eGz8rtn8QRj
 ul6cr8TOkpZGMS4GGTFFFlUFlbwiXp88IycJsIFM4eVCWQIAxenAEwkeyUjw56P2YqzGS8vv9Ze
 59Xm73dtV7/Nhievf/eGvuY1WhJls4nhn26/crH4g4cNoZtMtP0upXBc/Oexl8/Q1/LMruX17Id
 /MgAA
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=24A1780E1548F0495996140A1ABD20720A5E5622
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_062403_877837_14703F03 
X-CRM114-Status: GOOD (  33.96  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Linux reads a boot configuration (bootconfig, see Documentation/admin-guide/bootconfig.rst)
    from the end of the initrd: keys for the kernel command line, for init, and
    for boot-time tracing, without c [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: B634720292B
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.trumtrar@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: iaqtprw17rbahbfoznha9bkerp4smckc

Linux reads a boot configuration (bootconfig, see
Documentation/admin-guide/bootconfig.rst) from the end of the initrd:
keys for the kernel command line, for init, and for boot-time tracing,
without changing the image or the boot entry. tools/bootconfig appends it
to an initrd file; with this, barebox does that at boot time.

global.bootm.bootconfig or bootm -b names a text file. barebox appends
it with the footer (size, checksum, magic) as the last loadable of the
initrd chain, after all initrds, and adds "bootconfig" to the kernel
command line. It is chained only in bootm_load_initrd(), as FIT, uImage
and overrides may replace the initrd until then. Without an initrd, the
bootconfig alone is passed as one; the kernel removes it and is left
with an empty initrd.

The format follows Linux v7.3 (c03c1a14507d), no code is taken from it:
magic and size limit (XBC_DATA_MAX) from include/linux/bootconfig.h,
checksum and padding as apply_xbc() in tools/bootconfig/main.c writes
them, read by get_boot_config_from_initrd() in init/main.c. As there, the
padding makes the initrd end 4-byte aligned; it depends on the size of
the initrd and is added once that is loaded. Kernels before v7.0 read the
footer as u32, 499f86de4f8c ("init/main: read bootconfig header with
get_unaligned_le32()") made that unaligned. The result is identical to
tools/bootconfig -a of v7.3. The syntax is checked by the kernel, not
here.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 Documentation/user/booting-linux.rst |  19 ++++++
 commands/bootm.c                     |  18 ++++-
 common/Kconfig                       |  15 ++++
 common/Makefile                      |   1 +
 common/bootconfig.c                  | 129 +++++++++++++++++++++++++++++++++++
 common/bootm.c                       |  48 ++++++++++++-
 include/bootconfig.h                 |  27 ++++++++
 include/bootm.h                      |   5 ++
 include/loadable.h                   |   2 +
 lib/loadable.c                       |   2 +
 10 files changed, 262 insertions(+), 4 deletions(-)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 32a731bfd2..11c26e663c 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -63,6 +63,25 @@ To use an initramfs, use the ``-r`` option or the
   global.bootm.image=/path/to/zImage
   bootm
 
+With ``CONFIG_BOOTM_BOOTCONFIG``, a Linux boot configuration
+(`bootconfig <https://docs.kernel.org/admin-guide/bootconfig.html>`_) can be
+appended to the initrd with the ``-b`` option or the
+:ref:`global.bootm.bootconfig <magicvar_global_bootm_bootconfig>` variable.
+The file is plain text, barebox adds the footer the kernel looks for and
+``bootconfig`` to the kernel command line. Without an initrd, the bootconfig
+alone is passed as one. The kernel needs ``CONFIG_BOOT_CONFIG``:
+
+.. code-block:: sh
+
+  bootm -r /path/to/initrd -b /path/to/bootconfig /path/to/Image
+
+  # same as:
+
+  global.bootm.initrd=/path/to/initrd
+  global.bootm.bootconfig=/path/to/bootconfig
+  global.bootm.image=/path/to/Image
+  bootm
+
 FIT image configurations will be matched by comparing the ``compatible`` property
 inside the configuration node with the barebox live tree's ``/compatible``.
 It's also possible to select a specific configuration explicitly:
diff --git a/commands/bootm.c b/commands/bootm.c
index 44abb953f6..391d51292a 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -31,9 +31,15 @@
 #define BOOTM_OPTS_COMMON "a:e:vo:fd"
 
 #ifdef CONFIG_BOOTM_INITRD
-#define BOOTM_OPTS BOOTM_OPTS_COMMON "L:r:"
+#define BOOTM_OPTS_INITRD BOOTM_OPTS_COMMON "L:r:"
 #else
-#define BOOTM_OPTS BOOTM_OPTS_COMMON
+#define BOOTM_OPTS_INITRD BOOTM_OPTS_COMMON
+#endif
+
+#ifdef CONFIG_BOOTM_BOOTCONFIG
+#define BOOTM_OPTS BOOTM_OPTS_INITRD "b:"
+#else
+#define BOOTM_OPTS BOOTM_OPTS_INITRD
 #endif
 
 static unsigned command_attempts;
@@ -62,6 +68,11 @@ static int do_bootm(int argc, char *argv[])
 		case 'r':
 			data.initrd_file = optarg;
 			break;
+#endif
+#ifdef CONFIG_BOOTM_BOOTCONFIG
+		case 'b':
+			data.bootconfig_file = optarg;
+			break;
 #endif
 		case 'a':
 			data.os_address = simple_strtoul(optarg, NULL, 0);
@@ -112,6 +123,9 @@ BAREBOX_CMD_HELP_OPT ("-f\t",  "load images even if type is undetectable")
 BAREBOX_CMD_HELP_OPT ("-r INITRD","specify an initrd image")
 BAREBOX_CMD_HELP_OPT ("-L ADDR\t","specify initrd load address")
 #endif
+#ifdef CONFIG_BOOTM_BOOTCONFIG
+BAREBOX_CMD_HELP_OPT ("-b FILE\t","append Linux bootconfig FILE to the initrd")
+#endif
 BAREBOX_CMD_HELP_OPT ("-a ADDR\t","specify os load address")
 BAREBOX_CMD_HELP_OPT ("-e OFFS\t","entry point to the image relative to start (0)")
 #ifdef CONFIG_OFTREE
diff --git a/common/Kconfig b/common/Kconfig
index 9adecfd2e4..5ae8b4302c 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -706,6 +706,21 @@ config BOOTM_INITRD
 	  -r INITRD  specify an initrd image
 	  -L ADDR    specify initrd load address
 
+config BOOTM_BOOTCONFIG
+	bool
+	prompt "Linux boot configuration (bootconfig) support"
+	depends on BOOTM_INITRD
+	help
+	  Append a Linux boot configuration (bootconfig, see
+	  Documentation/admin-guide/bootconfig.rst in Linux) to the initrd,
+	  from global.bootm.bootconfig or the bootm option:
+
+	  -b FILE    append FILE as bootconfig to the initrd
+
+	  Without an initrd, the bootconfig alone is passed as one.
+	  "bootconfig" is added to the kernel command line. The kernel needs
+	  CONFIG_BOOT_CONFIG.
+
 config BOOTM_OFTREE
 	def_bool y
 	depends on BOOTM && HAVE_ARCH_BOOTM_OFTREE
diff --git a/common/Makefile b/common/Makefile
index b1045c3acb..31f562c9ea 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -29,6 +29,7 @@ obj-$(CONFIG_BINFMT)		+= binfmt.o
 obj-$(CONFIG_BLOCK)		+= block.o
 obj-$(CONFIG_BLSPEC)		+= blspec.o
 obj-$(CONFIG_BOOTM)		+= bootm.o booti.o
+obj-$(CONFIG_BOOTM_BOOTCONFIG)	+= bootconfig.o
 obj-$(CONFIG_BOOTM_AIMAGE)	+= bootm-android-image.o
 obj-$(CONFIG_BOOT_OVERRIDE)	+= bootm-overrides.o
 obj-$(CONFIG_CMD_LOADS)		+= s_record.o
diff --git a/common/bootconfig.c b/common/bootconfig.c
new file mode 100644
index 0000000000..8c5cab5fb3
--- /dev/null
+++ b/common/bootconfig.c
@@ -0,0 +1,129 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Linux boot configuration (bootconfig): a text file the kernel reads from
+ * the end of the initrd, see Documentation/admin-guide/bootconfig.rst in
+ * Linux. barebox appends it as the last loadable of the initrd chain, so its
+ * footer ends up right at the end of the initrd handed to the kernel. The
+ * kernel only looks for it with "bootconfig" on its command line (or
+ * CONFIG_BOOT_CONFIG_FORCE), bootm adds that.
+ *
+ * The format is the one of Linux v7.3: magic and size limit from
+ * include/linux/bootconfig.h, checksum and padding as apply_xbc() in
+ * tools/bootconfig/main.c writes them, read by get_boot_config_from_initrd()
+ * in init/main.c. No code is taken from there.
+ */
+#define pr_fmt(fmt) "bootconfig: " fmt
+
+#include <common.h>
+#include <bootconfig.h>
+#include <fs.h>
+#include <libfile.h>
+#include <loadable.h>
+#include <linux/ioport.h>
+#include <linux/kernel.h>
+
+#define BOOTCONFIG_MAGIC	"#BOOTCONFIG\n"
+#define BOOTCONFIG_MAGIC_LEN	12
+#define BOOTCONFIG_ALIGN	4
+/* XBC_DATA_MAX in Linux: largest size in the footer, padding included */
+#define BOOTCONFIG_DATA_MAX	32767
+
+struct bootconfig_footer {
+	__le32 size;
+	__le32 csum;
+	char magic[BOOTCONFIG_MAGIC_LEN];
+} __packed;
+
+/**
+ * bootconfig_loadable - read a boot configuration for the initrd
+ * @path: file with the boot configuration (text)
+ *
+ * Builds what tools/bootconfig in Linux appends to an initrd: the text with
+ * a terminating NUL, then size, checksum and magic. The padding depends on
+ * the size of the initrd, bootconfig_align() adds it once loaded behind it.
+ * The syntax is checked by the kernel, not here.
+ *
+ * Return: loadable for loadable_chain() onto the initrd, or an error pointer
+ */
+struct loadable *bootconfig_loadable(const char *path)
+{
+	struct bootconfig_footer *footer;
+	struct loadable *l;
+	size_t len, size;
+	char *buf;
+	u32 csum = 0;
+	int ret, i;
+
+	ret = read_file_2(path, &len, (void **)&buf, FILESIZE_MAX);
+	if (ret) {
+		pr_err("%s: %pe\n", path, ERR_PTR(ret));
+		return ERR_PTR(ret);
+	}
+
+	/* read_file_2() zeroes behind the data: buf[len] is the NUL */
+	len = strnlen(buf, len);
+	size = len + 1;
+	/* room for the padding bootconfig_align() may add */
+	if (size + BOOTCONFIG_ALIGN - 1 > BOOTCONFIG_DATA_MAX) {
+		pr_err("%s: %zu bytes, the kernel accepts at most %d\n",
+		       path, size, BOOTCONFIG_DATA_MAX - (BOOTCONFIG_ALIGN - 1));
+		free(buf);
+		return ERR_PTR(-E2BIG);
+	}
+
+	buf = xrealloc(buf, size + sizeof(*footer));
+
+	for (i = 0; i < size; i++)
+		csum += (u8)buf[i];
+
+	footer = (void *)buf + size;
+	footer->size = cpu_to_le32(size);
+	footer->csum = cpu_to_le32(csum);
+	memcpy(footer->magic, BOOTCONFIG_MAGIC, BOOTCONFIG_MAGIC_LEN);
+
+	l = loadable_from_buf(buf, size + sizeof(*footer), LOADABLE_BOOTCONFIG);
+	free(l->name);
+	l->name = xstrdup(path);
+
+	return l;
+}
+
+/**
+ * bootconfig_align - align the bootconfig loaded at the end of an initrd
+ * @res: initrd in SDRAM, ending with the bootconfig
+ * @end_address: last address the initrd may use
+ *
+ * tools/bootconfig in Linux pads the bootconfig so that the initrd ends
+ * 4-byte aligned: kernels before v7.0 read the footer as u32 (since
+ * 499f86de4f8c "init/main: read bootconfig header with get_unaligned_le32()"
+ * they also take it unaligned). The size of the initrd before it is only
+ * known now: add the padding by moving the footer up to 3 bytes further.
+ * The size in the footer includes the padding, the checksum does not change
+ * (the padding is zero).
+ *
+ * Return: 0 on success, negative error code otherwise
+ */
+int bootconfig_align(struct resource *res, unsigned long end_address)
+{
+	void *end = (void *)(unsigned long)(res->end + 1);
+	struct bootconfig_footer *footer = end - sizeof(*footer);
+	unsigned int pad = -(res->end + 1) & (BOOTCONFIG_ALIGN - 1);
+	int ret;
+
+	if (!pad)
+		return 0;
+
+	if (res->end + pad > end_address)
+		return -ENOSPC;
+
+	ret = resize_region(res, resource_size(res) + pad);
+	if (ret)
+		return ret;
+
+	memmove((void *)footer + pad, footer, sizeof(*footer));
+	memset(footer, 0, pad);
+	footer = (void *)footer + pad;
+	footer->size = cpu_to_le32(le32_to_cpu(footer->size) + pad);
+
+	return 0;
+}
diff --git a/common/bootm.c b/common/bootm.c
index 27da1a590b..a8ac6bea21 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -3,6 +3,7 @@
 #include <common.h>
 #include <bootargs.h>
 #include <bootm.h>
+#include <bootconfig.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <efi/mode.h>
@@ -101,6 +102,8 @@ void bootm_data_init_defaults(struct bootm_data *data)
 		getenv_ul("global.bootm.initrd.loadaddr", &data->initrd_address);
 		data->initrd_file = getenv_nonempty("global.bootm.initrd");
 	}
+	if (IS_ENABLED(CONFIG_BOOTM_BOOTCONFIG))
+		data->bootconfig_file = getenv_nonempty("global.bootm.bootconfig");
 	data->root_dev = getenv_nonempty("global.bootm.root_dev");
 	data->root_param = getenv_nonempty("global.bootm.root_param");
 	data->verify = bootm_get_verify_mode();
@@ -122,6 +125,8 @@ void bootm_data_restore_defaults(const struct bootm_data *data)
 		pr_setenv("global.bootm.initrd.loadaddr", "0x%lx", data->initrd_address);
 		globalvar_set("bootm.initrd", data->initrd_file);
 	}
+	if (IS_ENABLED(CONFIG_BOOTM_BOOTCONFIG))
+		globalvar_set("bootm.bootconfig", data->bootconfig_file);
 	globalvar_set("bootm.root_dev", data->root_dev);
 	globalvar_set("bootm.root_param", data->root_param);
 	bootm_set_verify_mode(data->verify);
@@ -265,6 +270,7 @@ const struct resource *
 bootm_load_initrd(struct image_data *data, ulong load_address, ulong end_address)
 {
 	struct resource *res = NULL;
+	bool bootconfig = false;
 
 	if (!IS_ENABLED(CONFIG_BOOTM_INITRD))
 		return NULL;
@@ -275,6 +281,18 @@ bootm_load_initrd(struct image_data *data, ulong load_address, ulong end_address
 	if (WARN_ON(data->initrd_res))
 		return data->initrd_res;
 
+	/*
+	 * Last in the chain, after all initrds: the kernel looks for the
+	 * bootconfig footer at the end of the initrd. Chained only now, as
+	 * FIT, uImage and overrides may replace the initrd until here.
+	 */
+	if (data->bootconfig) {
+		loadable_chain(&data->initrd, data->bootconfig);
+		data->bootconfig = NULL;
+		bootconfig = true;
+		globalvar_add_simple(LINUX_BOOTARGS_BOOTM_LATE "bootconfig", "bootconfig");
+	}
+
 	if (!data->initrd)
 		return NULL;
 
@@ -282,8 +300,19 @@ bootm_load_initrd(struct image_data *data, ulong load_address, ulong end_address
 		return ERR_PTR(-EINVAL);
 
 	res = loadable_extract_into_sdram_all(data->initrd, load_address, end_address);
-	if (!IS_ERR(res))
-		data->initrd_res = res;
+	if (IS_ERR_OR_NULL(res))
+		return res;
+
+	if (bootconfig) {
+		int ret = bootconfig_align(res, end_address);
+
+		if (ret) {
+			release_sdram_region(res);
+			return ERR_PTR(ret);
+		}
+	}
+
+	data->initrd_res = res;
 	return res;
 }
 
@@ -623,6 +652,16 @@ struct image_data *bootm_boot_prep(const struct bootm_data *bootm_data)
 			goto err_out;
 	}
 
+	if (IS_ENABLED(CONFIG_BOOTM_BOOTCONFIG) && bootm_data->bootconfig_file) {
+		data->bootconfig_file = xstrdup(bootm_data->bootconfig_file);
+		data->bootconfig = bootconfig_loadable(data->bootconfig_file);
+		if (IS_ERR(data->bootconfig)) {
+			ret = PTR_ERR(data->bootconfig);
+			data->bootconfig = NULL;
+			goto err_out;
+		}
+	}
+
 	if (bootm_data->appendroot) {
 		const char *root = NULL;
 		const char *rootopts = NULL;
@@ -798,6 +837,7 @@ void bootm_boot_cleanup(struct image_data *data)
 	release_sdram_region(data->initrd_res);
 	release_sdram_region(data->oftree_res);
 	loadable_release(&data->oftree);
+	loadable_release(&data->bootconfig);
 	loadable_release(&data->initrd);
 	loadable_release(&data->os);
 	if (data->of_root_node)
@@ -808,6 +848,7 @@ void bootm_boot_cleanup(struct image_data *data)
 	free(data->os_file);
 	free(data->oftree_file);
 	free(data->initrd_file);
+	free(data->bootconfig_file);
 	free(data);
 }
 
@@ -879,6 +920,8 @@ static int bootm_init(void)
 		globalvar_add_simple("bootm.initrd", NULL);
 		globalvar_add_simple("bootm.initrd.loadaddr", NULL);
 	}
+	if (IS_ENABLED(CONFIG_BOOTM_BOOTCONFIG))
+		globalvar_add_simple("bootm.bootconfig", NULL);
 
 	globalvar_add_simple_bool("bootm.dryrun", &bootm_dryrun);
 	globalvar_add_simple_int("bootm.verbose", &bootm_verbosity, "%u");
@@ -911,6 +954,7 @@ BAREBOX_MAGICVAR(global.bootm.image, "bootm default boot image");
 BAREBOX_MAGICVAR(global.bootm.image.loadaddr, "bootm default boot image loadaddr");
 BAREBOX_MAGICVAR(global.bootm.initrd, "bootm default initrd");
 BAREBOX_MAGICVAR(global.bootm.initrd.loadaddr, "bootm default initrd loadaddr");
+BAREBOX_MAGICVAR(global.bootm.bootconfig, "bootm default Linux bootconfig, appended to the initrd");
 BAREBOX_MAGICVAR(global.bootm.oftree, "bootm default oftree");
 BAREBOX_MAGICVAR(global.bootm.dryrun, "bootm default dryrun level");
 BAREBOX_MAGICVAR(global.bootm.verify, "bootm default verify level");
diff --git a/include/bootconfig.h b/include/bootconfig.h
new file mode 100644
index 0000000000..37ef8e0580
--- /dev/null
+++ b/include/bootconfig.h
@@ -0,0 +1,27 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __BOOTCONFIG_H
+#define __BOOTCONFIG_H
+
+#include <linux/err.h>
+#include <linux/types.h>
+
+struct loadable;
+struct resource;
+
+#ifdef CONFIG_BOOTM_BOOTCONFIG
+struct loadable *bootconfig_loadable(const char *path);
+int bootconfig_align(struct resource *res, unsigned long end_address);
+#else
+static inline struct loadable *bootconfig_loadable(const char *path)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
+static inline int bootconfig_align(struct resource *res,
+				   unsigned long end_address)
+{
+	return -ENOSYS;
+}
+#endif
+
+#endif /* __BOOTCONFIG_H */
diff --git a/include/bootm.h b/include/bootm.h
index 946713971e..134b01d453 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -24,6 +24,7 @@ struct bootm_data {
 	const char *os_file;
 	const char *initrd_file;
 	const char *oftree_file;
+	const char *bootconfig_file;
 	const char *root_dev;
 	const char *root_param;
 	int verbose;
@@ -111,6 +112,10 @@ struct image_data {
 
 	unsigned long initrd_address;
 
+	/* Linux bootconfig, appended to the initrd by bootm_load_initrd() */
+	char *bootconfig_file;
+	struct loadable *bootconfig;
+
 	char *oftree_file;
 	char *oftree_part;
 
diff --git a/include/loadable.h b/include/loadable.h
index 6ab1692c5d..489c0ef7d8 100644
--- a/include/loadable.h
+++ b/include/loadable.h
@@ -17,12 +17,14 @@ struct loadable;
  * @LOADABLE_KERNEL: kernel image
  * @LOADABLE_INITRD: initial ramdisk
  * @LOADABLE_FDT: flattened device tree
+ * @LOADABLE_BOOTCONFIG: Linux boot configuration, appended to the initrd
  */
 enum loadable_type {
 	LOADABLE_UNSPECIFIED,
 	LOADABLE_KERNEL,
 	LOADABLE_INITRD,
 	LOADABLE_FDT,
+	LOADABLE_BOOTCONFIG,
 };
 
 /**
diff --git a/lib/loadable.c b/lib/loadable.c
index 8c016c125d..b410ef477c 100644
--- a/lib/loadable.c
+++ b/lib/loadable.c
@@ -31,6 +31,8 @@ const char *loadable_type_tostr(enum loadable_type type)
 		return "initrd";
 	case LOADABLE_FDT:
 		return "fdt";
+	case LOADABLE_BOOTCONFIG:
+		return "bootconfig";
 	default:
 		return NULL;
 	}

-- 
2.56.0



