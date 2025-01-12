Delivery-date: Sun, 12 Jan 2025 09:39:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtVc-0007k8-16
	for lore@lore.pengutronix.de;
	Sun, 12 Jan 2025 09:39:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtVb-0007f4-O0
	for lore@pengutronix.de; Sun, 12 Jan 2025 09:39:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F0cm/yfIIbCsyzoxvjJcR+2TIcmJGWRI4mT1SvwrGBs=; b=I9NUr5tE+jB5CsPXiclupZY5vm
	T0/boKEbSY7BtG7ACCVC/LznhxitPjm1pt++V75vEMQoYB2vWvYfHUHtiuI6GuhvQQ9ZPqVdrPXH1
	x1V1CmyIFzC0TzT2vxmDficTGUxw4mMjZzID1zcTDI7zCSkB8Q0JpZsGaRAuy7gd7DzhdOi2Xwe6e
	xkylws2ll9w8mSHki+xnnGOKJamP3gcuLEqWZZAo2KCKWhZg807BwHeBV9dzLMpUFCFMweO70Z+0p
	QyRjURpjfT3SJ7fll+Qleg5H/cScA2uP6vdj9u90ubdDPbWaVCaPnYy7OEvCtG7nSM7WjYh1kMlou
	rehSHyow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtVC-00000002LoF-1Yu0;
	Sun, 12 Jan 2025 08:39:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtV8-00000002LmL-2ss4
	for barebox@lists.infradead.org;
	Sun, 12 Jan 2025 08:39:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtV7-0007UX-9z; Sun, 12 Jan 2025 09:39:17 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtV6-0003P4-1z;
	Sun, 12 Jan 2025 09:39:17 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQY-001LPJ-2c;
	Sun, 12 Jan 2025 09:34:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Felix Singer <felixsinger@posteo.net>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 12 Jan 2025 09:34:31 +0100
Message-Id: <20250112083432.320215-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250112083432.320215-1-a.fatoum@pengutronix.de>
References: <20250112083432.320215-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250112_003918_739789_A602549F 
X-CRM114-Status: UNSURE (   9.89  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 12/13] MAKEALL: add support for building arbitrary targets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The scripts currently only make the default target (all).
To make it more useful, let's add a new -t option to be able to
build other targets as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 MAKEALL | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index 65cc41824cd8..1966eedb4673 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -57,6 +57,7 @@ usage() {
 	echo "LOGDIR      -l      log dir"
 	echo "REGEX       -e      regex"
 	echo "KCONFIG_ADD -k      kconfig fragment"
+	echo "TARGET      -t      Makefile target"
 	echo "V           -v      verbosity"
 	echo "INCREMENTAL -i"
 	echo ""
@@ -168,7 +169,7 @@ do_build_defconfig() {
 	if [ "$configure_result" = "0" ]; then
 		report "OK     \n"
 
-		with_logs_collected ${MAKE} $silent_flag
+		with_logs_collected ${MAKE} $silent_flag ${TARGET}
 
 		check_pipe_status
 		compile_result="$?"
@@ -275,7 +276,7 @@ do_build_all() {
 	return $nbuilds
 }
 
-while getopts "hc:j:O:l:a:e:k:v:i" Option
+while getopts "hc:j:O:l:a:e:k:t:v:i" Option
 do
 case $Option in
 	a )
@@ -299,6 +300,9 @@ case $Option in
 	k )
 		KCONFIG_ADD="${KCONFIG_ADD} ${OPTARG}"
 		;;
+	t )
+		TARGET="${TARGET} ${OPTARG}"
+		;;
 	v )
 		export V=${OPTARG}
 		;;
-- 
2.39.5



