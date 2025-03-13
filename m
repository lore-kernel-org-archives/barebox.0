Delivery-date: Thu, 13 Mar 2025 12:36:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsgru-00DY8i-02
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 12:36:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsgrs-0003eF-RG
	for lore@pengutronix.de; Thu, 13 Mar 2025 12:36:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=y4gGUSa/gDJlKbdid7sA19Yp6j697uxFrdGIdZV6hyg=; b=VF22nRb0jlcvGZ6OsKQKVdQDyE
	up0GZKdHPDLrdRxXDrJSdOFiWxjwNcZ5Y4V8p8htIqjUsEGqUdlnt9caBdEOR6B2KH+QRWumFNPIx
	gK+punQZ0ZsVQ/dJ6aL4IlX8WWCynRuZRSgoNTbi4IoKKmzfU5jf5z5lU2ZfJ56MTH46odzmng5XK
	nQQjjKJabMNNDJMQrx9VLPj05ryOEsyahC+8weA97yzLbhZsE1IM9zC166Va3+Zwi1ZviPU3HqEfx
	QPrBx1mGKaFyBnKVY9tNkSUpa6qduNAkYROIWIg1dmdZa9HNYDJOKjmH5Bv6+Bku/GWjWkpG5H2Wl
	/Zzb8KZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsgrF-0000000B3sE-1axy;
	Thu, 13 Mar 2025 11:36:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsgrC-0000000B3rV-1Xim
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 11:36:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsgr7-0003Rj-Tq; Thu, 13 Mar 2025 12:36:05 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsgr7-005Wkk-2M;
	Thu, 13 Mar 2025 12:36:05 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsgr7-003qbL-20;
	Thu, 13 Mar 2025 12:36:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 12:36:03 +0100
Message-Id: <20250313113604.915474-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_043610_404489_0E414F45 
X-CRM114-Status: UNSURE (   8.37  )
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
Subject: [PATCH 1/2] MAKEALL: support direct options for KCONFIG_ADD
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

KCONFIG_ADD currently expects a list of files to be merged.
As MAKEALL is a bash script, let's make use of process substitution
to create temporary files out of -k CONFIG_foo=bar options.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 MAKEALL | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index 1966eedb4673..b0967b8ae340 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -56,7 +56,7 @@ usage() {
 	echo "BUILDDIR    -O      build dir"
 	echo "LOGDIR      -l      log dir"
 	echo "REGEX       -e      regex"
-	echo "KCONFIG_ADD -k      kconfig fragment"
+	echo "KCONFIG_ADD -k      kconfig fragment or option"
 	echo "TARGET      -t      Makefile target"
 	echo "V           -v      verbosity"
 	echo "INCREMENTAL -i"
@@ -116,6 +116,11 @@ report() {
 	fi
 }
 
+merge_config() {
+	with_logs_collected ./scripts/kconfig/merge_config.sh -m -O \
+		${BUILDDIR} "$@"
+}
+
 do_build_defconfig() {
 	local arch=$1
 	local defconfig=$2
@@ -156,8 +161,11 @@ do_build_defconfig() {
 	MAKE="${MAKE} $silent_flag CROSS_COMPILE=${cross_compile}"
 	with_logs_collected ${MAKE} ${defconfig}
 	for i in ${KCONFIG_ADD}; do
-		with_logs_collected ./scripts/kconfig/merge_config.sh -m -O \
-			${BUILDDIR} ${BUILDDIR}/.config $i
+		if [[ $i =~ ^CONFIG_* ]]; then
+			merge_config ${BUILDDIR}/.config <(echo $i)
+		else
+			merge_config ${BUILDDIR}/.config $i
+		fi
 	done
 	with_logs_collected ${MAKE} $silent_flag olddefconfig
 
-- 
2.39.5



