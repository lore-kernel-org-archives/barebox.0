Delivery-date: Tue, 17 Mar 2026 16:20:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2WDy-001qfT-0L
	for lore@lore.pengutronix.de;
	Tue, 17 Mar 2026 16:20:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2WDx-0007d6-II
	for lore@pengutronix.de; Tue, 17 Mar 2026 16:20:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VQ17mfQkk5AzOZgAcgjpH/hHwo12MS6IdAbF5E+bgi0=; b=3HODeKB4bg42gCqvb8yxGL9gqi
	2x1Uit1FRmDCgAD1vTpmZhozr6zfmFHCD4h1i0qkSosVC8L5Q7F+hsi0Uc0qIL4ZFuBGzdplLczwp
	0zKKvCxAuDVfmVKxUFLzrijaQ91NqxK7CvrmeKvljuOCC3rR0sg8EfyBeNnOgnr3H/5/yNXIBFdnD
	ldfCVsVqzdMTpQ1OBwubYTooFgIVu4obsvIpYXiZsCmn4xPxA1gCFrjIvSGQsxcbpIuPS5vO7IMbR
	DW/ahHf296KjSGo83d6a1pDbmmzSI6fGbhC6iBOtudTDcqzk6xdMuFprBhfVPihvdRvaYorS4Ly3m
	13eQJczQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2WDR-00000006iqX-06In;
	Tue, 17 Mar 2026 15:20:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2WDP-00000006io9-2TAA
	for barebox@bombadil.infradead.org;
	Tue, 17 Mar 2026 15:20:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=VQ17mfQkk5AzOZgAcgjpH/hHwo12MS6IdAbF5E+bgi0=; b=aCWcIoGa0uhesgMNfbg+7d/SeW
	Q1YYG8NESWFWnoUVs42mEaNfO7Ff3BOXAJ5k+5MCqZlbCFvfyXRKdSqmoClCyqwh+6wG0x1anB3mh
	2noJBqHtLrbyVE5/vTDS9kh0gC/jmjyNI1hVbOxIrTxWJrYA6win0FbyYXt/05KKqJYG985XS//uH
	KDgInj4eR9+gL2TWXYG5ktlEp24GyChZKKKlGsEsoAOz0XH1TNecMAsgZkwkKOTjQ99epZF2Vqtf9
	ks/v8fxuZLrJr6RceOxU8QjlDgnfTaT0WcteNw3BEY4hPXQe3ycrRyu5pjmz1oCHr7/DPkBS1dVP6
	+71vSTJQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2WDK-00000009Mb5-3VSK
	for barebox@lists.infradead.org;
	Tue, 17 Mar 2026 15:20:12 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1w2WDC-00076m-Ar; Tue, 17 Mar 2026 16:20:02 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 17 Mar 2026 16:19:47 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260317-keytoc-multi-env-v4-3-38ab473f8034@pengutronix.de>
References: <20260317-keytoc-multi-env-v4-0-38ab473f8034@pengutronix.de>
In-Reply-To: <20260317-keytoc-multi-env-v4-0-38ab473f8034@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.15-dev-18f8f
X-Developer-Signature: v=1; a=openpgp-sha256; l=1171; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=8d02Qo4MpxvxzCAc/a2GRPsg+E36Fjq3yfZAi4fY1Ig=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjcWSg/Ras+adc8w336zxb+j5jcGaLjYtM588uqO1+4P
 0xmTnhi3FHKwiDGxSArpsgSqyanIGTsf92s0i4WZg4rE8gQBi5OAZjIBQmGfzbqlhOuvj6yqqfd
 +rL6bI930/KkaiNP2alcmyH15KlOHTPD//BDO6Wk/M3vK53NmtRW9iuek+eK9bo58s8vt78KYXi
 ziAUA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_152010_974908_F068CF2C 
X-CRM114-Status: UNSURE (   8.62  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>, Jonas Rebmann <jre@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v4 3/8] crypto: keytoc: Move special handling of legacy
 pkcs11 format to parse_keyspec
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is a preparatory cleanup commit

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 scripts/keytoc.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index 135a396d34..6d680422a6 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -787,6 +787,11 @@ static bool parse_info(char *p, struct keyinfo *out)
 
 static bool parse_keyspec(const char *keyspec, struct keyinfo *out)
 {
+	if (!strncmp(keyspec, "pkcs11:", 7)) { /* legacy format of pkcs11 URI */
+		out->path = strdup(keyspec);
+		return true;
+	}
+
 	char *sep, *spec;
 
 	spec = strdup(keyspec);
@@ -863,13 +868,9 @@ int main(int argc, char *argv[])
 		if (!keyspec)
 			exit(1);
 
-		if (!strncmp(keyspec, "pkcs11:", 7)) { // legacy format of pkcs11 URI
-			info->path = strdup(keyspec);
-		} else {
-			if (!parse_keyspec(keyspec, info)) {
-				fprintf(stderr, "invalid keyspec %i: %s\n", optind, keyspec);
-				exit(1);
-			}
+		if (!parse_keyspec(keyspec, info)) {
+			fprintf(stderr, "invalid keyspec %i: %s\n", optind, keyspec);
+			exit(1);
 		}
 	}
 

-- 
2.53.0.308.g50d063e335



