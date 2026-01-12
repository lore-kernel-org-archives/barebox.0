Delivery-date: Mon, 12 Jan 2026 15:18:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfIkX-000Y8k-1P
	for lore@lore.pengutronix.de;
	Mon, 12 Jan 2026 15:18:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfIkW-0006Bv-7H
	for lore@pengutronix.de; Mon, 12 Jan 2026 15:18:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JtGl1uLPWNzTr9Kk0BlD0f2PlJ4C0GBA9tbMLD0k/xI=; b=xsX3RGBknwyKF0HbWe4LwgfTSj
	4Xuv7NHCDi14/dA4smzrJXVg7eGnjw62LzKbnOXW8fjaQ5JRoje5XqdrcyOQDHqtoxIkfAq7gyop/
	6SJPbMP6JV/GoBhOsi03M6P1bALzx88AChhmv+CzRHbDISz5Ka4+d0ZW1LiElT9mcI8TW8ybVWQs2
	bUz+iydXKhonSvrxcG+eoNxxFfQ0RNQK8iBUrQ09m8SyVCqwl9LsmkoJxO4x0vGpCnxawWR/C9QN+
	PyYZSb6GeWV+Qg8g/2av3XCto05nd0uiwMpnrgwBNs0Iv906ELKc4Wbl24vc3GkxKNetulQObxDc5
	Ix8n9WjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIjz-00000005Vmr-29WE;
	Mon, 12 Jan 2026 14:17:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIjx-00000005Vlf-270O
	for barebox@bombadil.infradead.org;
	Mon, 12 Jan 2026 14:17:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=JtGl1uLPWNzTr9Kk0BlD0f2PlJ4C0GBA9tbMLD0k/xI=; b=QJ7raX41DFcbMjuDnkV2snv5yd
	8Y1UEa7ButM/eqZvsL4aykpyqYgwHdOTcHsVXGLcCZAby3NurrzZHHDoR9JACM6U8hsEAdqAT2t3J
	SXeEks4ZN1taONjdQ9gYv3TTz9t6XgJmzbllcvYYg0LMWPezs8LTK+fzTBiEEGz+6qNUDelFMY9OL
	0rIxm0+VtVcSO6wzUYswmaZx//RF2BvcsBfYxLmL5Z+KPbaGcH30RLbjTseiL6NJA4G4Gwx6WYf18
	sGhXI66HVS9eR0Y7rIZjsgsKKElyPlBUZyuL4pteOvGiKs9mqVntOdereEj5nwmq9Gb5/uA6q7f43
	vh5wCToQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIju-00000000reC-0BK0
	for barebox@lists.infradead.org;
	Mon, 12 Jan 2026 14:17:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vfIjs-000614-7i; Mon, 12 Jan 2026 15:17:48 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 12 Jan 2026 15:17:40 +0100
Message-ID: <20260112141746.3068571-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260112141746.3068571-1-a.fatoum@barebox.org>
References: <20260112141746.3068571-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_141750_295249_3FFF2612 
X-CRM114-Status: GOOD (  16.02  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH RFC 2/2] MAKEALL: add a new develop mode option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Of course, everyone has their own development workflow, but first
experiments with Claude CLI show that all the individual steps make it
easy for it to get lost in the weeds.

Add a development mode that is enabled via passing -d/-D to MAKEALL,
which enables a more AI-friendly building experience with -d:

  - Generate compile_commands.json on every successful build, so LSP can
    be used (doesn't 100% work yet for me, but that's not barebox'
    fault)

  - implies -i, so old build directories aren't wiped

  - Use build/ as name for the build directory as clangd will look
    there automatically if the file is not found in the source
    directory[1]. Support for multiple build directories can be handled
    via git worktrees still.

The -D goes on and adds some more things, that may falsify results in
some cases:

  - Output missing firmware warnings that may be expected with
    defconfigs and no firmware on stdout, no stderr, so MAKEALL output
    is cleaner

  - Enable sanitizers. This will affect binary size.

[1]: https://github.com/llvm/llvm-project/blob/263802c56b4d/clang-tools-extra/clangd/GlobalCompilationDatabase.cpp#L151

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 MAKEALL                                 | 17 ++++++++++++++++-
 common/boards/configs/devel.config      |  2 ++
 common/boards/configs/sanitizers.config |  6 ++++++
 3 files changed, 24 insertions(+), 1 deletion(-)
 create mode 100644 common/boards/configs/devel.config
 create mode 100644 common/boards/configs/sanitizers.config

diff --git a/MAKEALL b/MAKEALL
index bfc0f917aca8..1e6d0c97b868 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -60,6 +60,8 @@ usage() {
 	echo "TARGET      -t      Makefile target"
 	echo "V           -v      verbosity"
 	echo "INCREMENTAL -i"
+	echo "     	  -d	  (iterative development mode)"
+	echo "        	  -D	  (extended iterative development mode)"
 	echo ""
 }
 
@@ -189,6 +191,9 @@ do_build_defconfig() {
 		report "Compile: " ${defconfig}
 
 		if [ "$compile_result" = "0" ]; then
+			if [ "$DEVEL" = "1" ]; then
+				${MAKE} $silent_flag compile_commands.json
+			fi
 			report "OK     \n"
 		else
 			report "FAILED \n"
@@ -288,7 +293,7 @@ do_build_all() {
 	return $nbuilds
 }
 
-while getopts "hc:j:O:l:a:e:k:t:v:i" Option
+while getopts "hc:j:O:l:a:e:k:t:v:idD" Option
 do
 case $Option in
 	a )
@@ -321,6 +326,16 @@ case $Option in
 	i )
 		INCREMENTAL=1
 		;;
+	d | D)
+		DEVEL=1
+		INCREMENTAL=1
+		KCONFIG_ADD="${KCONFIG_ADD} common/boards/configs/devel.config"
+		BUILDDIR="build"
+		if [ "$Option" = D ]; then
+			KCONFIG_ADD="${KCONFIG_ADD} common/boards/configs/sanitizers.config"
+			export NO_MISSING_FIRMWARE_WARNING=1
+		fi
+		;;
 	h )
 		usage
 		exit 0
diff --git a/common/boards/configs/devel.config b/common/boards/configs/devel.config
new file mode 100644
index 000000000000..fd046c9ab08e
--- /dev/null
+++ b/common/boards/configs/devel.config
@@ -0,0 +1,2 @@
+CONFIG_WERROR=y
+CONFIG_PANIC_POWEROFF=y
diff --git a/common/boards/configs/sanitizers.config b/common/boards/configs/sanitizers.config
new file mode 100644
index 000000000000..7e6cffd67874
--- /dev/null
+++ b/common/boards/configs/sanitizers.config
@@ -0,0 +1,6 @@
+CONFIG_KASAN=y
+CONFIG_ASAN=y
+CONFIG_UBSAN=y
+CONFIG_DEBUG_LIST=y
+CONFIG_BUG_ON_DATA_CORRUPTION=y
+CONFIG_STACKPROTECTOR_STRONG=y
-- 
2.47.3



