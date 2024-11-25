Delivery-date: Mon, 25 Nov 2024 16:10:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFajB-000FK4-18
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:10:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFajB-0006tB-4m
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:10:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=npbEzpPjosQgRmK8QBYtPxlVDTibwsRj1X8Upnjejq4=; b=YvuHFygOiZNLRugl0HDrWn12oQ
	XVruGoJ0y4VS9Zym0ogsHPE36Ux5CfcMC/3kWASJ7DP2HY2R06vYZpynSZbNed2qlNuvE9PnajneM
	BnyI25hgkhWpGqSJCd8+u2OzS5uANqR8G0Oa/HMoPZ0svSCLaeYWgtq1st6NGvvWvuOF+6w+AmSSs
	8eeGJ+iXgywlCMKQcmMiMYTWAaVSSCgX7pIjD7G5i0deGh6bqqpuKm5+I/JQO7syl4wu8GuZjhzKl
	r2kXFDNjkRizpJG1xr1p3FGXuM1Co47gCvC44S98WzsV8iIaKuo040lHjfjSIfRBnk3kmITok68SL
	vLzmc5pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFaik-00000008Ozt-4AHJ;
	Mon, 25 Nov 2024 15:09:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFaih-00000008Oxz-3GLf
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:09:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFaig-0006cs-GI; Mon, 25 Nov 2024 16:09:46 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFaif-00069o-1Z;
	Mon, 25 Nov 2024 16:09:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFaif-001HUO-1j;
	Mon, 25 Nov 2024 16:09:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:09:43 +0100
Message-Id: <20241125150945.166979-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125150945.166979-1-a.fatoum@pengutronix.de>
References: <20241125150945.166979-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_070947_813500_4D178503 
X-CRM114-Status: GOOD (  14.14  )
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
Subject: [PATCH 2/4] common: implement CC_IS_GCC and CC_IS_CLANG symbols
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

As preparation for support LLVM+clang, we need barebox to be able to
detect what compiler is being used and its version.

Import the necessary infrastructure from Linux.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig          | 16 +++++++++++++
 scripts/Kconfig.include |  6 +++++
 scripts/cc-version.sh   | 52 +++++++++++++++++++++++++++++++++++++++++
 3 files changed, 74 insertions(+)
 create mode 100755 scripts/cc-version.sh

diff --git a/common/Kconfig b/common/Kconfig
index 859356038386..498d219b4de3 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -2,6 +2,22 @@
 
 source "common/boards/Kconfig"
 
+config CC_IS_GCC
+	def_bool $(success,test "$(cc-name)" = GCC)
+
+config GCC_VERSION
+	int
+	default $(cc-version) if CC_IS_GCC
+	default 0
+
+config CC_IS_CLANG
+	def_bool $(success,test "$(cc-name)" = Clang)
+
+config CLANG_VERSION
+	int
+	default $(cc-version) if CC_IS_CLANG
+	default 0
+
 config GREGORIAN_CALENDER
 	bool
 
diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
index a5fe72c504ff..55ec8737d0db 100644
--- a/scripts/Kconfig.include
+++ b/scripts/Kconfig.include
@@ -23,6 +23,12 @@ success = $(if-success,$(1),y,n)
 # Return n if <command> exits with 0, y otherwise
 failure = $(if-success,$(1),n,y)
 
+# Get the C compiler name, version, and error out if it is not supported.
+cc-info := $(shell,$(srctree)/scripts/cc-version.sh $(CC))
+$(error-if,$(success,test -z "$(cc-info)"),Sorry$(comma) this C compiler is not supported.)
+cc-name := $(shell,set -- $(cc-info) && echo $1)
+cc-version := $(shell,set -- $(cc-info) && echo $2)
+
 # $(cc-option,<flag>)
 # Return y if the compiler supports <flag>, n otherwise
 cc-option = $(success,mkdir .tmp_$$$$; trap "rm -rf .tmp_$$$$" EXIT; $(CC) -Werror $(CLANG_FLAGS) $(1) -c -x c /dev/null -o .tmp_$$$$/tmp.o)
diff --git a/scripts/cc-version.sh b/scripts/cc-version.sh
new file mode 100755
index 000000000000..65d8a2805d2e
--- /dev/null
+++ b/scripts/cc-version.sh
@@ -0,0 +1,52 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0
+#
+# Print the C compiler name and its version in a 5 or 6-digit form.
+# Also, perform the minimum version check.
+
+set -e
+
+# Print the C compiler name and some version components.
+get_c_compiler_info()
+{
+	cat <<- EOF | "$@" -E -P -x c - 2>/dev/null
+	#if defined(__clang__)
+	Clang	__clang_major__  __clang_minor__  __clang_patchlevel__
+	#elif defined(__GNUC__)
+	GCC	__GNUC__  __GNUC_MINOR__  __GNUC_PATCHLEVEL__
+	#else
+	unknown
+	#endif
+	EOF
+}
+
+# Convert the version string x.y.z to a canonical 5 or 6-digit form.
+get_canonical_version()
+{
+	IFS=.
+	set -- $1
+	echo $((10000 * $1 + 100 * $2 + $3))
+}
+
+# $@ instead of $1 because multiple words might be given, e.g. CC="ccache gcc".
+orig_args="$@"
+set -- $(get_c_compiler_info "$@")
+
+name=$1
+
+case "$name" in
+GCC)
+	version=$2.$3.$4
+	;;
+Clang)
+	version=$2.$3.$4
+	;;
+*)
+	echo "$orig_args: unknown C compiler" >&2
+	exit 1
+	;;
+esac
+
+cversion=$(get_canonical_version $version)
+
+echo $name $cversion
-- 
2.39.5



