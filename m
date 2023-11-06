Delivery-date: Mon, 06 Nov 2023 09:36:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qzv5t-0000S1-MI
	for lore@lore.pengutronix.de; Mon, 06 Nov 2023 09:36:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qzv5s-00072X-KE
	for lore@pengutronix.de; Mon, 06 Nov 2023 09:36:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mxsddrSMJtrbXzQWPRTeQVBmkpvK5kHC+7o2UPRg/jw=; b=O+PaV1JI7AGwYJj0CVxJODtmNv
	AIES7Mman+KbwuBDYTzjtuk682rBC+IZCOW2xIGfccxBPuUtj0eefh068hRxDaufc5uwB9uc/DRat
	wNNs3hT9jO6d80DIp/aBo1CnGgGWx7g0Dblo4pg7gaQEqL+b7ckj2ehc+419JP6GJzRYUdzkA7XOI
	TpoO8s0gSKaEiazuCh8HcBsINNQ6TaKAgBkRuIdSvQTx5Ttoi+NIdy86NE3sp9g/nGj5FYiJxJssb
	/Fp2VojHhmgaRyaqQS8qBcDgMk9iNO5xPrriyNRp3HcXCVydq575s6x9x9ha9HXSQ9hQmbp6CYnc9
	VGiCBFtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qzv4N-00G5Bz-2E;
	Mon, 06 Nov 2023 08:34:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qzv4J-00G5Aw-0r
	for barebox@lists.infradead.org;
	Mon, 06 Nov 2023 08:34:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qzv4E-0006pK-MY; Mon, 06 Nov 2023 09:34:42 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qzv4E-006z0E-AM; Mon, 06 Nov 2023 09:34:42 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1qzv4E-0021nx-0j;
	Mon, 06 Nov 2023 09:34:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  6 Nov 2023 09:34:41 +0100
Message-Id: <20231106083441.483523-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231106_003447_308207_4EA99380 
X-CRM114-Status: GOOD (  11.32  )
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
Subject: [PATCH] scripts: xz_wrap.sh: clear BCJ only when set
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

xz_wrap.sh parses the the xz help output to test if the selected BCJ
filter is actually supported. $BCJ might be empty though for some
architectures like Mips, so test the variable for being non-empty before
grepping for the BCJ filter to avoid warnings from grep:

Usage: grep [OPTION]... PATTERNS [FILE]...
Try 'grep --help' for more information.

Fixes: 02898c798d ("scripts: Select XZ --arm64 BCJ filter for 64-bit arm")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/xz_wrap.sh | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/scripts/xz_wrap.sh b/scripts/xz_wrap.sh
index a6373a7481..02823bc1df 100755
--- a/scripts/xz_wrap.sh
+++ b/scripts/xz_wrap.sh
@@ -25,6 +25,8 @@ if grep -q '^CONFIG_THUMB2_BAREBOX=y$' include/config/auto.conf; then
 fi
 
 # clear BCJ filter if unsupported
-xz -H | grep -q -- $BCJ || BCJ=
+if [ -n "${BCJ}" ]; then
+	xz -H | grep -q -- $BCJ || BCJ=
+fi
 
 exec xz --check=crc32 $BCJ --lzma2=$LZMA2OPTS,dict=32MiB
-- 
2.39.2



