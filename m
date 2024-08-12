Delivery-date: Mon, 12 Aug 2024 11:16:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdRA0-008oW0-2d
	for lore@lore.pengutronix.de;
	Mon, 12 Aug 2024 11:16:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdRA0-0003Dl-5b
	for lore@pengutronix.de; Mon, 12 Aug 2024 11:16:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/wXwwKCxx3N6rFqI0Iuok3uXP+0eJ2CdqOdp0Jm8zwg=; b=p+Al/IiqoAllPaVXX4wgccYPIv
	emL48ohrFwuDgjM4rrLzKxw0xjseq52hVdWN+4sTCv4Vk1+oSQloYH3IAV4+rG8ZvApXm3eK7sKLC
	k/VdDoF98tVVpQOkRQ/P7Lip0bjqE4aa1PQIHFnUn6uAsPdh5I2Yq1vQv/Vh/tDQH1bcWViRkYN2O
	OBaf9MbuPvrkSSNgVms96JDzSxCUrqWsGe7Tn4duaSlzd1OC6ot8/bhQqAxWgzLznJFNZxW6PGUz/
	AZvDQoFWEg0e3C9d38G5RibXw7JdaazxAG3ZbDR4kILabS2gDYLVYZBBKZG+G+Chc0WsUYFRlqkmQ
	tlSf8WzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdR9Z-0000000HPlA-0cmB;
	Mon, 12 Aug 2024 09:15:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdR9V-0000000HPjQ-3Zey
	for barebox@lists.infradead.org;
	Mon, 12 Aug 2024 09:15:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdR9E-0002se-F6; Mon, 12 Aug 2024 11:15:28 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdR9D-006KDD-Su; Mon, 12 Aug 2024 11:15:27 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdR9D-00Cjq9-2a;
	Mon, 12 Aug 2024 11:15:27 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Yann Sionneau <ysionneau@kalrayinc.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Aug 2024 11:15:18 +0200
Message-Id: <20240812091522.3035469-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240812091522.3035469-1-a.fatoum@pengutronix.de>
References: <20240812091522.3035469-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_021545_919639_5BF3BEBF 
X-CRM114-Status: UNSURE (   8.22  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/6] ci: container: add kvx-elf- toolchain
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ARCH=kvx build has been broken in the past, because it was the only
barebox platform that wasn't build tested.

There are prebuilt toolchains of acceptable footprint (64M compressed),
so let's integrate them into the image, so we can add it to build test.

There's no prebuilt Qemu unfortunately, so actually testing the result
will have to wait.

Cc: Yann Sionneau <ysionneau@kalrayinc.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/Containerfile | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/test/Containerfile b/test/Containerfile
index 06d155bf4d28..2f8c969d824f 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -60,6 +60,13 @@ RUN korg_crosstool_dl() { wget -nv -O - https://mirrors.edge.kernel.org/pub/tool
     korg_crosstool_dl x86_64 ${GCC_VERSION} powerpc-linux     && \
     korg_crosstool_dl x86_64 ${GCC_VERSION} riscv64-linux
 
+RUN wget -O kvx.tgz https://github.com/kalray/build-scripts/releases/download/v5.0.0/gcc-kalray-kvx-ubuntu-22.04-v5.0.0.tar.gz
+
+RUN echo "d27b3d6e6246f5debffee0bb01e77eb133bd32c658782a68a779cf9fb4c436bc kvx.tgz" | \
+    sha256sum --check --status
+
+RUN tar -C /opt -xzf kvx.tgz && rm kvx.tgz
+
 RUN wget "https://github.com/qemu/qemu/blob/v5.2.0/pc-bios/opensbi-riscv32-generic-fw_dynamic.bin?raw=true" -O /usr/share/qemu/opensbi-riscv32-generic-fw_dynamic.bin
 
 # Create our user/group
@@ -79,5 +86,6 @@ ENV CROSS_COMPILE_mips=/opt/gcc-${GCC_VERSION}-nolibc/mips-linux/bin/mips-linux-
 ENV CROSS_COMPILE_openrisc=/opt/gcc-${GCC_VERSION}-nolibc/or1k-linux/bin/or1k-linux-
 ENV CROSS_COMPILE_powerpc=/opt/gcc-${GCC_VERSION}-nolibc/powerpc-linux/bin/powerpc-linux-
 ENV CROSS_COMPILE_riscv=/opt/gcc-${GCC_VERSION}-nolibc/riscv64-linux/bin/riscv64-linux-
+ENV CROSS_COMPILE_kvx=/opt/gcc-kalray-kvx-v5.0.0/bin/kvx-elf-
 
 USER barebox:barebox
-- 
2.39.2



