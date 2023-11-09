Delivery-date: Thu, 09 Nov 2023 12:39:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r13Nu-0048El-0y
	for lore@lore.pengutronix.de;
	Thu, 09 Nov 2023 12:39:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r13Nu-0008S8-BY
	for lore@pengutronix.de; Thu, 09 Nov 2023 12:39:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=otuYvNtrIICsBaAudt9bhKCBhBBLlpncV24Kxiu+Wxg=; b=2u8t6HHwX300Eni1T11vawsHOQ
	3us2EegqiPRO2yNaL0W2rM2as+er+te/KyEimlaEvEZY1HzRiXyrgvFBp1SKdJksKvtVq5ZcmagJA
	mTqkteBknRx+ovCzEM0pVxnPefrKDH14SM7LTrh7dpRXNJNLvL9JMj6dFm46tyYUlRY5z8mY0Bxio
	iXOB4L5VYZdg5puVpvC/UKyIQYxaW/6S/w+k2XOr1k1a8B5eFjSixDAfOtud4qMwl5RuwTdPrCQOr
	gzKvtW1cRT5TBq0UM9kgEK7cTaNdKD6QmcF0rg2xc0giN5laHaOQ3y7uu/mNikbRc7QVpH/o8fMie
	aa5MpOgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r13Mv-0065qD-04;
	Thu, 09 Nov 2023 11:38:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r13Ms-0065pU-1I
	for barebox@lists.infradead.org;
	Thu, 09 Nov 2023 11:38:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r13Mr-00085i-7b; Thu, 09 Nov 2023 12:38:37 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r13Mq-007lWL-RR; Thu, 09 Nov 2023 12:38:36 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r13Mq-00529M-2S;
	Thu, 09 Nov 2023 12:38:36 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Nov 2023 12:38:35 +0100
Message-Id: <20231109113835.1199875-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_033838_444431_0D1576E3 
X-CRM114-Status: UNSURE (   9.82  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] scripts: setlocalversion: sync with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We are using an older version of setlocalversion that sources the
config. This is wrong as there's no guarantee that it's ok to source the
config, e.g.:

  CONFIG_DEFAULT_ENVIRONMENT_PATH="$(objtree)/.ptxdist-defaultenv"

when sourced will lead to:

  scripts/setlocalversion: 15: include/config/auto.conf: objtree: not found

Fix this by grepping the file instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/setlocalversion | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/scripts/setlocalversion b/scripts/setlocalversion
index 6b54e46a0f12..cbd3883df9ae 100755
--- a/scripts/setlocalversion
+++ b/scripts/setlocalversion
@@ -111,13 +111,14 @@ if $scm_only; then
 	exit
 fi
 
-if test -e include/config/auto.conf; then
-	. include/config/auto.conf
-else
+if ! test -e include/config/auto.conf; then
 	echo "Error: kernelrelease not valid - run 'make prepare' to update it" >&2
 	exit 1
 fi
 
+# version string from CONFIG_LOCALVERSION
+config_localversion=$(sed -n 's/^CONFIG_LOCALVERSION=\(.*\)$/\1/p' include/config/auto.conf)
+
 # localversion* files in the build and source directory
 res="$(collect_files localversion*)"
 if test ! "$srctree" -ef .; then
@@ -125,10 +126,10 @@ if test ! "$srctree" -ef .; then
 fi
 
 # CONFIG_LOCALVERSION and LOCALVERSION (if set)
-res="${res}${CONFIG_LOCALVERSION}${LOCALVERSION}"
+res="${res}${config_localversion}${LOCALVERSION}"
 
 # scm version string if not at a tagged commit
-if test "$CONFIG_LOCALVERSION_AUTO" = "y"; then
+if grep -q "^CONFIG_LOCALVERSION_AUTO=y$" include/config/auto.conf; then
 	# full scm version string
 	res="$res$(scm_version)"
 elif [ "${LOCALVERSION+set}" != "set" ]; then
-- 
2.39.2



