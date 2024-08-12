Delivery-date: Mon, 12 Aug 2024 16:42:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdWFu-008t2u-34
	for lore@lore.pengutronix.de;
	Mon, 12 Aug 2024 16:42:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdWFu-0006Xs-Bp
	for lore@pengutronix.de; Mon, 12 Aug 2024 16:42:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JFTtr40Ig5jgtOjmSWfYW8vq8EZhxNsNo0yK/0lV8Yo=; b=X//ChL37a00ZoYdZTnguoFzIng
	OSJqie5767yTBQfUI13fdy8WHw3kLwVqhhvhzKIZudCVoOesVRZKyNT2shjyKq67oRxGj5rNCk3Yf
	eOFmvsxqw8CKbblMOiHDMNiT+ld+ji+99gHfzTMR1K4ZJcBlv3LCjOs2jT+hfTo3y5iU5ood/IHxK
	G/iFlwW6ctVyvXwJCaJ5CeLPJK9iEjWXlj+p+lprld6YpdqbY6ipJrygdCUIcBYWrsmr+APEXRU4m
	DA+gOM+wNzLMTiTmAnNg0NrloimACGO7NIV5S4mG6iAJYOn7sq+9XlJR/2Fa51OQwOi+XmNSCEu4p
	8/ifVOHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdWFL-00000000cPj-25sJ;
	Mon, 12 Aug 2024 14:42:07 +0000
Received: from smtpout35.security-mail.net ([85.31.212.35])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdWFG-00000000cNV-48dy
	for barebox@lists.infradead.org;
	Mon, 12 Aug 2024 14:42:04 +0000
Received: from localhost (fx305.security-mail.net [127.0.0.1])
	by fx305.security-mail.net (Postfix) with ESMTP id AED6130F12E
	for <barebox@lists.infradead.org>; Mon, 12 Aug 2024 16:42:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1723473721;
	bh=oi8lrd4uCTEV4QfYHGtbXjcf+bQe8dEPRQ4W8gfneh8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=HUYCKH9NNsM5YVEWe8e4QzTGR2SzuHGSVgN7UW+Ar1JlcNzBshawTKexCopvUO+AP
	 oQKmAty1uJK6P+cJpgj3/Tk5+R3tb7HHgE+TvMc7XMjSIdEMGjj674EXotv0jmwCps
	 E8sEV04jS4GHHKU9sCMy1wEArDvxz/aY1iuAzxII=
Received: from fx305 (fx305.security-mail.net [127.0.0.1]) by
 fx305.security-mail.net (Postfix) with ESMTP id 458FE30F0DB; Mon, 12 Aug
 2024 16:42:01 +0200 (CEST)
Received: from srvsmtp.lin.mbt.kalray.eu (unknown [217.181.231.53]) by
 fx305.security-mail.net (Postfix) with ESMTPS id 1965930F02D; Mon, 12 Aug
 2024 16:42:00 +0200 (CEST)
Received: from junon.lan.kalrayinc.com (unknown [192.168.37.161]) by
 srvsmtp.lin.mbt.kalray.eu (Postfix) with ESMTPS id CDD8C402CE; Mon, 12 Aug
 2024 16:41:59 +0200 (CEST)
X-Quarantine-ID: <vYKiWt_e18Xo>
X-Secumail-id: <4885.66ba1f38.16574.0>
From: Yann Sionneau <ysionneau@kalrayinc.com>
To: barebox@lists.infradead.org
Cc: jvetter@kalrayinc.com, jborne@kalrayinc.com, Yann Sionneau
 <ysionneau@kalrayinc.com>
Date: Mon, 12 Aug 2024 16:41:49 +0200
Message-ID: <20240812144150.27707-2-ysionneau@kalrayinc.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240812144150.27707-1-ysionneau@kalrayinc.com>
References: <20240812144150.27707-1-ysionneau@kalrayinc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=utf-8
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_074203_179375_DC0ED815 
X-CRM114-Status: UNSURE (   6.25  )
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
Subject: [PATCH 2/3] ci: container: add qemu-system-kvx
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add qemu-system-kvx in CI container.

This will allow to run tests in CI for kvx arch.

Signed-off-by: Yann Sionneau <ysionneau@kalrayinc.com>
---
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







