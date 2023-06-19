Delivery-date: Mon, 19 Jun 2023 11:48:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBBUa-00D2nf-3Q
	for lore@lore.pengutronix.de; Mon, 19 Jun 2023 11:48:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBBUX-0000mm-Q9
	for lore@pengutronix.de; Mon, 19 Jun 2023 11:48:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9GWhhtLqLigGPFri6jHnOz/uJoleQCtZh5k/EJHrBcI=; b=WQXM5uflhQ/eAN+gtHa9R5gPV3
	mG7a+AJD4MxuSg0JE3RWRpMfgniT2HDOkRZgi2V6xVC00obQKuUds0mcUHk2BatcV4Y9UvqwozmRW
	9sWeFmCcDvu4QWA2Qvz5nfGUyF9c/FG+zhLj2dvWXZdukWzNuR1JzuRwdmghPJkxiivoI9oryzeZR
	jS5fSD7zBsKim8toYA11xuoBQd+HCT1fcjR1jAsfXHQhKpJ2E6gyfQ5ID+1uu2ffgpA8mrZjAwOfq
	kdMMlvGDbcvhggC3LAxgr+8lGhyjZjO6yJ2IciwgVnfyyV034khN2n5ZBK3dIkmdTF2h+6s4PSX28
	1nxm0CGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBBTN-0084Bw-1g;
	Mon, 19 Jun 2023 09:46:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBBTK-0084BK-0b
	for barebox@lists.infradead.org;
	Mon, 19 Jun 2023 09:46:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qBBTI-0000VL-TC; Mon, 19 Jun 2023 11:46:52 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qBBTI-008TaZ-7k; Mon, 19 Jun 2023 11:46:52 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qBBTI-00HRTT-0A;
	Mon, 19 Jun 2023 11:46:52 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Jun 2023 11:46:51 +0200
Message-Id: <20230619094651.4143187-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_024654_225852_871817E8 
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] MAKEALL: add incremental build support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

MAKEALL always deletes the build directory, before starting. Add a
command line option to make this configurable.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 MAKEALL | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index a4e268d54cf8..f2e774cf88be 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -53,6 +53,7 @@ usage() {
 	echo "LOGDIR      -l      log dir"
 	echo "REGEX       -e      regex"
 	echo "KCONFIG_ADD -k      kconfig fragment"
+	echo "INCREMENTAL -i"
 	echo ""
 }
 
@@ -89,7 +90,7 @@ do_build_target() {
 	local log_report="${LOGDIR}/${target}/report.log"
 	local log_err="${LOGDIR}/${target}/errors.log"
 
-	rm -rf "${BUILDDIR}"
+	[ "$INCREMENTAL" != "1" ] && rm -rf "${BUILDDIR}"
 	mkdir -p "${LOGDIR}/${target}"
 	printf "Building ${arch} ${target} \n" >&2 | tee -a "${log_report}"
 
@@ -196,7 +197,7 @@ do_build_all() {
 	return $build_target
 }
 
-while getopts "hc:j:O:l:a:e:k:" Option
+while getopts "hc:j:O:l:a:e:k:i" Option
 do
 case $Option in
 	a )
@@ -220,6 +221,9 @@ case $Option in
 	k )
 		KCONFIG_ADD="${KCONFIG_ADD} ${OPTARG}"
 		;;
+	i )
+		INCREMENTAL=1
+		;;
 	h )
 		usage
 		exit 0
-- 
2.39.2



