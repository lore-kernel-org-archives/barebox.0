Delivery-date: Mon, 14 Oct 2024 15:30:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L9W-004H4l-2m
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:30:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L9V-0003Ww-UT
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:30:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=V/bmeOyp0SoR1wdA8SmUAVfFSLGPPA02W6Z9//RGZ/k=; b=N6pZg7xozw1+o2h6VBWweRvD3o
	8FNOXSGfI10Orx56yLnS2JicGdh05SgMPguTH7MV4SzPChyuXFeM9udKSZ1mLlErGUQmenAeqb8p0
	jDARWJeaGRplYLSBsno6My5IeTkmC3ddm9KKEly/CuUzUGXv7yuAPhBLDn5a3O3XmtsF+IECtkpL9
	ctJsELOgiG6lNX6nmOOle7xqzvF0h4J4Qs/wNc0fmlEEJDfenXYUhn5ApGb5113k+dC3xgGAB11t5
	XpUGw3mQ2/SZxjGVBXIaXiXDOUL4fVUeC+P1SfNx5BtoBRRQ4m42QY+Y4MI75ZIJQZNOMoMzeTd8z
	qf/eoTpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0L8u-00000005Hip-2mcX;
	Mon, 14 Oct 2024 13:29:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0JcY-00000004za0-3uKE
	for barebox@bombadil.infradead.org;
	Mon, 14 Oct 2024 11:52:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=V/bmeOyp0SoR1wdA8SmUAVfFSLGPPA02W6Z9//RGZ/k=; b=rPn+RhyW8pV6HYEEOxodWf0MpW
	LF6gCB0Bk33TjxFKZ80OkRE7Y8R4KcdYg/mZEwxzh9QtTDNMDBTsBv7YznsqucVhKcYELe6IasySk
	16Ipu2NMRLul+GzWrRphggu4aPswZfQuqVlREEFxSMd1miLE4nM9VCW4oLbROF9nHM46JCKhL2hJo
	lpinH1u9Lltm8Knkc9SztwR++p9hoF26ZUnk+WC97RnsVI5+ZtWLyOLmAbz6eyxt8WQhieFVcwGkE
	7lMhOxugfMhguB5DKmmT3N+NfWY9sItbKKrXsKsKLHENO2fyfXjFY79IXa912lgWJAaGF9EUwhYNJ
	puD+E2yA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0JcV-00000006Ko9-0CGH
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 11:52:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JcU-0001H7-Ib; Mon, 14 Oct 2024 13:52:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JcU-001mVN-6N; Mon, 14 Oct 2024 13:52:14 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JcU-00BwOc-0M;
	Mon, 14 Oct 2024 13:52:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 13:52:11 +0200
Message-Id: <20241014115213.2846066-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_125215_430125_460E387F 
X-CRM114-Status: GOOD (  12.80  )
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
Subject: [PATCH 1/3] keytoc: check for memory allocation failures
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

System headers may mark asprintf with an attribute requiring that the
result isn't used unchecked. Add the check and check the malloc() return
code as well for good measure.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/keytoc.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index d5c8aa2e1216..c60df8a5f017 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -28,6 +28,12 @@
 
 static int dts, standalone;
 
+static void enomem_exit(const char *func)
+{
+	fprintf(stderr, "%s: Out of memory\n", func);
+	exit(2);
+}
+
 static int openssl_error(const char *fmt, ...)
 {
 	va_list va;
@@ -351,6 +357,8 @@ static int print_bignum(BIGNUM *num, int num_bits, int width)
 	BN_exp(big2_32, big2, big32, ctx); /* B = 2^width */
 
 	arr = malloc(num_bits / width * sizeof(*arr));
+	if (!arr)
+		enomem_exit("malloc");
 
 	for (i = 0; i < num_bits / width; i++) {
 		BN_mod(tmp, num, big2_32, ctx); /* n = N mod B */
@@ -679,7 +687,9 @@ int main(int argc, char *argv[])
 		}
 
 		if (!keyname) {
-			asprintf(&freep, "key_%d", keynum++);
+			ret = asprintf(&freep, "key_%d", keynum++);
+			if (ret < 0)
+				enomem_exit("asprintf");
 			keyname = freep;
 		}
 
-- 
2.39.5



