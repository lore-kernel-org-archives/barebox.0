Delivery-date: Mon, 17 Mar 2025 12:33:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu8in-000b0G-2t
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 12:33:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu8im-0003sJ-Je
	for lore@pengutronix.de; Mon, 17 Mar 2025 12:33:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Sos0o94gbG6VUKJXWJEtXpzSA0mcW8AwnMWd31i88Tw=; b=w2fk2LHz8u8z84qwl8QErZTi4z
	NSPPklWfiZ1QNO6YOZarqMFsPkaSru7fTAjhAbtmCWyoLm6henkPbceCgqg3YxAQVjwxWEzWCZLf0
	HC9esAUbF1LgIXFRbHU2o0E96jKy/g2xiQo7iizV9MiPIfn4swB4MYahMriPAUso/+NxgsAuGSNAd
	vXrRyMexdW9QOB/ishFqyGCk81ovhhSLoLrc1tEX/8WvMZNt+uysy99AaoNW6kskbloo/4PYThmYJ
	wBZ+FXMSEpMJhRCkz/CobJ9Xu7UtP2bSFd6xWvNYQBQGIjeuOMoCNFoE6pP3hptbjwtLU5YHz+jRZ
	L45cJGFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu8iJ-00000002PUE-1RRn;
	Mon, 17 Mar 2025 11:32:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu8hX-00000002POz-3BRI
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 11:32:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tu8hW-0003Jz-Ew; Mon, 17 Mar 2025 12:32:10 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tu8hV-000Ej2-2j;
	Mon, 17 Mar 2025 12:32:10 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tu8hW-007orl-0Z;
	Mon, 17 Mar 2025 12:32:10 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Mar 2025 12:32:07 +0100
Message-Id: <20250317113208.1863258-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_043211_793509_0C0BC9A9 
X-CRM114-Status: UNSURE (   8.92  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] MAKEALL: support direct options for KCONFIG_ADD
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

KCONFIG_ADD currently expects a list of files to be merged.
As MAKEALL is a bash script, let's make use of process substitution
to create temporary files out of -k CONFIG_foo=bar options.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - fix Regex (Sascha)
---
 MAKEALL | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index 1966eedb4673..bc612b45561f 100755
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
+		if [[ $i =~ ^CONFIG_.*=.* ]]; then
+			merge_config ${BUILDDIR}/.config <(echo $i)
+		else
+			merge_config ${BUILDDIR}/.config $i
+		fi
 	done
 	with_logs_collected ${MAKE} $silent_flag olddefconfig
 
-- 
2.39.5



