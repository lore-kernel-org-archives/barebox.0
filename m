Delivery-date: Tue, 02 May 2023 09:41:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptkdC-0027lO-8i
	for lore@lore.pengutronix.de; Tue, 02 May 2023 09:41:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptkdA-0002gT-9B
	for lore@pengutronix.de; Tue, 02 May 2023 09:41:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hPU0JQ+4juAGlhBgBwxN4bFAcYsnpm86KtRGVSz1N84=; b=lp7zpwx3/JVi/QkTPhbiDGZI4x
	/Za7htkLBOGBsXYGUKqPEnx1hIbS84Z7Nj+qGYpHwkon/VSva9X5W2HVpjDwE0Vfa1fKzgplepduC
	+XSQW+ZfZnIcwiwdZFk2UAJFWljYmY8nzcDftVu5hHu3YN1IFmdbBZRbLGtxVG8OyLK+q2G/sLH3S
	SXf207Q1+eMSn4KilFxnIM44pn5hXmlQOFSvHppQFRyO40TgPCJrUwfwv+vyj2ja7urvpvsFp+jyb
	AsGTEUZYWm19CfO44ASDVTL1zzAavOCT79GdyqNqm9n3ENYLsQhmVycvwnj68XvlLhchxE8M7yvsf
	ZMuIAjpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptkbt-000V0O-0g;
	Tue, 02 May 2023 07:39:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptkbl-000Utw-0p
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 07:39:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkbg-0001yA-8I; Tue, 02 May 2023 09:39:28 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkbf-000XQ6-P9; Tue, 02 May 2023 09:39:27 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkbe-001Me1-Cc; Tue, 02 May 2023 09:39:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 May 2023 09:39:18 +0200
Message-Id: <20230502073925.266116-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230502073925.266116-1-s.hauer@pengutronix.de>
References: <20230502073925.266116-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_003933_338528_22DA2D64 
X-CRM114-Status: GOOD (  10.79  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 03/10] MAKEALL: order configs alphabetically
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Expanding wildcards returns the files in filesystem order. Sort them
alphabetically to compile the defconfigs in alphabetical order.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 MAKEALL | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAKEALL b/MAKEALL
index dd61f89827..5b1fb3ddd6 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -167,7 +167,7 @@ do_build() {
 	local arch=$1
 	local regex=$2
 
-	find arch/${arch}/configs -name "${regex}_defconfig" | while read i
+	find arch/${arch}/configs -name "${regex}_defconfig" | sort | while read i
 	do
 		local target=$(basename $i)
 
-- 
2.39.2



