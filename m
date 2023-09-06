Delivery-date: Wed, 06 Sep 2023 17:10:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qduAy-00663O-K8
	for lore@lore.pengutronix.de; Wed, 06 Sep 2023 17:10:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qduAw-00087y-Ic
	for lore@pengutronix.de; Wed, 06 Sep 2023 17:10:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=073h8CP6HoRdxEA4o6AAlfHix8ppGNebmL6JhyiS2gU=; b=ZdXpaRd1uIXCsl3n08FiS9ZRlJ
	iXl1G+YYxyMyBjgozHOnEK8SEDrAckn1uGL6FNJ9FkNxDqv/xMoHJhGC41PTjSRO/si7ZWaYvZKhE
	9EBMETXokrGS3KlcXlvFWnuTT5e+ppBzm2ztm4c1A82nUqcwiwa+8hNGCTZnA8pbpBIqYN4jI1E4S
	fWD2vVoIlzsxJEyScepQZq7JscI1t2Nz+/6lBdYjl/cypSxGI1E7hu+jEczEQwEcXJ+7W3TzrjTFl
	VxFP9iXp+2JAl5nGbQawOuKUNSX7c4au8PDFpZWjjCoNSvx2kGk0ryn61a2jNRJ9u/sAIpdX5U4ZW
	tdgmy1VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdu9i-00AMei-1l;
	Wed, 06 Sep 2023 15:09:22 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdu9e-00AMd5-0h
	for barebox@lists.infradead.org;
	Wed, 06 Sep 2023 15:09:21 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 1BC3A1C000E;
	Wed,  6 Sep 2023 15:09:13 +0000 (UTC)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Wed,  6 Sep 2023 17:08:56 +0200
Message-ID: <20230906150857.32035-2-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230906150857.32035-1-jmaselbas@zdiv.net>
References: <20230906150857.32035-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: jmaselbas@zdiv.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230906_080918_388528_58425662 
X-CRM114-Status: UNSURE (   9.07  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] scripts: Select XZ --arm64 BCJ filter for 64-bit arm
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This change will select the arm64 BCJ filter for aarch64 instead of
the arm filter which was always selected for arm based architectures.

The selected filter is also tested, by looking if it is present in
the long help message of xz, this is because the arm64 BCJ filter is
a recent addition to xz.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 scripts/xz_wrap.sh | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/scripts/xz_wrap.sh b/scripts/xz_wrap.sh
index 7a2d372f48..5b5f3adcff 100755
--- a/scripts/xz_wrap.sh
+++ b/scripts/xz_wrap.sh
@@ -16,8 +16,11 @@ case $SRCARCH in
 	x86)            BCJ=--x86 ;;
 	powerpc)        BCJ=--powerpc ;;
 	ia64)           BCJ=--ia64; LZMA2OPTS=pb=4 ;;
-	arm)            BCJ=--arm ;;
+	arm)            BCJ=--arm$S64 ;;
 	sparc)          BCJ=--sparc ;;
 esac
 
+# clear BCJ filter if unsupported
+xz -H | grep -q -- $BCJ || BCJ=
+
 exec xz --check=crc32 $BCJ --lzma2=$LZMA2OPTS,dict=32MiB
-- 
2.41.0



