Delivery-date: Tue, 13 Aug 2024 14:45:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdqu9-009CH1-2K
	for lore@lore.pengutronix.de;
	Tue, 13 Aug 2024 14:45:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdqu9-0004G1-3Y
	for lore@pengutronix.de; Tue, 13 Aug 2024 14:45:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XtIxwQ7NojgVPy2mCVCJyk6v6yPyKK4JV+afrDXsihU=; b=oGoTPudwy3D9sPORUYhhZwsCnQ
	xldQJ9ZXM9MK0VFsgSXa4OQ5wAkd5BEvLbHTXGl/uUxkpbWtuKYUs5Hgj9eq0CIhjpmmYcQWvFoQi
	+dtqm6MitJK8IAOsILyQRya2d0yeLkJMWnudtRlnf5YAuN9JvFOK1UC+C1EiM45aJMVuywNT5Fe5j
	qzFDW49D0v9WM4RVYtuMVzya/XZSl1V3klrY6Yhh1aTrmIMzj7cC9/D3K4OLSCZY6NL/qskK5vEat
	BomPZ2fvyA+RwSTNmBXqWm5gcARBjJxxYVVzBsSMiswAOtTIUn2Q5FB/VANn1201rLgiElzYlCKyb
	x/ZtqD4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdqtS-00000003kCu-0qO6;
	Tue, 13 Aug 2024 12:44:54 +0000
Received: from smtpout145.security-mail.net ([85.31.212.145])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdqtL-00000003k8S-2Knj
	for barebox@lists.infradead.org;
	Tue, 13 Aug 2024 12:44:51 +0000
Received: from localhost (fx405.security-mail.net [127.0.0.1])
	by fx405.security-mail.net (Postfix) with ESMTP id C72D0336131
	for <barebox@lists.infradead.org>; Tue, 13 Aug 2024 14:44:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1723553082;
	bh=0zKqWtho3CPd6wlPyfhk+tSVBW+QYiFP2LRRQiFMyOs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=I4GrVs7nAwD8r6L5/+2UtVfOG0hAv2FC1O2ClV5AsLORRSQAOrjfZO5i2fBEoBpnM
	 yjQ/x4BIyxaW3oDr4I/DgyXdCPREK2VsFiQIGbbF+hg3g4CuxW2aJV7gV9Ju9XfJsv
	 ocwWPIkYjUHGR92tYrFTRjCCD8yGuM8OLzEha2EE=
Received: from fx405 (fx405.security-mail.net [127.0.0.1]) by
 fx405.security-mail.net (Postfix) with ESMTP id 9EBCA33610F; Tue, 13 Aug
 2024 14:44:42 +0200 (CEST)
Received: from srvsmtp.lin.mbt.kalray.eu (unknown [217.181.231.53]) by
 fx405.security-mail.net (Postfix) with ESMTPS id DCB6A33610E; Tue, 13 Aug
 2024 14:44:41 +0200 (CEST)
Received: from junon.lan.kalrayinc.com (unknown [192.168.37.161]) by
 srvsmtp.lin.mbt.kalray.eu (Postfix) with ESMTPS id B150E4033E; Tue, 13 Aug
 2024 14:44:41 +0200 (CEST)
X-Quarantine-ID: <XjowW2JtuASH>
X-Secumail-id: <24f2.66bb5539.da023.0>
From: Yann Sionneau <ysionneau@kalrayinc.com>
To: barebox@lists.infradead.org
Cc: jvetter@kalrayinc.com, jborne@kalrayinc.com, Yann Sionneau
 <ysionneau@kalrayinc.com>
Date: Tue, 13 Aug 2024 14:44:07 +0200
Message-ID: <20240813124408.2569-2-ysionneau@kalrayinc.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240813124408.2569-1-ysionneau@kalrayinc.com>
References: <20240813124408.2569-1-ysionneau@kalrayinc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=utf-8
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_054448_042244_8F3E1027 
X-CRM114-Status: UNSURE (   6.65  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/3] ci: container: add qemu-system-kvx
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add qemu-system-kvx in CI container.

This will allow to run tests in CI for kvx arch.

Signed-off-by: Yann Sionneau <ysionneau@kalrayinc.com>
---
v1 -> v2:
  - no change

 test/Containerfile | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/test/Containerfile b/test/Containerfile
index fe3e3a6186..507673bff5 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -14,14 +14,18 @@ RUN apt-get update && apt-get install -y \
 	bison \
 	build-essential \
 	coreutils \
+	cmake \
 	flex \
 	gawk \
 	git \
 	imagemagick \
 	libc6-i386 \
+	libfdt-dev \
 	libgit2-dev \
+	libglib2.0-dev \
 	libguestfs-tools \
 	liblz4-tool \
+	libpixman-1-dev \
 	libseccomp-dev \
 	libssl-dev \
 	libtool \
@@ -30,6 +34,7 @@ RUN apt-get update && apt-get install -y \
 	lzma-alone \
 	lzop \
 	mount \
+	ninja-build \
 	openssl \
 	pkg-config \
 	util-linux \
@@ -47,6 +52,8 @@ RUN apt-get update && apt-get install -y \
 	virtualenv \
 	sudo \
 	u-boot-tools \
+	unzip \
+	zlib1g-dev \
 	&& rm -rf /var/lib/apt/lists/*
 
 ENV GCC_VERSION=13.1.0
@@ -62,6 +69,12 @@ RUN korg_crosstool_dl() { wget -nv -O - https://mirrors.edge.kernel.org/pub/tool
 
 RUN wget "https://github.com/qemu/qemu/blob/v5.2.0/pc-bios/opensbi-riscv32-generic-fw_dynamic.bin?raw=true" -O /usr/share/qemu/opensbi-riscv32-generic-fw_dynamic.bin
 
+# Compile qemu-system-kvx
+RUN git clone https://github.com/kalray/qemu-builder
+RUN cd qemu-builder && git submodule update --init
+RUN cd qemu-builder && make -j$(($(nproc) + 1))
+RUN cd qemu-builder && ln -s $(realpath prefix/bin/qemu-system-kvx) /usr/local/bin/
+
 # Create our user/group
 RUN useradd -m -U barebox
 RUN echo barebox ALL=NOPASSWD: ALL > /etc/sudoers.d/barebox
-- 
2.34.1







