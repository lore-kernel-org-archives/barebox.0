Delivery-date: Thu, 22 Aug 2024 13:58:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sh6SE-00CEqK-1P
	for lore@lore.pengutronix.de;
	Thu, 22 Aug 2024 13:58:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sh6SD-0005Zp-Ru
	for lore@pengutronix.de; Thu, 22 Aug 2024 13:58:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=urk6I+xUQr/B1Yll2T8P1BLQbfMUY+549RLM6sVMpog=; b=cVauNn1XVFb7Fkj7iVpQUY541A
	EqO+LQx9p0v5TI1owf3y+65hH1R+uclLQCQmVO94FLuPA6ryk0I06FGbeyNqsJBJ235fEr0qVhkVu
	hF/QSqey4vogaRwJwqq4R0q9wOCuPZRu9HcwZh1gGDErzGoLIQO/sWciiy9UClVxfe1/o2tAKwg6I
	qWYfaO4Wu45BZzXabl10yIqgaZM6jkPb9wrEPATA7eHwY75FUT9s+VNHY+kyC5ZzkUzt7cetVQind
	UI+Gj38kDWvlqJ7W/ne+Utw9+nqeprpLEojVa+V2qn7lIMdxvBhGzo/ADItH1DTVeD3x4uu3980Gg
	Imc/iK8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh6Rn-0000000CfXN-0pH1;
	Thu, 22 Aug 2024 11:57:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh6Rh-0000000CfRi-1hfG
	for barebox@lists.infradead.org;
	Thu, 22 Aug 2024 11:57:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sh6RX-00054t-Sn; Thu, 22 Aug 2024 13:57:31 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sh6RX-002Ey4-EZ; Thu, 22 Aug 2024 13:57:31 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sh6RX-004y9I-1A;
	Thu, 22 Aug 2024 13:57:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 22 Aug 2024 13:57:28 +0200
Message-Id: <20240822115730.1184500-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240822115730.1184500-1-a.fatoum@pengutronix.de>
References: <20240822115730.1184500-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_045741_517735_011C3076 
X-CRM114-Status: UNSURE (   9.59  )
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
Subject: [PATCH 3/5] MAKEALL: don't build all configs wen defconfigs given
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently build all defconfigs when no architecture was specified,
which leads to surprising behavior, e.g.

  ./MAKEALL some_defconfig

will start building for all architectures and ignore the argument
completely. Improve upon this by calling do_build_all only if
there are no positional arguments.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 MAKEALL | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index df318c6d123c..68ebe6ef98a3 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -281,20 +281,20 @@ then
 	REGEX="*"
 fi
 
-if [ ! "${ARCH}" ] || [ ! -d arch/${ARCH} ]
-then
-	do_build_all
-	if [ $? -eq 0 ]
-	then
-		echo "You need to specify the ARCH or CROSS_COMPILE_<arch> or CROSS_COMPILE_<target> in your config file"
-		usage
-		exit 1
-	fi
-	exit 0
-fi
-
 if [ $# -eq 0 ]
 then
+	if [ ! "${ARCH}" ] || [ ! -d arch/${ARCH} ]
+	then
+		do_build_all
+		if [ $? -eq 0 ]
+		then
+			echo "You need to specify the ARCH or CROSS_COMPILE_<arch> or CROSS_COMPILE_<target> in your config file"
+			usage
+			exit 1
+		fi
+		exit 0
+	fi
+
 	do_build ${ARCH} "${REGEX}"
 else
 	for i in $*; do
-- 
2.39.2



