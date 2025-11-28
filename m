Delivery-date: Fri, 28 Nov 2025 09:22:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOtka-005iuy-2W
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 09:22:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOtka-0001Ie-8e
	for lore@pengutronix.de; Fri, 28 Nov 2025 09:22:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fyWGoPsMJIY7/SrIamBoYrZnm6Eq/zlU/+NhgZ1NSg8=; b=hEhUL0mbluUCUt
	U9FBN3PuLe5P3YpDZ8vmVtTdfV3wHzM1smYYq90Wl4Q47qMVi+/FRxgTPVp8zs5xtsic5iWCdporG
	woFN/K7IMvEgLBGTZtGhs1Kn7wDlTv2nYUz+z/i96PNiaAZ/AnirYr7veqmvrWoTmppt29XdujZq1
	bP9FSotr4iDiR8JkUkWx2iNVnfIIWMaWDN0/cEtMxn8t7qLQ5C9oNWoN8OthXStZ8lfp3bl0pLECq
	ztpVZAhB7WTC0k+KPvdnD/PUK+vvO6D1tTqSLgYwJSauhzlfIsi9eO6Hx2AhS66PY79tUJ4h2PwB9
	j5TmS/Ldc484m5uQU0zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOtk2-000000008i4-0SGp;
	Fri, 28 Nov 2025 08:22:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOtjx-000000008hc-1MHU
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 08:22:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vOtjv-0001EP-6Q; Fri, 28 Nov 2025 09:22:03 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vOtjv-002vO5-03;
	Fri, 28 Nov 2025 09:22:03 +0100
Received: from localhost ([::1] helo=dude04.red.stw.pengutronix.de)
	by dude04.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vOtju-00000009aIx-42Pr;
	Fri, 28 Nov 2025 09:22:02 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Fri, 28 Nov 2025 09:22:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251128-keytoc-v1-1-5540f8543f32@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAKlbKWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDQyML3ezUypL8ZN3ExMSUVAvLtFQLEyMloOKCotS0zAqwQdGxtbUAYmK
 g71gAAAA=
X-Change-ID: 20251128-keytoc-aaade89fe842
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1124;
 i=m.grzeschik@pengutronix.de; h=from:subject:message-id;
 bh=LsBgYcG6x0WthO7oNVLIOGuxGYp11ysAwZ9Mtz1TPZg=;
 b=owEBbQKS/ZANAwAKAb9pWET5cfSrAcsmYgBpKVuqUGtAe3/X5RJv06CrGjzJhd+Z46eM69ZRW
 EbcdJ5iP86JAjMEAAEKAB0WIQQV2+2Fpbqd6fvv0Gi/aVhE+XH0qwUCaSlbqgAKCRC/aVhE+XH0
 q86+D/94ouRHyR/XXLeZjcmsb2C5pCHNN8/0Y7eEToDNIVcJ34hml5cFH+Sj5fG1Wo03vu6Nija
 Sof54WdKjnKtyvZHZHpJMvw8+UxJtJE3SHC/EmskhDOq2uRzPnZY0ofzktiTh/pa4dFLK6Hke2L
 IOYAMQbjwQwaVQcndpKHJ7DWXKtnBDdhVTyA4t5y6nfu5SUh4QNtSrSgCp/drndHDPKeJF16hoJ
 dmF0ntX2OI/bu33zo8SSpDlmws8Zkmw2+Mc0VuIdNqa5hj3sgxp+xCYRXXfUz3MuE5JKEtMLdEo
 Wz6UA2E1ED5vcf9dMngMKZJQ2aTsjY1pGVvT/NPYAjm4yu28iDMPZliNqKC4zJUZAa3P8hV+r5H
 k6tCUsONgvC9J9xmgvlWdRlRCd3A3nr5VJEWVe93qEUKW1mdo5joVzgS50CTIExSVdFBjDWnORB
 tlLO+lPgJmZTYeCY1c7R4VAuVmZETaxAOryOXwa1I9OZi8EIluS2m4A78eYLVefGjcSpY2nFwFf
 NfIrwdDFlYRFQ+Z308JFpGhfrBedHrOrF0/M6PFS1t8h5PM5txfnQR+RBybJfjHPP3wir8cECQn
 SoqIE4AnUFnGQrHOHLIjrnwP2a6p3qwmLN9UY30FiEjXmzwuR+pRgkq49VZOuwHA6n543TguWp5
 hEoot3EBwdvF7uQ==
X-Developer-Key: i=m.grzeschik@pengutronix.de; a=openpgp;
 fpr=957BC452CE953D7EA60CF4FC0BE9E3157A1E2C64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_002205_369199_4FCF574B 
X-CRM114-Status: GOOD (  11.78  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] crypto: keytoc: fix env parsing after keyring support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since the support for keyrings was added for keytoc the parsing of
pkcs11 keydescriptions that are set from environment variables is
broken. Fix this by adding the necessary try_resolve_env call before
working with the key description.

Fixes: 9b6abf4928 ("crypto: Add support for keyrings")
Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 scripts/keytoc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index ade924298a3169c6ac52b781deac94f706a14203..77ada3af451983722f40e5bb40f8e2789884a898 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -856,7 +856,7 @@ int main(int argc, char *argv[])
 	keylist = calloc(sizeof(struct keyinfo), keycount);
 
 	for (i = 0; i < keycount; i++) {
-		const char *keyspec = argv[optind + i];
+		const char *keyspec = try_resolve_env(argv[optind + i]);
 		struct keyinfo *info = &keylist[i];
 
 		if (!keyspec)

---
base-commit: 5d89bec4985d850d59813e34c6b5213d8e8f48f0
change-id: 20251128-keytoc-aaade89fe842

Best regards,
-- 
Michael Grzeschik <m.grzeschik@pengutronix.de>



