Delivery-date: Tue, 13 Aug 2024 09:02:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdlYR-0097E6-1w
	for lore@lore.pengutronix.de;
	Tue, 13 Aug 2024 09:02:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdlYQ-0004Sr-QP
	for lore@pengutronix.de; Tue, 13 Aug 2024 09:02:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gUsgP2BJpWfUjIh2rkaupZgh9cOLfJ2xBMdftvnX75w=; b=W2UfY51tNMYnrAh9sH/JGlg0f3
	eJjGjDqTBXD4fX8ASx8JUrFMUf0NGNQzHK0TKwt3tzTLizwUo/adHHUPraqHmTf/+SBfKC0/dn2dR
	LTLn2kgli8Ydli6ChDhQbLntt2XcoaARD9488tiWbMLGIPKB5EjM0ICu0fHsb2nJBFPO2VTELYSNl
	Weo6q8OkbfDFlULBTte+5khhQDA1DE3qaE3GBDOpr47+1mruBE5B5LVykvzho2wBDQ6BCY53SEMpB
	7X8G+rEu0bc2vgDBQUN0/0GFMve3HaUc3x656nSwEEWbd9yezJfJRNd5Oo+mQC1tDVYZZbFfkhbr0
	q+nbrnjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdlXw-00000002dd1-1KPc;
	Tue, 13 Aug 2024 07:02:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdlXg-00000002dYO-0CPr
	for barebox@lists.infradead.org;
	Tue, 13 Aug 2024 07:02:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdlXe-000481-Hq; Tue, 13 Aug 2024 09:02:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdlXe-0004ET-4Y; Tue, 13 Aug 2024 09:02:02 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdlXe-004UK1-09;
	Tue, 13 Aug 2024 09:02:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 13 Aug 2024 09:01:55 +0200
Message-Id: <20240813070201.1069847-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_000204_474959_30D9E5E4 
X-CRM114-Status: GOOD (  13.68  )
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
Subject: [PATCH 1/7] ci: container: update to Debian Bookworm with GCC v14.2.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have been using the same distro/toolchain for more than a year now,
so let's update them to their newest versions.

pip3 now warns that we are not in a venv. Acknowledge this and ignore
it as we want labgrid to be available to pytest in the container without
having to source a virtualenv first.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
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



