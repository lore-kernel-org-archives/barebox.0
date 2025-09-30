Delivery-date: Tue, 30 Sep 2025 12:39:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3XlA-002kRD-2h
	for lore@lore.pengutronix.de;
	Tue, 30 Sep 2025 12:39:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3XlA-0003nx-9U
	for lore@pengutronix.de; Tue, 30 Sep 2025 12:39:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qlfr7TJeq1xbEmN3iHr6p5wsK/IJJLwy9GtfCf2/3e8=; b=ZCOJoxRB8gZNba3LMGgvKqftQl
	LrNY+EtWtfZsDjigpsvEoFf7dhJPTKTEA+2kQguzujbKbcVy6Q4HWGoJByr7D6aG6WJHCGwcNH0So
	RsDaOhSaeOH7f7CWZcbENc9sF0+LYDcRLtaeDdiM6b16EUWKnt8ZOPZsXGBGLSK1bBab0n5LcN0Kz
	ih+relmKTXV0bGfetUvo3zSm2Dh7mtxmvPqR/4z/y20WPz+7NTMBVC7UER0873NW7m9Jic9CWpBMQ
	OdP40PbC7AKp/HvIce+dJheVO6BbN7DjNuarGhNs30ku30yM4yCfm/P4/IyqD/EV0ptw+E3hHcGAx
	hpfrX9oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Xka-000000052WV-0W8i;
	Tue, 30 Sep 2025 10:38:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3XkX-000000052W0-2Wte
	for barebox@lists.infradead.org;
	Tue, 30 Sep 2025 10:38:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v3XkV-0003cL-Po; Tue, 30 Sep 2025 12:38:23 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v3XkV-001ER9-1y;
	Tue, 30 Sep 2025 12:38:23 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v3XkV-0000000A3E9-29th;
	Tue, 30 Sep 2025 12:38:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 30 Sep 2025 12:38:22 +0200
Message-ID: <20250930103822.2395670-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_033825_639706_2B773162 
X-CRM114-Status: GOOD (  10.99  )
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
Subject: [PATCH master] Revert "MAKEALL: query CONFIG_64BIT before make instead of CONFIG_ARM64 after"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The commit being reverted here assumed that all defconfigs have a
corresponding file, but this doesn't hold true for generated configs
like multi_v8_efi_defconfig.

The issue that was meant to be addressed disappeared after rerunning
the test, so it might have been just a fluke (or triggered by shuffle,
although I was unable to reproduce with the same seed).

Until better understood, reinstate the old code.

Fixes: bdf0a4da1d28 ("MAKEALL: query CONFIG_64BIT before make instead of CONFIG_ARM64 after")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 MAKEALL | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index abce297a9bf8..d47f0204f1f1 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -135,10 +135,13 @@ do_build_defconfig() {
 	[ -n "$logdir" ] && mkdir -p "${logdir}/${defconfig}"
 
 	MAKE="make -j${JOBS} ARCH=${arch} O=${BUILDDIR}"
+	${MAKE} ${defconfig} &>/dev/null
 
-	grep -q "CONFIG_64BIT=y" arch/${arch}/configs/${defconfig}
-	if [ $? = 0 ]; then
-		arch=arm64
+	if [ ${arch} = "arm" ]; then
+		grep -q "CONFIG_ARM64=y" ${BUILDDIR}/.config
+		if [ $? = 0 ]; then
+			arch=arm64
+		fi
 	fi
 
 	tmp=$(echo "${defconfig}" | tr - _)
-- 
2.47.3



