Delivery-date: Mon, 05 Jun 2023 08:37:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63ql-00BSLL-Uo
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 08:37:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63qi-0004Of-PG
	for lore@pengutronix.de; Mon, 05 Jun 2023 08:37:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vn95Kn73/KbuFvkxe6Uek5Y+YwNyewjTT4JDLJvG3yU=; b=ffX6IldUxDw6R27HEzcmbb+a/n
	foPZWBooi2N5aEapPMZRPVU+dDJf7ilX8MhM1qZg4r0NIbwEX68W76BmzbRcsu/FsD/FI5bULlAr3
	URWW6w7ycwiUroN3Yos7bOF0T21ogTva5VNIdsV3I9loDMSb7fAT1JJoNGFUceTvjTsoXNkC4rpap
	TFYSeaBhPZQJUlc7BGsO3y6Sc4a4fPrrFAMu6uf5u2uvuSD+0kLefm67uhy+NVv0NpVw7SvjB3srz
	gWzfFPESLo4TmjXYwAuo9yjAkheR3Koqko6jJfyUwTE+Q7JV8kMFMDF3GQPZsGCQ6VvjYQ2x6jcyd
	D8zTTXPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q63pe-00ENOI-0n;
	Mon, 05 Jun 2023 06:36:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q63pV-00ENEA-2U
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 06:36:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q63pM-0003VY-GS; Mon, 05 Jun 2023 08:36:28 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63pL-005CtA-Mo; Mon, 05 Jun 2023 08:36:27 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63pK-005pOD-E0; Mon, 05 Jun 2023 08:36:26 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Jun 2023 08:36:12 +0200
Message-Id: <20230605063623.1254764-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230605063623.1254764-1-a.fatoum@pengutronix.de>
References: <20230605063623.1254764-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_233637_818965_55F86635 
X-CRM114-Status: UNSURE (   9.20  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 03/14] test/Containerfile: install only one RISC-V toolchain
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

riscv32-linux- and riscv64-linux- seem to only differ in defaults and
both are capable of compiling rv32 and rv64 code and indeed only one
toolchain was actually used.

It's probably less surprising to use rv64 toolchain for both rv32 and
v64, so let's keep only that and drop the non-unused rv32 toolchain.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/Containerfile | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/test/Containerfile b/test/Containerfile
index ff08cc1a7841..e637c68b4d08 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -73,7 +73,6 @@ RUN korg_crosstool_dl() { wget -O - https://mirrors.edge.kernel.org/pub/tools/cr
     korg_crosstool_dl x86_64 ${GCC_VERSION} i386-linux        && \
     korg_crosstool_dl x86_64 ${GCC_VERSION} mips-linux        && \
     korg_crosstool_dl x86_64 ${GCC_VERSION} powerpc-linux     && \
-    korg_crosstool_dl x86_64 ${GCC_VERSION} riscv32-linux     && \
     korg_crosstool_dl x86_64 ${GCC_VERSION} riscv64-linux
 
 RUN wget "https://github.com/qemu/qemu/blob/v5.2.0/pc-bios/opensbi-riscv32-generic-fw_dynamic.bin?raw=true" -O /usr/share/qemu/opensbi-riscv32-generic-fw_dynamic.bin
@@ -93,6 +92,6 @@ ENV CROSS_COMPILE_arm=/opt/gcc-${GCC_VERSION}-nolibc/arm-linux-gnueabi/bin/arm-l
 ENV CROSS_COMPILE_arm64=/opt/gcc-${GCC_VERSION}-nolibc/aarch64-linux/bin/aarch64-linux-
 ENV CROSS_COMPILE_mips=/opt/gcc-${GCC_VERSION}-nolibc/mips-linux/bin/mips-linux-
 ENV CROSS_COMPILE_powerpc=/opt/gcc-${GCC_VERSION}-nolibc/powerpc-linux/bin/powerpc-linux-
-ENV CROSS_COMPILE_riscv=/opt/gcc-${GCC_VERSION}-nolibc/riscv32-linux/bin/riscv32-linux-
+ENV CROSS_COMPILE_riscv=/opt/gcc-${GCC_VERSION}-nolibc/riscv64-linux/bin/riscv64-linux-
 
 USER barebox:barebox
-- 
2.39.2



