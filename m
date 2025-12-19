Delivery-date: Fri, 19 Dec 2025 11:38:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsE-00DAcj-1i
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:38:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXs1-00061l-Lo
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:38:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JvR/DXB5n/GUu3cwCvL6DBXq+LnHl7WMHSfBKhM6Bq4=; b=ZqOABHH1OaqrmivAisJKccWkj0
	ZFOpTsnNiIZyKFuzGgZY7JvBjBOZwoAtTw7MyzZUL1v/YYnvP2yytj+6OUtO9I4mJFmvAmovWDJd+
	Vf3HRPw1kdTiPm1QWTljQGC9johxFu6kJA3ki1+6ublI6OHzO6jhszy9QSig4anDBKCWIpPIdzXJJ
	6tH9x+FyEcC8Y/J8Pf0bkYrvBi7zEo4jj/bNPr/xPoDzaMFwKUpfuer4gcgGRX+FxSabRNHz+muWd
	Rz3JwHplFj9j0MVYOi2mY8ZiTrzmQI2RNf6y0aJBrtbdT/YkaeUkOvb3qUUA7+FZ6dy9XkORZb3G8
	4nRB5qwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXr4-0000000A6DI-1GiK;
	Fri, 19 Dec 2025 10:37:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqw-0000000A618-2ClW
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 10:36:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=JvR/DXB5n/GUu3cwCvL6DBXq+LnHl7WMHSfBKhM6Bq4=; b=dKTMBjzj7xGk1GC9uznTcdOglq
	L5P3crXexNx1inrRTaGMpIOd+EJJJWj4xvR5d2T5WnGaiYR32Ji6gbbC672rqo4FFv4uGz7JFSxSG
	4n1AcAjmp+I3Ijin3WDf3kr+XUXIO2xGjwPZj5pUYbwYANpUtxIwEdZjrwHBDIBNQl8Yz1grUYKYx
	w9ti7pDq0k0r3C+yKbWreZU2o4nXzDFZ7tuLEVmJfYznkMHoPR0Olr64YH/jiXCJ2iIXKaYbi3WW1
	KRVeQbCXh4qtFoz46L4Dott402AvzspLq0u1shTUUgWwyMtUkkl9uO+1HvutfEPDbMd63zoszb6Fo
	pDTs0bAA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWzP-0000000AbBg-3cN1
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 09:41:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqr-0004d4-B4; Fri, 19 Dec 2025 11:36:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqr-006RV7-0T;
	Fri, 19 Dec 2025 11:36:49 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVi-0000000320L-0FYr;
	Fri, 19 Dec 2025 11:14:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Dec 2025 10:21:10 +0100
Message-ID: <20251219101453.2806980-35-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_094136_067699_DB28E91B 
X-CRM114-Status: UNSURE (   9.11  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 34/49] test: populate qemu_bin, even if missing features
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If the YAML lists no features, the lookup for qemu_bin is prematurely
aborted, even for QEMU environment configs.

Split up the try/except clauses to fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20251128172107.35323-1-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit 0f474e5b689fc22990abe83984aeef12349ddaef)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 conftest.py | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/conftest.py b/conftest.py
index 06321c938dba..2f72d3fe5322 100644
--- a/conftest.py
+++ b/conftest.py
@@ -128,9 +128,13 @@ def strategy(request, target, pytestconfig):
     try:
         main = target.env.config.data["targets"]["main"]
         features = main["features"]
-        qemu_bin = main["drivers"]["QEMUDriver"]["qemu_bin"]
     except KeyError:
         features = []
+
+    try:
+        main = target.env.config.data["targets"]["main"]
+        qemu_bin = main["drivers"]["QEMUDriver"]["qemu_bin"]
+    except KeyError:
         qemu_bin = None
 
     virtio = None
-- 
2.47.3



