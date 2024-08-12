Delivery-date: Mon, 12 Aug 2024 11:16:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdR9v-008oUH-2F
	for lore@lore.pengutronix.de;
	Mon, 12 Aug 2024 11:16:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdR9u-0003AF-PM
	for lore@pengutronix.de; Mon, 12 Aug 2024 11:16:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vOjBv/vg16o2ZXeVgON++1viHUxhK4X5yRjwY6jH9zk=; b=0nbgBzhPw89xjEprfb69xFa9Ni
	lTSj4L+vxssWSBWuEgQI1YZsYwjMjVUF33zTCXVF/tHDGuTwVUZe0nRawM4NkpuPIHxIyI0ViglKG
	35VvnXk8G9K6/ULGjOU70otwHJhO2O9MvFjVvCMHNCRg16vQaCjQyFygZGtr3Ym0p63mrVeamtgas
	AE6hu7kDH9ROkyZd78uWE/MSeNqFmPgoAbRAcVCiWwgdKk5WeCnzVWEspZb3P+Axnc7XPqk90g4mB
	KH8owkeF0xr3ZFiFcxWbAt15hqW9710GdbE6F9lKRkJL8LoKZzy0A4ZhOQ1/hv32Br928IJj+vNh2
	oWhGa7lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdR9K-0000000HPel-2nKq;
	Mon, 12 Aug 2024 09:15:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdR9F-0000000HPb4-3ONP
	for barebox@lists.infradead.org;
	Mon, 12 Aug 2024 09:15:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdR9E-0002sd-8b; Mon, 12 Aug 2024 11:15:28 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdR9D-006KDC-RK; Mon, 12 Aug 2024 11:15:27 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdR9D-00Cjq9-2R;
	Mon, 12 Aug 2024 11:15:27 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Aug 2024 11:15:17 +0200
Message-Id: <20240812091522.3035469-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_021529_916328_D2399ACE 
X-CRM114-Status: GOOD (  13.33  )
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
Subject: [PATCH 1/6] ci: container: update to Debian Bookworm with GCC v14.2.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have been using the same distro/toolchain for more than a year now,
so let's update them to their newest versions.

pip3 now warns that we are not in a venv. Acknowledge this and ignore
it as we want labgrid to be available to pytest in the container without
having to source a virtualenv first.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/Containerfile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/test/Containerfile b/test/Containerfile
index fe3e3a6186b0..06d155bf4d28 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -2,7 +2,7 @@
 # This Containerfile is used to build an image containing basic stuff to be used
 # to build barebox and run our test suites.
 
-FROM debian:bullseye
+FROM debian:bookworm
 MAINTAINER Sascha Hauer <s.hauer@pengutronix.de>
 LABEL Description="This image is for building and testing barebox inside a container"
 
@@ -49,7 +49,7 @@ RUN apt-get update && apt-get install -y \
 	u-boot-tools \
 	&& rm -rf /var/lib/apt/lists/*
 
-ENV GCC_VERSION=13.1.0
+ENV GCC_VERSION=14.2.0
 
 # Manually install the kernel.org Crosstool based toolchains
 RUN korg_crosstool_dl() { wget -nv -O - https://mirrors.edge.kernel.org/pub/tools/crosstool/files/bin/${1}/${2}/${1}-gcc-${2}-nolibc-${3}.tar.xz | tar -C /opt -xJ ; } && \
@@ -70,7 +70,7 @@ RUN echo barebox ALL=NOPASSWD: ALL > /etc/sudoers.d/barebox
 RUN cd /tmp && \
     git clone --depth 1 -b v23.0 https://github.com/labgrid-project/labgrid && \
     cd labgrid && \
-    pip3 install . && \
+    pip3 install --break-system-packages . && \
     ln -s $(which pytest) /usr/local/bin/labgrid-pytest;
 
 ENV CROSS_COMPILE_arm=/opt/gcc-${GCC_VERSION}-nolibc/arm-linux-gnueabi/bin/arm-linux-gnueabi-
-- 
2.39.2



