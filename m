Delivery-date: Tue, 02 May 2023 10:46:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptleg-0029bS-QF
	for lore@lore.pengutronix.de; Tue, 02 May 2023 10:46:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptlee-0005r1-RA
	for lore@pengutronix.de; Tue, 02 May 2023 10:46:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+3XplYt4W7nlnXGykc/HdaPS+2u4c7PxD7cj02Gu5rI=; b=Vbb8M9EbvY7BnnGKBuW351yg7m
	LnV6siv1nEoVRPbGp/GFWukLRjoeRrSRf7+O15uZQEZ+PcXTS0rJlk1gZztugB5nn10TR36BBu1p+
	O9OEjjWcZL+NAMEZ9Vtv4rdRZujThU9An23sLfIaRS2ETgUR2vufCH+G2Zuz/7VQaswhIORi7qEvr
	KY4TgJ/XYx/zr1wLd0zMlhsv6mnNfESWqiAl3fuGIdqB3rdzGJ48dGaMlcoRBhxX6BxMejaljg2xX
	TFukJIhy1hHUUBh70TIJq+JeyHseik0wq3wpyRaOLyM17uAQX5AbXygryZkF7Lgj8apycH5Whbm4g
	HjZo+lDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptldW-000fGy-1l;
	Tue, 02 May 2023 08:45:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptkbl-000Uu0-0f
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 07:39:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkbg-0001yL-F5; Tue, 02 May 2023 09:39:28 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkbg-000XQF-0C; Tue, 02 May 2023 09:39:28 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkbe-001Mez-Hh; Tue, 02 May 2023 09:39:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 May 2023 09:39:25 +0200
Message-Id: <20230502073925.266116-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230502073925.266116-1-s.hauer@pengutronix.de>
References: <20230502073925.266116-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_003933_247507_C752AC3C 
X-CRM114-Status: UNSURE (   9.92  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 10/10] MAKEALL: allow multiple defconfigs as arguments
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Allow to pass multiple defconfigs as arguments.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 MAKEALL | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/MAKEALL b/MAKEALL
index 039368b027..a4e268d54c 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -286,7 +286,9 @@ if [ $# -eq 0 ]
 then
 	do_build ${ARCH} "${REGEX}"
 else
-	do_build_target ${ARCH} $1
+	for i in $*; do
+		do_build_target ${ARCH} $i
+	done
 fi
 
 stats
-- 
2.39.2



