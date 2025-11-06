Delivery-date: Thu, 06 Nov 2025 16:19:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vH1lM-00Fymx-2s
	for lore@lore.pengutronix.de;
	Thu, 06 Nov 2025 16:19:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vH1lI-0006eV-Dn
	for lore@pengutronix.de; Thu, 06 Nov 2025 16:19:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=53LgY/iXcwMU88gQOnHc35If7ZQ3PH94cGeNimVIIrI=; b=bjeSllQaj/TtE81dEpwHFIZWgx
	LKIdJbzzgl+MS5pPr0u7VGp7YU6k7zCMsUmFdFrVgoQD6twoG+IUkblnsUOgn+uBY1XIHK7QEg7N2
	1H3Xuipkic4cWVIoH7GEOikWjPwJgEiKkRJlSFEJaeWRF7pfSUQLPh4l95qjoLDVT65umi1zP/Qwe
	2TRJmB/wX9f9gjtoTdIWwTK2z2n6A4nE3LkCHfPr7M/4rAc68aUxfCJug246JZFZTJ3X3/z3dOcMN
	3A8AWkVqr/WGBg2uB7AahnPiQ+OA5JSK1kwzWB7EteTDKmgvNCedNGN1aeZ72rQnsxz8+d3rtSsDj
	hMF7z/Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH1kg-0000000FnHA-3OQf;
	Thu, 06 Nov 2025 15:18:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH1kc-0000000FnAY-0u3z
	for barebox@lists.infradead.org;
	Thu, 06 Nov 2025 15:18:16 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vH1kY-0005tl-PA; Thu, 06 Nov 2025 16:18:10 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Thu, 06 Nov 2025 16:17:58 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251106-tlv-signature-v3-1-5d00ed378e75@pengutronix.de>
References: <20251106-tlv-signature-v3-0-5d00ed378e75@pengutronix.de>
In-Reply-To: <20251106-tlv-signature-v3-0-5d00ed378e75@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1111; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=b7x4tzRLGdv6XT1drGolXYQODMnn10yqWyjmvrUq+ww=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjk2aPFVPb1ay+PceXLCcIdRhtszB2lGj3uy0tNknh4h
 4Gb7WBCRykLgxgXg6yYIkusmpyCkLH/dbNKu1iYOaxMIEMYuDgFYCK3XjAyLJo982eAfuRUH31N
 PjaWizzf7Cx7onQ7D99wZpoadGDCX0aGs4wJd8rnT//j57jlq3aEkO718/+SZ3AyCfRoiO+7duY
 5OwA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_071814_288287_207282AA 
X-CRM114-Status: GOOD (  10.10  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 01/17] lib: idr: avoid dangling else in
 idr_for_each_entry()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The idr_for_each_entry() macro uses an if statement to update _entry and
_in in the loop body. This can lead to dangling else issues, or at least
a compiler warning of the potential thereof.

We build with -Werror=dangling-else in CI and that is triggered very
easily by this construct.

Move the loop body into an else to avoid this issue.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 include/linux/idr.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/idr.h b/include/linux/idr.h
index e726d17b59..206c006c62 100644
--- a/include/linux/idr.h
+++ b/include/linux/idr.h
@@ -41,7 +41,7 @@ struct idr {
 	     *tmp = iter ? list_next_entry(iter, list) : NULL;		\
 	     (iter && iter != (_idr)) || (_entry = NULL);		\
 	     iter = tmp, tmp = tmp ?  list_next_entry(tmp, list) : NULL)\
-	if ((_entry = iter->ptr, _id = iter->id, true))
+	if ((_entry = iter->ptr, _id = iter->id, false)) {} else
 
 struct idr *__idr_find(struct idr *head, int lookup_id);
 

-- 
2.51.2.535.g419c72cb8a



