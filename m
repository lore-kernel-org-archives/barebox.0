Delivery-date: Tue, 29 Apr 2025 17:25:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9mpj-000XBc-18
	for lore@lore.pengutronix.de;
	Tue, 29 Apr 2025 17:25:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9mpi-00037e-AQ
	for lore@pengutronix.de; Tue, 29 Apr 2025 17:25:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OuXqbEAThycaDEvT92dAb6CTveM0nGQ6lmp2MIx+U1Q=; b=wD7zpxGb/RU1xB6KogWzo1LuEE
	b2kANf00U/utye492oRM8Nrvwy6u9iRQoDUDQrNPEaKHLUnbJgCkKQgUDquBwcAXkU3Wem7ACJSvZ
	vz/rCYli3XbsbEXWeJ2UYwFKtPKcsLBNxho5QMDVnYb7Rexq171yvqcF3XY7/m/XZeoB7IYqYs9d1
	HO5yWXvpnRIc+bUvVO91tHPxbwhbhSqnGr3gDKisDrNe6iSf8aA3TlCDum4ZKxMahYOVQYhL4jCeM
	CxziwsEo9TEk1jugFDDuLnowoqjmD3twqvyrXOr1t5D7i3bJ7Va+xsjprN/mcPEyYd6mr30sYFsoC
	o1zVs+nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9mpJ-0000000A74h-2HOb;
	Tue, 29 Apr 2025 15:24:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9mSC-0000000A2vM-3lqb
	for barebox@bombadil.infradead.org;
	Tue, 29 Apr 2025 15:01:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=OuXqbEAThycaDEvT92dAb6CTveM0nGQ6lmp2MIx+U1Q=; b=cUEWoRMVwUuO0x7QeV94qvi0Hy
	rl3MshILSNX1WvaZh6bYW8EZp7p14zmLch6LUwgQuJNdDJpOH9TI8sw7mNI/+j3LjXZI8nR2mARPD
	Kx1X1+4g/XQHudkd3XsKH71da/YFrgapzU/swaPdPnlxcimdMX96OdDju9+ULKCLnDsf9xgsyZO+7
	7J1kQFk69oIPvSTq0ObsvMJkIHIYbR+GxM2wf+VZ7Ar2hK8HkLe97+wdnyBHwDXklpS0I/hyi9WZG
	PRVhyTlXpWoAGVvoUspOixFkJD/tDzhbKyTGB9tVL+6/nxoyW90Fv9hSgGiY1moM9btBSh7GMWs2o
	juB0Qzxw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u9mS9-0000000DQFT-39Bi
	for barebox@lists.infradead.org;
	Tue, 29 Apr 2025 15:00:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9mS8-0004OQ-RH; Tue, 29 Apr 2025 17:00:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9mS8-000HNG-25;
	Tue, 29 Apr 2025 17:00:56 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9mS8-00D4hH-1r;
	Tue, 29 Apr 2025 17:00:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250425133849.2362142-1-a.fatoum@pengutronix.de>
