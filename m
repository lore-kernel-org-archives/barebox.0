Delivery-date: Fri, 25 Apr 2025 17:22:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u8Kt4-005Gun-1w
	for lore@lore.pengutronix.de;
	Fri, 25 Apr 2025 17:22:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u8Kt3-0008Il-TE
	for lore@pengutronix.de; Fri, 25 Apr 2025 17:22:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+ALKSQZhT2Xw4qRRlXIpg7n5LVIgjTUmNeNc7NjgZ48=; b=qYOGfuHEMpRP4M6JsvVcK/xLyn
	yYFIDqOvSZKVSTBZeETx06VLAQLmEDJredBrohQ5pi93O4OwaJhOQycOrMQHtuYSLnv3MtJ8FxOcy
	o3WFblqMoeKBB4n165JiRZsZIJ0sqFetkOwNY3kZ3mNZvb67ooBWWDHf5HCTOSLlEkdgQnPvCtxc0
	q2uXdILeVajdNo27UJ4bjryR4PE1arwu/noLchWPlrcJBneMIhF9VYRe6Bv/Nejb1p4LfxIfBsU/V
	o0RBSiIrBg8GgvTYNtiWULwptjhcGaZqmRZZa7pbgRRw6ArWr6v+WKtuD5hLIaCui6tT3Dy4sCRLw
	TFI9ydZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8KsH-000000001ax-1hq2;
	Fri, 25 Apr 2025 15:21:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8JGX-0000000HJYn-0uBA
	for barebox@lists.infradead.org;
	Fri, 25 Apr 2025 13:38:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u8JGU-0005xr-3P; Fri, 25 Apr 2025 15:38:50 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u8JGT-0023PS-2w;
	Fri, 25 Apr 2025 15:38:49 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u8JGT-009uX1-2e;
	Fri, 25 Apr 2025 15:38:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 25 Apr 2025 15:38:49 +0200
Message-Id: <20250425133849.2362142-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250425_063853_257746_16AA5984 
X-CRM114-Status: GOOD (  12.30  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] kbuild: Use -fzero-init-padding-bits=all
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is a port of Linux commit dce4aab8441d285b9a78b33753e0bf583c1320ee:

|   Author:     Kees Cook <kees@kernel.org>
|   AuthorDate: Mon Jan 27 11:10:28 2025 -0800
|
|   GCC 15 introduces a regression in "= { 0 }" style initialization of
|   unions that Linux has depended on for eliminating uninitialized variable
|   contents. GCC does not seem likely to fix it[1], instead suggesting[2]
|   that affected projects start using -fzero-init-padding-bits=unions.
|
|   To avoid future surprises beyond just the current situation with unions,
|   enable -fzero-init-padding-bits=all when available (GCC 15+). This will
|   correctly zero padding bits in unions and structs that might have been
|   left uninitialized, and will make sure there is no immediate regression
|   in union initializations. As seen in the stackinit KUnit selftest union
|   cases, which were passing before, were failing under GCC 15:
|
|       not ok 18 test_small_start_old_zero
|       ok 29 test_small_start_dynamic_partial # SKIP XFAIL uninit bytes: 63
|       ok 32 test_small_start_assigned_dynamic_partial # SKIP XFAIL uninit bytes: 63
|       ok 67 test_small_start_static_partial # SKIP XFAIL uninit bytes: 63
|       ok 70 test_small_start_static_all # SKIP XFAIL uninit bytes: 56
|       ok 73 test_small_start_dynamic_all # SKIP XFAIL uninit bytes: 56
|       ok 82 test_small_start_assigned_static_partial # SKIP XFAIL uninit bytes: 63
|       ok 85 test_small_start_assigned_static_all # SKIP XFAIL uninit bytes: 56
|       ok 88 test_small_start_assigned_dynamic_all # SKIP XFAIL uninit bytes: 56
|
|   The above all now pass again with -fzero-init-padding-bits=all added.
|
|   This also fixes the following cases for struct initialization that had
|   been XFAIL until now because there was no compiler support beyond the
|   larger "-ftrivial-auto-var-init=zero" option:
|
|       ok 38 test_small_hole_static_all # SKIP XFAIL uninit bytes: 3
|       ok 39 test_big_hole_static_all # SKIP XFAIL uninit bytes: 124
|       ok 40 test_trailing_hole_static_all # SKIP XFAIL uninit bytes: 7
|       ok 42 test_small_hole_dynamic_all # SKIP XFAIL uninit bytes: 3
|       ok 43 test_big_hole_dynamic_all # SKIP XFAIL uninit bytes: 124
|       ok 44 test_trailing_hole_dynamic_all # SKIP XFAIL uninit bytes: 7
|       ok 58 test_small_hole_assigned_static_all # SKIP XFAIL uninit bytes: 3
|       ok 59 test_big_hole_assigned_static_all # SKIP XFAIL uninit bytes: 124
|       ok 60 test_trailing_hole_assigned_static_all # SKIP XFAIL uninit bytes: 7
|       ok 62 test_small_hole_assigned_dynamic_all # SKIP XFAIL uninit bytes: 3
|       ok 63 test_big_hole_assigned_dynamic_all # SKIP XFAIL uninit bytes: 124
|       ok 64 test_trailing_hole_assigned_dynamic_all # SKIP XFAIL uninit bytes: 7
|
|   All of the above now pass when built under GCC 15. Tests can be seen
|   with:
|
|       ./tools/testing/kunit/kunit.py run stackinit --arch=x86_64 \
|           --make_option CC=gcc-15
|
|   Clang continues to fully initialize these kinds of variables[3] without
|   additional flags.
|
|   Suggested-by: Jakub Jelinek <jakub@redhat.com>
|   Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=118403 [1]
|   Link: https://lore.kernel.org/linux-toolchains/Z0hRrrNU3Q+ro2T7@tucnak/ [2]
|   Link: https://github.com/llvm/llvm-project/commit/7a086e1b2dc05f54afae3591614feede727601fa [3]
|   Reviewed-by: Nathan Chancellor <nathan@kernel.org>
|   Acked-by: Masahiro Yamada <masahiroy@kernel.org>
|   Link: https://lore.kernel.org/r/20250127191031.245214-3-kees@kernel.org
|   Signed-off-by: Kees Cook <kees@kernel.org>

A quick look at { 0 } usage in barebox shows that initializations of
struct nvme_command in drivers/nvme/host/core.c might be affected by
this, so better play it safe.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Makefile b/Makefile
index 58335c249a72..2e3931ed7b37 100644
--- a/Makefile
+++ b/Makefile
@@ -759,6 +759,9 @@ endif
 # disable invalid "can't wrap" optimizations for signed / pointers
 KBUILD_CFLAGS	+= $(call cc-option,-fno-strict-overflow)
 
+# Explicitly clear padding bits during variable initialization
+KBUILD_CFLAGS += $(call cc-option,-fzero-init-padding-bits=all)
+
 # Make sure -fstack-check isn't enabled (like gentoo apparently did)
 KBUILD_CFLAGS  += $(call cc-option,-fno-stack-check)
 
-- 
2.39.5



