Delivery-date: Wed, 21 Feb 2024 11:34:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcjvm-00HAzE-0r
	for lore@lore.pengutronix.de;
	Wed, 21 Feb 2024 11:34:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcjvl-0006Md-Mr
	for lore@pengutronix.de; Wed, 21 Feb 2024 11:34:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dSfwW9OutJ6oW7Vi1bf9VQ1uNSVh/7h5sDhY5mxEpp8=; b=xanL7h0YaozOY4Gjg5mBTxMSrS
	qlqWSW4IaGGCw4qLXluHIMDML/V38yB0PVJ/d+ft/D9BCFeWqvUsF0L76Fui3pcmLXT3yNLMspddm
	Ni2ufpGOioQ5CNW0f6obvc4IOw+UPjoQsCscT5sMy1YBVybPnPmtuHbl/J2T0WMWxhJnjegoe4AYW
	ami3IYP5ZlQcY7Y4ZR3L74u6wZMgQ9ozSyBNu4Uu9x9Ww8Av1BHLT12jCsdKg/UH7Pi6LWpZPiK7y
	nSBxdymOVqUwwAQdX/bcsTXEQv/6vlxIFbj2ygAmBW1E+XuGqNaXHMFaslNEpQxn6eKPUURzionBy
	Nt2pbCXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcjv5-00000000WaT-21U5;
	Wed, 21 Feb 2024 10:33:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcjv2-00000000Wa2-3fp6
	for barebox@lists.infradead.org;
	Wed, 21 Feb 2024 10:33:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rcjv1-0006Dk-KS; Wed, 21 Feb 2024 11:33:39 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rcjv1-0021IW-7w; Wed, 21 Feb 2024 11:33:39 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rcjv1-008ndE-0X;
	Wed, 21 Feb 2024 11:33:39 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 21 Feb 2024 11:33:35 +0100
Message-ID: <20240221103334.1925850-2-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1453; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=5QEv89A6IwaEIyPekY/Mipa93iaW2YrPjyj/sO/Fy/4=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBl1dF+KRDqWXzBwQO8kNs1zBykCekFl9IVr3lbj o+lZE7KcmWJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZdXRfgAKCRCPgPtYfRL+ ThyGB/9LkXAgFOa6IDmGA+6DT7+gww6hdVTqU2hSw3LqRpwKMkreVoGShan6W2Ft7QzXVbvZzZ3 m8hc4nCaZT6IS7Hs11LyKOJEQ7fuY0YSenHU4od8MZbnn5xc3r1XVKNjSksSv/yjmYEpw2XCHUU vRSzcjWOGXEK37QbvdzJj+cQ05tIpEJAHmdDBQ/FfvD22kE4Z3Wt2PrE1u1S0QHwbmVf5rM4YEs vP85Up988OMP/A8ap6HfcTijhZXklDS7AMjJf7GCFKQluNeXe2zUvzX2fcZrLFvYiER6EwNLfQ1 df6cSeyFHxn7oL7uu2KXP2E1sh31BMEsgM5V0OV4bLrwy1IL
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_023340_931740_84843B4B 
X-CRM114-Status: GOOD (  11.38  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] bbu: Emit a message about what happens also when -y is given
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To inform the user which device is updated using which handler, also
emit a message with -y.

Also update the wording to make the output more similar between the
different cases.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 common/bbu.c | 22 ++++++++++++++--------
 1 file changed, 14 insertions(+), 8 deletions(-)

diff --git a/common/bbu.c b/common/bbu.c
index ed41c92f38ec..c34d723086fa 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -95,18 +95,24 @@ int bbu_force(struct bbu_data *data, const char *fmt, ...)
 int bbu_confirm(struct bbu_data *data)
 {
 	int key;
+	const char *prompt;
+
+	if (data->flags & BBU_FLAG_YES)
+		prompt = ".";
+	else
+		prompt = " (y/n)?";
+
+	if (data->imagefile)
+		printf("update barebox on %s from %s using handler %s%s\n",
+			data->devicefile, data->imagefile,
+			data->handler_name, prompt);
+	else
+		printf("Refresh barebox on %s using handler %s%s\n",
+			data->devicefile, data->handler_name, prompt);
 
 	if (data->flags & BBU_FLAG_YES)
 		return 0;
 
-	if (data->imagefile)
-		printf("update barebox from %s using handler %s to %s (y/n)?\n",
-			data->imagefile, data->handler_name,
-			data->devicefile);
-	else
-		printf("Refresh barebox on %s using handler %s (y/n)?\n",
-			data->devicefile, data->handler_name);
-
 	key = read_key();
 
 	if (key == 'y') {

base-commit: ed7c14536d521793199abf0597164a46ba68e8e5
-- 
2.43.0