References: <20250425133849.2362142-1-a.fatoum@pengutronix.de>
Message-Id: <174593885657.3116244.17088022716425865208.b4-ty@pengutronix.de>
Date: Tue, 29 Apr 2025 17:00:56 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_160057_908986_74BEDA8C 
X-CRM114-Status: GOOD (  13.41  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] kbuild: Use -fzero-init-padding-bits=all
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 25 Apr 2025 15:38:49 +0200, Ahmad Fatoum wrote:
> This is a port of Linux commit dce4aab8441d285b9a78b33753e0bf583c1320ee:
> 
> |   Author:     Kees Cook <kees@kernel.org>
> |   AuthorDate: Mon Jan 27 11:10:28 2025 -0800
> |
> |   GCC 15 introduces a regression in "= { 0 }" style initialization of
> |   unions that Linux has depended on for eliminating uninitialized variable
> |   contents. GCC does not seem likely to fix it[1], instead suggesting[2]
> |   that affected projects start using -fzero-init-padding-bits=unions.
> |
> |   To avoid future surprises beyond just the current situation with unions,
> |   enable -fzero-init-padding-bits=all when available (GCC 15+). This will
> |   correctly zero padding bits in unions and structs that might have been
> |   left uninitialized, and will make sure there is no immediate regression
> |   in union initializations. As seen in the stackinit KUnit selftest union
> |   cases, which were passing before, were failing under GCC 15:
> |
> |       not ok 18 test_small_start_old_zero
> |       ok 29 test_small_start_dynamic_partial # SKIP XFAIL uninit bytes: 63
> |       ok 32 test_small_start_assigned_dynamic_partial # SKIP XFAIL uninit bytes: 63
> |       ok 67 test_small_start_static_partial # SKIP XFAIL uninit bytes: 63
> |       ok 70 test_small_start_static_all # SKIP XFAIL uninit bytes: 56
> |       ok 73 test_small_start_dynamic_all # SKIP XFAIL uninit bytes: 56
> |       ok 82 test_small_start_assigned_static_partial # SKIP XFAIL uninit bytes: 63
> |       ok 85 test_small_start_assigned_static_all # SKIP XFAIL uninit bytes: 56
> |       ok 88 test_small_start_assigned_dynamic_all # SKIP XFAIL uninit bytes: 56
> |
> |   The above all now pass again with -fzero-init-padding-bits=all added.
> |
> |   This also fixes the following cases for struct initialization that had
> |   been XFAIL until now because there was no compiler support beyond the
> |   larger "-ftrivial-auto-var-init=zero" option:
> |
> |       ok 38 test_small_hole_static_all # SKIP XFAIL uninit bytes: 3
> |       ok 39 test_big_hole_static_all # SKIP XFAIL uninit bytes: 124
> |       ok 40 test_trailing_hole_static_all # SKIP XFAIL uninit bytes: 7
> |       ok 42 test_small_hole_dynamic_all # SKIP XFAIL uninit bytes: 3
> |       ok 43 test_big_hole_dynamic_all # SKIP XFAIL uninit bytes: 124
> |       ok 44 test_trailing_hole_dynamic_all # SKIP XFAIL uninit bytes: 7
> |       ok 58 test_small_hole_assigned_static_all # SKIP XFAIL uninit bytes: 3
> |       ok 59 test_big_hole_assigned_static_all # SKIP XFAIL uninit bytes: 124
> |       ok 60 test_trailing_hole_assigned_static_all # SKIP XFAIL uninit bytes: 7
> |       ok 62 test_small_hole_assigned_dynamic_all # SKIP XFAIL uninit bytes: 3
> |       ok 63 test_big_hole_assigned_dynamic_all # SKIP XFAIL uninit bytes: 124
> |       ok 64 test_trailing_hole_assigned_dynamic_all # SKIP XFAIL uninit bytes: 7
> |
> |   All of the above now pass when built under GCC 15. Tests can be seen
> |   with:
> |
> |       ./tools/testing/kunit/kunit.py run stackinit --arch=x86_64 \
> |           --make_option CC=gcc-15
> |
> |   Clang continues to fully initialize these kinds of variables[3] without
> |   additional flags.
> |
> |   Suggested-by: Jakub Jelinek <jakub@redhat.com>
> |   Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=118403 [1]
> |   Link: https://lore.kernel.org/linux-toolchains/Z0hRrrNU3Q+ro2T7@tucnak/ [2]
> |   Link: https://github.com/llvm/llvm-project/commit/7a086e1b2dc05f54afae3591614feede727601fa [3]
> |   Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> |   Acked-by: Masahiro Yamada <masahiroy@kernel.org>
> |   Link: https://lore.kernel.org/r/20250127191031.245214-3-kees@kernel.org
> |   Signed-off-by: Kees Cook <kees@kernel.org>
> 
> [...]

Applied, thanks!

[1/1] kbuild: Use -fzero-init-padding-bits=all
      https://git.pengutronix.de/cgit/barebox/commit/?id=56baf9bea6ba (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



