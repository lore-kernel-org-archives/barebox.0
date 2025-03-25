Delivery-date: Tue, 25 Mar 2025 14:03:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tx3wk-00417l-2e
	for lore@lore.pengutronix.de;
	Tue, 25 Mar 2025 14:03:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tx3wj-00052x-Lp
	for lore@pengutronix.de; Tue, 25 Mar 2025 14:03:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o+4d/7QUaUgS9WwI8xQ1bcj5vXCkb5R8CkLN+t97DUk=; b=qrrcATtdyKgPnnEq7PT1zNaCjb
	LR++AuEcBx5HuSY3kd4EjDWK5wGbbHJDkQZ9X8gx5UlUqg67Xn63hiHs6KcqAZxX9mJFzXlmY4T4M
	dcTMTRa5HmVS8qBaeVElmkEDynxI2jSV1+wCsEBmr/Ec5UBvw3QuTZS5g9mR+m1xZtQKxE3Hpce5x
	t/kNWQbSR6spAsJGbREWwaESSMeTbNx1NmijlAAfpGszb0+A4bqOUA+vTwNoD6UqtTQ/D3Dal8ICY
	4pWX162fYOTJukbfZ1cqyaRhr5Jx5WPymPXvTDePZk4DlfHaa36i0kLmD8jBY4I26DVlH/Mn/DcH1
	VBP8TyOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx3wA-00000005xiq-2t9d;
	Tue, 25 Mar 2025 13:03:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx3h6-00000005vGU-38B1
	for barebox@lists.infradead.org;
	Tue, 25 Mar 2025 12:47:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tx3h3-0000tY-6I; Tue, 25 Mar 2025 13:47:45 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tx3h2-001a8Y-1r;
	Tue, 25 Mar 2025 13:47:45 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tx3h2-00GwOu-2w;
	Tue, 25 Mar 2025 13:47:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 25 Mar 2025 13:47:39 +0100
Message-Id: <20250325124740.4035964-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250325124740.4035964-1-a.fatoum@pengutronix.de>
References: <20250325124740.4035964-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250325_054748_790848_5341B329 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH master 2/3] sandbox: don't build tap support code without CONFIG_DRIVER_NET_TAP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There's no point in compiling tap_alloc() if it's not going to be used.
As the file unconditionally uses <linux/*.h> headers, it breaks the
build, when those are not available.

Therefore only build the file if actually needed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/os/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/sandbox/os/Makefile b/arch/sandbox/os/Makefile
index 7a76fb0290e8..c40bc78d31dd 100644
--- a/arch/sandbox/os/Makefile
+++ b/arch/sandbox/os/Makefile
@@ -20,7 +20,8 @@ ifeq ($(CONFIG_SANDBOX_LINUX_I386),y)
 KBUILD_CFLAGS += -m32
 endif
 
-obj-y = common.o tap.o setjmp.o
+obj-y = common.o setjmp.o
+obj-$(CONFIG_DRIVER_NET_TAP) += tap.o
 obj-$(CONFIG_MALLOC_LIBC) += libc_malloc.o
 
 CFLAGS_sdl.o = $(shell $(PKG_CONFIG) sdl2 --cflags)
-- 
2.39.5



