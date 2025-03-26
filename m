Delivery-date: Wed, 26 Mar 2025 13:37:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txQ0F-004Qtx-14
	for lore@lore.pengutronix.de;
	Wed, 26 Mar 2025 13:37:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txQ0D-0000GM-UP
	for lore@pengutronix.de; Wed, 26 Mar 2025 13:37:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=plCPqu83mDTeSltiUJXjCHWYUCCb52/8X8mfZeO8UG4=; b=KcUd3yfRBZNAjQavPWMJddlfD9
	Kq7LgHcnch8/m91+QX7CB4krmMd5nsnB/1EBPkNVihbEBuMPM8TYE8FaVpPirlVF8eoUJfzuGRE6+
	vZKWyLN0lGC8XQzq33FDlC1qc0r2Tx3WwVysmWLFd+mvXxmm7y4fXZMwDDpIvWlchPdhPmtlVI7YV
	ts9m4BFk2yubooB9XNUe+kJ6ZwsdS6iCivqVM/Z+uOjmbjDrUOP1+ixClRaB/FG1Ora264T7/B6lV
	6virv8OrQ6tnAh7gBWgWd9ht8bu/sZkQAqBTlPu9gapl9PktVy8eGa1drf3eIkdhHUHXxFETS9DdQ
	vrUX6RUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txPzf-00000008TNe-1O6l;
	Wed, 26 Mar 2025 12:36:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txPza-00000008TKc-07q9
	for barebox@lists.infradead.org;
	Wed, 26 Mar 2025 12:36:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txPzY-0008Is-Pt; Wed, 26 Mar 2025 13:36:20 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txPzY-001kYZ-0Z;
	Wed, 26 Mar 2025 13:36:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txPzY-001Caf-1d;
	Wed, 26 Mar 2025 13:36:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Mar 2025 13:36:16 +0100
Message-Id: <20250326123619.282897-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250326123619.282897-1-a.fatoum@pengutronix.de>
References: <20250326123619.282897-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_053622_080486_A43B1973 
X-CRM114-Status: UNSURE (   9.33  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/7] ci: container: don't install recommended packages
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Either we want a package and we reference it explicitly or we don't, in
which case we don't want it taking up space in the container.

This breaks SVG to png image conversion with imagemagick, because it
calls rsvg-convert. Import librsvg2-bin to provide it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/Containerfile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/test/Containerfile b/test/Containerfile
index c4b2ba0ea583..73b0f1b70802 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -10,7 +10,7 @@ LABEL Description="This image is for building and testing barebox inside a conta
 ENV DEBIAN_FRONTEND=noninteractive
 
 # Update and install things from apt now
-RUN apt-get update && apt-get install -y \
+RUN apt-get update && apt-get install -y --no-install-recommends \
 	bison \
 	build-essential \
 	coreutils \
@@ -22,6 +22,7 @@ RUN apt-get update && apt-get install -y \
 	libgit2-dev \
 	libguestfs-tools \
 	liblz4-tool \
+	librsvg2-bin \
 	libseccomp-dev \
 	libssl-dev \
 	libtool \
-- 
2.39.5



