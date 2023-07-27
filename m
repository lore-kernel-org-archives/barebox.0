Delivery-date: Thu, 27 Jul 2023 10:49:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOwh6-00Btye-SE
	for lore@lore.pengutronix.de; Thu, 27 Jul 2023 10:49:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOwh4-0007NO-DG
	for lore@pengutronix.de; Thu, 27 Jul 2023 10:49:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gFbDuzRZl1rtmPCUj1ouyHwas8K1QfCghOZ3x6jGXtU=; b=WnBHk8LWKcCNGUI2puAheKg3SY
	fSu4JDTIYzSymb+ZmUcK1X23rDGSHmxzh9W4O0AKG5v/WLaUFWlGbcvHfShIUQwK6VVV15zz2L8ws
	i8qDUQOjj8Zvrh8OZ/QFaGx47iEXjSzRYfOwB2RLyKOhzrULJ685ZkoNEHMlHNnH2hGPBhZFHgdvx
	7qtBxLhC8D1ZCsgZdoc8TfB8+utzDnr7ra8uVT6rxK8swkZvBXqwuXGYsRCHBm9VtqCsmwk9cCcDM
	H3F2iz5HmOqJcKrLHEOibgHnFe1mAwsREJc7d0BBIBMVx22sTpY+sInb2CiOsFFeMoY7fbV3oMDYe
	bqDUc2EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOwfh-00Ciss-0t;
	Thu, 27 Jul 2023 08:48:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOwfa-00Ciq0-3D
	for barebox@lists.infradead.org;
	Thu, 27 Jul 2023 08:48:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qOwfU-00076i-FQ; Thu, 27 Jul 2023 10:48:20 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qOwfT-002R2B-Lc; Thu, 27 Jul 2023 10:48:19 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qOwfT-003oE2-1j;
	Thu, 27 Jul 2023 10:48:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 27 Jul 2023 10:48:12 +0200
Message-Id: <20230727084812.880438-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230727084812.880438-1-a.fatoum@pengutronix.de>
References: <20230727084812.880438-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230727_014827_060687_7BC675F7 
X-CRM114-Status: GOOD (  15.09  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] kbuild: Add environment variables for userprogs flags
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Elliot Berman <quic_eberman@quicinc.com>

Build systems integrating barebox may want to pass compiler and linker
options for when barebox is building target tools. This is especially
important when the compiler toolchain is configured without a sysroot
like in Yocto and the --sysroot option must be used. As there was no
option explicitly meant for this, userccflags is sometimes abused and
set in the environment[1][2].

While this appears to work, it breaks when setting userccflags as make
option instead of an environment variable. Let's just provide USERCFLAGS
and USERLDFLAGS explicitly for this use case.

This is an adaptation of Linux commit:

    | commit f67695c9962e5f444549b3437fb8d840ec6222c8
    | Author: Elliot Berman <quic_eberman@quicinc.com>
    | Date:   Tue Feb 1 13:35:42 2022 -0800
    |
    | Allow additional arguments be passed to userprogs compilation.
    | Reproducible clang builds need to provide a sysroot and gcc path to
    | ensure the same toolchain is used across hosts. KCFLAGS is not currently
    | used for any user programs compilation, so add new USERCFLAGS and
    | USERLDFLAGS which serves similar purpose as HOSTCFLAGS/HOSTLDFLAGS.
    |
    | Clang might detect GCC installation on hosts which have it installed
    | to a default location in /. With addition of these environment
    | variables, you can specify flags such as:
    |
    | $ make USERCFLAGS=--sysroot=/path/to/sysroot
    |
    | This can also be used to specify different sysroots such as musl or
    | bionic which may be installed on the host in paths that the compiler
    | may not search by default.
    |
    | Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>

[1]: https://github.com/pengutronix/meta-ptx/blob/38ada68c70/recipes-bsp/barebox/barebox.inc#L91
[2]: https://lore.kernel.org/all/20230331104025.1478393-3-ejo@pengutronix.de/

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/Makefile b/Makefile
index acf7b2006765..f935fd2604b2 100644
--- a/Makefile
+++ b/Makefile
@@ -386,11 +386,12 @@ HOST_LFS_LIBS := $(shell getconf LFS_LIBS 2>/dev/null)
 HOSTCC       = gcc
 HOSTCXX      = g++
 
-export KBUILD_USERCFLAGS := -Wall -Wmissing-prototypes -Wstrict-prototypes \
+KBUILD_USERHOSTCFLAGS := -Wall -Wmissing-prototypes -Wstrict-prototypes \
 			      -O2 -fomit-frame-pointer -std=gnu89
-export KBUILD_USERLDFLAGS :=
+KBUILD_USERCFLAGS  := $(KBUILD_USERHOSTCFLAGS) $(USERCFLAGS)
+KBUILD_USERLDFLAGS := $(USERLDFLAGS)
 
-KBUILD_HOSTCFLAGS   := $(KBUILD_USERCFLAGS) $(HOST_LFS_CFLAGS) $(HOSTCFLAGS)
+KBUILD_HOSTCFLAGS   := $(KBUILD_USERHOSTCFLAGS) $(HOST_LFS_CFLAGS) $(HOSTCFLAGS)
 KBUILD_HOSTCXXFLAGS := -Wall -O2 $(HOST_LFS_CFLAGS) $(HOSTCXXFLAGS)
 KBUILD_HOSTLDFLAGS  := $(HOST_LFS_LDFLAGS) $(HOSTLDFLAGS)
 KBUILD_HOSTLDLIBS   := $(HOST_LFS_LIBS) $(HOSTLDLIBS)
@@ -475,6 +476,7 @@ export CPP AR NM STRIP OBJCOPY OBJDUMP MAKE AWK GENKSYMS PERL PYTHON3 UTS_MACHIN
 export LEX YACC
 export HOSTCXX CHECK CHECKFLAGS
 export KBUILD_HOSTCXXFLAGS KBUILD_HOSTLDFLAGS KBUILD_HOSTLDLIBS LDFLAGS_MODULE
+export KBUILD_USERCFLAGS KBUILD_USERLDFLAGS
 
 export KBUILD_CPPFLAGS NOSTDINC_FLAGS LINUXINCLUDE OBJCOPYFLAGS KBUILD_LDFLAGS
 export KBUILD_CFLAGS CFLAGS_KERNEL CFLAGS_MODULE
-- 
2.39.2



