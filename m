Delivery-date: Wed, 22 Oct 2025 12:47:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBWNX-00AZz2-0t
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 12:47:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBWNW-0003SW-Nz
	for lore@pengutronix.de; Wed, 22 Oct 2025 12:47:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4lhr/OA08olRRyYoWt54fHT5ovkn8yUMfnxFxOvYSBk=; b=fbS6aG5EoJfqilmtx9PD/eqDMh
	JZB1TLrF+Gpir5xeS5QCvbJZP3Mo0tXhCU4YTnDHMjnFNXWeaqzyLwx3Pj9w6BO94iRQrxQ2LW7M8
	MCshBVhMZ9dU3un+5ARlQoZB3v7JrzGnw+WBDjEUS3WEZkVXIMsb9Ib6RoinigWetjNgdZOKjxWqM
	mbrxPAI1TuiAlun1wC3CzqdVHVkth8BgXVGnDWnJ0qeRnjSyfJ2De65yCeke/AdkEsEqUfaKrccxE
	XpRcCLwuVLxIzqD5gGNmBlRhX//MaBEHGbRue1hx2eXr1IhQokoUUE5LS/R5Waf2ZEyKWKrx7g9Z8
	HIq/TnvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBWMy-00000002X1o-0uj7;
	Wed, 22 Oct 2025 10:47:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBWMv-00000002X1P-4513
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 10:47:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBWMu-0003NO-H8; Wed, 22 Oct 2025 12:47:00 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBWMu-004sP1-17;
	Wed, 22 Oct 2025 12:47:00 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBWMu-000000063bs-0x56;
	Wed, 22 Oct 2025 12:47:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 22 Oct 2025 12:46:59 +0200
Message-ID: <20251022104659.1443480-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_034702_033727_CBC8C12C 
X-CRM114-Status: GOOD (  11.00  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ci: container: upgrade after update
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Do a apt-get upgrade after apt-get update to get a more consistent base
installation before installing additional packages.

Further apt-get update seem unnecessary though, so drop it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 test/Containerfile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/test/Containerfile b/test/Containerfile
index c6c3c57596..7c45ab426c 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -10,7 +10,7 @@ LABEL Description="This image is for building and testing barebox inside a conta
 ENV DEBIAN_FRONTEND=noninteractive
 
 # Update and install things from apt now
-RUN apt-get update && apt-get install -y --no-install-recommends \
+RUN apt-get update && apt-get upgrade && apt-get install -y --no-install-recommends \
 	bison \
 	build-essential \
 	coreutils \
@@ -61,7 +61,7 @@ RUN apt-get update && apt-get install -y --no-install-recommends \
 ENV GCC_VERSION=15.2.0
 ENV LLVM_VERSION=21
 
-RUN apt-get update && apt-get install -y --no-install-recommends lsb-release gnupg \
+RUN apt-get install -y --no-install-recommends lsb-release gnupg \
 	&& wget https://apt.llvm.org/llvm.sh \
 	&& chmod +x llvm.sh && ./llvm.sh ${LLVM_VERSION} \
 	&& apt-get remove -y lsb-release gnupg \
-- 
2.47.3



