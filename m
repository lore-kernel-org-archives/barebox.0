Delivery-date: Wed, 28 May 2025 18:28:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKJeE-001FPy-2A
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 18:28:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKJe9-0001r5-9W
	for lore@pengutronix.de; Wed, 28 May 2025 18:28:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=O+yPci6s8Wv08ZUISc+/NSbB/VfpPotTjCVEuk8TVjM=; b=SP/gE3rev/Av04e9GoWaGIJlyR
	baQaZhdPWhY5m3+6gWg3lHz4UKINXWh6McAjp3jmkJw5kd+ra6WJSabLnY/zWu1K6kGo1A0Geqqx6
	ndoi0a3ihdIYTadaNXLDPoXiHWZKxLCC0+bgWMyB61dJ4zoKXcPRdusajILRfTaFJ4QCtXE8+b43E
	/gll7vzxhTeCzuzZrGoXix7W3tt3ZDSm5bQeXIPBAc/fuTeQEPbMZylXiLpspX+LcnhSTiiusBFec
	d7e2SR+/UxQwAvTgy5tCHALSTf2QmKAhqCWfui17ZLpwye9SM+3xJt9+3eMmdqxbbLtNpipJUDbRc
	lWLrPrug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKJdU-0000000Df1I-1apB;
	Wed, 28 May 2025 16:28:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKIqC-0000000DZNc-33if
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 15:37:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKIqB-0005Ol-Bm; Wed, 28 May 2025 17:37:15 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKIqB-000c2y-0a;
	Wed, 28 May 2025 17:37:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKIqB-002fZp-0I;
	Wed, 28 May 2025 17:37:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 May 2025 17:37:09 +0200
Message-Id: <20250528153709.636444-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_083716_767381_39BD1FC2 
X-CRM114-Status: GOOD (  10.50  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] lib: random: add CONFIG_INSECURE logging of seeds
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

clocksource_srand() can be called after events that take a varying
amount of time to extract some entropy. To get an idea about how much
entropy we are getting out, add a CONFIG_INSECURE-guarded debug print
that prints the seeds out as-is.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/random.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/lib/random.c b/lib/random.c
index 889d314e0fad..632f361c4627 100644
--- a/lib/random.c
+++ b/lib/random.c
@@ -11,6 +11,8 @@
  *     CONFIG_ALLOW_PRNG_FALLBACK set, which will emit a warning at runtime.
  */
 
+#define pr_fmt(fmt) "random: " fmt
+
 #include <common.h>
 #include <stdlib.h>
 #include <linux/hw_random.h>
@@ -75,6 +77,12 @@ void randbuf_r(u64 *x, void *buf, size_t len)
  */
 void srand_xor(u64 entropy)
 {
+	/* The PRNG shouldn't be used for crypto anyway, but still let's not
+	 * divulge the whole state in secure configurations.
+	 */
+	if (IS_ENABLED(CONFIG_INSECURE))
+		pr_debug("PRNG seeded with %llu\n", entropy);
+
 	prng_state ^= entropy;
 	/* Ensure prng_state is never zero */
 	prng_state += !prng_state;
-- 
2.39.5



