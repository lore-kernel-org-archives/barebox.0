Delivery-date: Fri, 17 May 2024 15:27:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7xch-001lNz-0B
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 15:27:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7xcg-0003Yv-0y
	for lore@pengutronix.de; Fri, 17 May 2024 15:27:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6Z0tyt2td8vqG1pU+BMH+BbexABAUO6AuIRkfckj97g=; b=UXTB1B9THERJbE+GQlZnZoK364
	63AxMMSKBpX4p8VW52VuqkLGeaGwjH0d46q+dzTuJBnfT22FggrtVPDIxUCKtz0QGlvmtVNcgVeiJ
	uBMtk9q7eS8VaqUEIWO6u9uFVeGm+jmoT8Wxibyc3TTfyo3/YCgAdivKJd8oAXiXPt1vezxotOYhs
	s1vp4vMd5IqzmWUimv9Z/NKHgSN67z3hfRH5u1ydib6WWOCI43KWDq6yXz6tRN42QyHvUqZY0YPOl
	2cml83JWmZOLwpkablxpXK0lzabsz4Fzcwr1Np4IfB2vQEwsbVAKVIwqnG/NJEf2rPJTkC5O5aB72
	tnJJU2+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7xc2-00000007wnc-2NfD;
	Fri, 17 May 2024 13:27:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7xbx-00000007wjX-3cJa
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 13:27:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7xbt-00032g-H2; Fri, 17 May 2024 15:26:57 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7xbt-001sCF-4N; Fri, 17 May 2024 15:26:57 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7xbt-00DEM4-0A;
	Fri, 17 May 2024 15:26:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 May 2024 15:26:50 +0200
Message-Id: <20240517132656.3151273-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240517132656.3151273-1-a.fatoum@pengutronix.de>
References: <20240517132656.3151273-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240517_062702_041809_FF75204F 
X-CRM114-Status: GOOD (  10.25  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/8] kconfig: merge_config.sh: sync with Linux v6.9
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This gives us support for the new -s (strict mode) and -Q (disable
warnings) options. The latter will be used in the follow-up commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/kconfig/merge_config.sh | 40 +++++++++++++++++++++++++--------
 1 file changed, 31 insertions(+), 9 deletions(-)

diff --git a/scripts/kconfig/merge_config.sh b/scripts/kconfig/merge_config.sh
index 63c8565206a4..902eb429b9db 100755
--- a/scripts/kconfig/merge_config.sh
+++ b/scripts/kconfig/merge_config.sh
@@ -28,6 +28,8 @@ usage() {
 	echo "  -r    list redundant entries when merging fragments"
 	echo "  -y    make builtin have precedence over modules"
 	echo "  -O    dir to put generated output files.  Consider setting \$KCONFIG_CONFIG instead."
+	echo "  -s    strict mode. Fail if the fragment redefines any value."
+	echo "  -Q    disable warning messages for overridden options."
 	echo
 	echo "Used prefix: '$CONFIG_PREFIX'. You can redefine it with \$CONFIG_ environment variable."
 }
@@ -37,7 +39,9 @@ ALLTARGET=alldefconfig
 WARNREDUN=false
 BUILTIN=false
 OUTPUT=.
+STRICT=false
 CONFIG_PREFIX=${CONFIG_-CONFIG_}
+WARNOVERRIDE=echo
 
 while true; do
 	case $1 in
@@ -75,6 +79,16 @@ while true; do
 		shift 2
 		continue
 		;;
+	"-s")
+		STRICT=true
+		shift
+		continue
+		;;
+	"-Q")
+		WARNOVERRIDE=true
+		shift
+		continue
+		;;
 	*)
 		break
 		;;
@@ -131,18 +145,21 @@ for ORIG_MERGE_FILE in $MERGE_LIST ; do
 		NEW_VAL=$(grep -w $CFG $MERGE_FILE)
 		BUILTIN_FLAG=false
 		if [ "$BUILTIN" = "true" ] && [ "${NEW_VAL#CONFIG_*=}" = "m" ] && [ "${PREV_VAL#CONFIG_*=}" = "y" ]; then
-			echo Previous  value: $PREV_VAL
-			echo New value:       $NEW_VAL
-			echo -y passed, will not demote y to m
-			echo
+			${WARNOVERRIDE} Previous  value: $PREV_VAL
+			${WARNOVERRIDE} New value:       $NEW_VAL
+			${WARNOVERRIDE} -y passed, will not demote y to m
+			${WARNOVERRIDE}
 			BUILTIN_FLAG=true
 		elif [ "x$PREV_VAL" != "x$NEW_VAL" ] ; then
-			echo Value of $CFG is redefined by fragment $ORIG_MERGE_FILE:
-			echo Previous  value: $PREV_VAL
-			echo New value:       $NEW_VAL
-			echo
+			${WARNOVERRIDE} Value of $CFG is redefined by fragment $ORIG_MERGE_FILE:
+			${WARNOVERRIDE} Previous  value: $PREV_VAL
+			${WARNOVERRIDE} New value:       $NEW_VAL
+			${WARNOVERRIDE}
+			if [ "$STRICT" = "true" ]; then
+				STRICT_MODE_VIOLATED=true
+			fi
 		elif [ "$WARNREDUN" = "true" ]; then
-			echo Value of $CFG is redundant by fragment $ORIG_MERGE_FILE:
+			${WARNOVERRIDE} Value of $CFG is redundant by fragment $ORIG_MERGE_FILE:
 		fi
 		if [ "$BUILTIN_FLAG" = "false" ]; then
 			sed -i "/$CFG[ =]/d" $TMP_FILE
@@ -153,6 +170,11 @@ for ORIG_MERGE_FILE in $MERGE_LIST ; do
 	cat $MERGE_FILE >> $TMP_FILE
 done
 
+if [ "$STRICT_MODE_VIOLATED" = "true" ]; then
+	echo "The fragment redefined a value and strict mode had been passed."
+	exit 1
+fi
+
 if [ "$RUNMAKE" = "false" ]; then
 	cp -T -- "$TMP_FILE" "$KCONFIG_CONFIG"
 	echo "#"
-- 
2.39.2



