Delivery-date: Tue, 02 Sep 2025 01:12:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utDhj-0074lH-3D
	for lore@lore.pengutronix.de;
	Tue, 02 Sep 2025 01:12:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utDhi-0006Rm-Ph
	for lore@pengutronix.de; Tue, 02 Sep 2025 01:12:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BGq4XrsXg12Z5rO7SNgkO6F9IH2XLnTBryFeZO+F4ek=; b=LUQVJJTa9AlbiZTn2bAJS8GdMH
	WBoCGqrnG7kMTso+0lBBKEaFHH/yDXUhgG3qaE4BsS6qgLEd9VFm8GoQWUn4AHgbGGqV5fX+QIbLx
	aqiCeG9PtwF/52UybK4Nr/82Ravjz9xGNgnaNpUDTwzBVx2AbbvezIFWHB0zIXVDRfPLUzcoNJXsv
	TJyqTK4cZmccNbEeL9pj5UJ/9RlnsyDxGeUtcxm9PvnkaTMlpW7eFeEJMNFbXjjU31Fnnzr0IQuhj
	sBw0pcJ9A5Fm+nv++pvEv3M6IjoUVVcThPXvk42JSZ3TZT1O+Awwvlb4WggLI5TfzHOFxF1rYvyCh
	BUtC/Erg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utDh0-0000000EDvo-46BF;
	Mon, 01 Sep 2025 23:12:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut6cR-0000000D8iw-30j7
	for barebox@lists.infradead.org;
	Mon, 01 Sep 2025 15:38:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut6cQ-0006YW-Ed; Mon, 01 Sep 2025 17:38:54 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut6cQ-003FNn-0n;
	Mon, 01 Sep 2025 17:38:54 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut6cQ-0000000AlDQ-0chb;
	Mon, 01 Sep 2025 17:38:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Sep 2025 17:38:04 +0200
Message-ID: <20250901153852.2554758-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250901153852.2554758-1-a.fatoum@pengutronix.de>
References: <20250901153852.2554758-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_083855_759520_36BAE975 
X-CRM114-Status: GOOD (  11.27  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] ci: container: update to Debian Trixie
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Debian Trixie was released last month. Let's update our container to it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/Containerfile | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/test/Containerfile b/test/Containerfile
index 9a1df8efb99c..39bd64603e86 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -2,7 +2,7 @@
 # This Containerfile is used to build an image containing basic stuff to be used
 # to build barebox and run our test suites.
 
-FROM debian:bookworm
+FROM debian:trixie
 MAINTAINER Sascha Hauer <s.hauer@pengutronix.de>
 LABEL Description="This image is for building and testing barebox inside a container"
 
@@ -21,7 +21,7 @@ RUN apt-get update && apt-get install -y --no-install-recommends \
 	libc6-i386 \
 	libgit2-dev \
 	libguestfs-tools \
-	liblz4-tool \
+	lz4 \
 	librsvg2-bin \
 	libseccomp-dev \
 	libssl-dev \
@@ -61,11 +61,10 @@ RUN apt-get update && apt-get install -y --no-install-recommends \
 ENV GCC_VERSION=15.2.0
 ENV LLVM_VERSION=21
 
-RUN apt-get update && apt-get install -y --no-install-recommends \
-	lsb-release software-properties-common gnupg \
+RUN apt-get update && apt-get install -y --no-install-recommends lsb-release gnupg \
 	&& wget https://apt.llvm.org/llvm.sh \
 	&& chmod +x llvm.sh && ./llvm.sh ${LLVM_VERSION} \
-	&& apt-get remove -y lsb-release software-properties-common gnupg \
+	&& apt-get remove -y lsb-release gnupg \
 	&& apt-get autoremove -y --purge \
 	&& apt-get clean \
 	&& rm -rf llvm.sh /var/lib/apt/lists/*
-- 
2.47.2



