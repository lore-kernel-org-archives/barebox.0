Delivery-date: Tue, 30 Sep 2025 10:54:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3W8F-002ilc-04
	for lore@lore.pengutronix.de;
	Tue, 30 Sep 2025 10:54:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3W8E-0004oE-GY
	for lore@pengutronix.de; Tue, 30 Sep 2025 10:54:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/LlKSxRLcRhgkrrQmIf0i5xDyBVVm2RVug2TJbW5azM=; b=pLGauRjNCC8Vyz3KcKBe9q/QRv
	xCGoK8hHXDc/FpR7E4NjpKcCNHRbm73lQ2DbrECdKoYld7xKf1Rg2He69C9+ZjmZSfwj1DRYJFyAH
	OOLNXoMlR8YdD2tgh3lbsKXM5E91KORoMz73xvAARNEgLi+tgAE3lJxGNlHvGD1gwDiu+KeduGA82
	TKVYcjh1VqWGfLECy2LwkZ20+sB9qNA2+zOUL3G+AWhAkkVlXPpgYK6jvhmjG/nepFGADZtRX7ko0
	9Rj943lrfh3e+MjYd0gMW4l46Fww7ACiUxniIiP1Jtq93suEVAMd7Aa+I/HIXrdHEDJPwSwDpVzBR
	b17titTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3W7c-00000004iEE-0xuN;
	Tue, 30 Sep 2025 08:54:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3W7a-00000004iDp-01oq
	for barebox@lists.infradead.org;
	Tue, 30 Sep 2025 08:54:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v3W7W-0004ce-TV; Tue, 30 Sep 2025 10:54:02 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v3W7W-001DXz-2M;
	Tue, 30 Sep 2025 10:54:02 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v3W7W-00000008wx0-2epQ;
	Tue, 30 Sep 2025 10:54:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 30 Sep 2025 10:53:58 +0200
Message-ID: <20250930085401.2133061-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_015406_143966_68EC7CF3 
X-CRM114-Status: GOOD (  11.33  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] MAKEALL: query CONFIG_64BIT before make instead of CONFIG_ARM64 after
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The current logic inside MAKEALL is flawed: We source an ARM64 config
with CROSS_COMPILE=${CROSS_COMPILE_arm} and hope that CONFIG_ARM64
results, so we can grep for it in the .config despite it missing in the
defconfig.

Replace this by looking for CONFIG_64BIT instead in the defconfig
directly. This symbol seems to be there for all ARM64 configs we have
and if this ceases, CI will let us know.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 MAKEALL | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index d47f0204f1f1..abce297a9bf8 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -135,13 +135,10 @@ do_build_defconfig() {
 	[ -n "$logdir" ] && mkdir -p "${logdir}/${defconfig}"
 
 	MAKE="make -j${JOBS} ARCH=${arch} O=${BUILDDIR}"
-	${MAKE} ${defconfig} &>/dev/null
 
-	if [ ${arch} = "arm" ]; then
-		grep -q "CONFIG_ARM64=y" ${BUILDDIR}/.config
-		if [ $? = 0 ]; then
-			arch=arm64
-		fi
+	grep -q "CONFIG_64BIT=y" arch/${arch}/configs/${defconfig}
+	if [ $? = 0 ]; then
+		arch=arm64
 	fi
 
 	tmp=$(echo "${defconfig}" | tr - _)
-- 
2.47.3



