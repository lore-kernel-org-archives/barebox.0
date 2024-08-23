Delivery-date: Fri, 23 Aug 2024 11:25:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1shQXp-00CXE3-05
	for lore@lore.pengutronix.de;
	Fri, 23 Aug 2024 11:25:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1shQXo-0002rA-Do
	for lore@pengutronix.de; Fri, 23 Aug 2024 11:25:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pNvZIYWkx0W7fDscg1w0rdHAmGFkOT9CpORTYGgCCb4=; b=ToeRNunx7VjAlG/huG2lx/Zs1R
	/NJwrl3hGAJd9J30oK2QxPghM7fqLdqH5Q3aXlyapX/OZKPUERVUVBy1EuponCSOV/hywA7lsv4aI
	o3MJvYeZAoDHzxve45p/ZBCeJGWpBd/5c9hVekK53vRna7W/gHRJW2MCGNGvFO8b0AFGOHjxtYUhl
	dhFHGdN2oj9VXrDmWkXFCAEidPQ5R7fsa7bboQHkF0Ayk1j0NvQKcqaG+D1hUxsFzpJSJQ2RLS2bK
	LW/gj2UyILz6Oly+Z7YKaCFsJLlvtryMkb+iXZ3JQppAQcGOu74WzH3EgmwFn35RC5qZ1D4IqSJFB
	/n/mhxdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shQXC-0000000G6IL-0oKa;
	Fri, 23 Aug 2024 09:24:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shQVg-0000000G5mC-1i6c
	for barebox@lists.infradead.org;
	Fri, 23 Aug 2024 09:23:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1shQVe-0002XI-Hq; Fri, 23 Aug 2024 11:23:06 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1shQVe-002S8w-56; Fri, 23 Aug 2024 11:23:06 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1shQVe-00Af7P-0C;
	Fri, 23 Aug 2024 11:23:06 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 23 Aug 2024 11:23:05 +0200
Message-Id: <20240823092305.2541326-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_022308_468838_E4088F55 
X-CRM114-Status: GOOD (  10.36  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ci: container: restore OpenRISC toolchain to v14.2.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The toolchain was downgraded due my mistaken assumption that the new
toolchain is what broke the CI tests. It turns out barebox continued
to work normally, after the container update, but QEMU has moved the
default console away from the single console that barebox knew about.

This has since been worked around by commit b2a21df3b07b ("openrisc:
dts: describe all 4 UARTs"), so let's remove the needless downgrade
of the OpenRISC toolchain and use the same GCC version that we use
for the other architectures.

Fixes: 18a154ce190e ("ci: container: fix CROSS_COMPILE_openrisc to point at correct version")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/Containerfile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/test/Containerfile b/test/Containerfile
index 1c4932f56a64..5c49164d33b6 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -56,7 +56,7 @@ RUN korg_crosstool_dl() { wget -nv -O - https://mirrors.edge.kernel.org/pub/tool
     korg_crosstool_dl x86_64 ${GCC_VERSION} arm-linux-gnueabi && \
     korg_crosstool_dl x86_64 ${GCC_VERSION} aarch64-linux     && \
     korg_crosstool_dl x86_64 ${GCC_VERSION} mips-linux        && \
-    korg_crosstool_dl x86_64 13.1.0         or1k-linux        && \
+    korg_crosstool_dl x86_64 ${GCC_VERSION} or1k-linux        && \
     korg_crosstool_dl x86_64 ${GCC_VERSION} powerpc-linux     && \
     korg_crosstool_dl x86_64 ${GCC_VERSION} riscv64-linux
 
@@ -83,7 +83,7 @@ RUN cd /tmp && \
 ENV CROSS_COMPILE_arm=/opt/gcc-${GCC_VERSION}-nolibc/arm-linux-gnueabi/bin/arm-linux-gnueabi-
 ENV CROSS_COMPILE_arm64=/opt/gcc-${GCC_VERSION}-nolibc/aarch64-linux/bin/aarch64-linux-
 ENV CROSS_COMPILE_mips=/opt/gcc-${GCC_VERSION}-nolibc/mips-linux/bin/mips-linux-
-ENV CROSS_COMPILE_openrisc=/opt/gcc-13.1.0-nolibc/or1k-linux/bin/or1k-linux-
+ENV CROSS_COMPILE_openrisc=/opt/gcc-${GCC_VERSION}-nolibc/or1k-linux/bin/or1k-linux-
 ENV CROSS_COMPILE_powerpc=/opt/gcc-${GCC_VERSION}-nolibc/powerpc-linux/bin/powerpc-linux-
 ENV CROSS_COMPILE_riscv=/opt/gcc-${GCC_VERSION}-nolibc/riscv64-linux/bin/riscv64-linux-
 ENV CROSS_COMPILE_kvx=/opt/gcc-kalray-kvx-v5.0.0/bin/kvx-elf-
-- 
2.39.2



