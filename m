Delivery-date: Fri, 30 Jan 2026 06:18:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlgtW-006s3s-0C
	for lore@lore.pengutronix.de;
	Fri, 30 Jan 2026 06:18:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlgtQ-0002SN-LX
	for lore@pengutronix.de; Fri, 30 Jan 2026 06:18:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3menaVMdqrCFHKYjPjGFm3g85BTsnFCXeiH7zVEgvlA=; b=qxP7wUPX4Zf6bdxxIt0sRwFL4F
	QCEB3SMNGygyv++xqW3OpUK3RExJgIH3zwTnJTiuzIEbySefZbsR5xQWauPec7TNoAZobSQffGEdU
	NkTiJef6nUwTJoeyqc5cnJuPo4XO/K3nUmtRSIvX7Bo2WmJ700Z1Iwd/SziTE17Y3Z6CnnQ3geNwO
	Fo0aUZIofx572bmryrgNPOOWZTIyLigzrB/AB/xkEHEwQsrjfPt2HjOA12N2psJidRqyXWk3dMJ5A
	2Zfk68Be8Vvs5RwlIyFsBYF17Lr3UnIMkCHwC6mTBGMuHvBPHgZuZqSpyodcsziC/ZFBBg6bv3sCl
	9ZKzIPDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlgsp-000000012FR-2737;
	Fri, 30 Jan 2026 05:17:27 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlgsj-0000000126G-02Bl
	for barebox@lists.infradead.org;
	Fri, 30 Jan 2026 05:17:22 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-430f3ef2d37so1442456f8f.3
        for <barebox@lists.infradead.org>; Thu, 29 Jan 2026 21:17:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769750239; x=1770355039; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3menaVMdqrCFHKYjPjGFm3g85BTsnFCXeiH7zVEgvlA=;
        b=mNHOT2jAqJmFr5gLuW+OXaYyP/tErYp6DfOolcy246C0P/+q1Nn0P1tbpbOlS5KWBP
         G5vUwKn0iLHkIqfA5FYQte18IBlnwMIcw17DakTx9Slruox9HkpW74csxZXveRQlI+pF
         VoYnm6+UIP/mklI7qRMrZaRjq4ABMSkTFhAd64w9T5jqmS699TIVYXhQHfGncOsNY8VN
         3S+bfDyV0fOZ8+BkSB577kWpb8NoaRUKDkkJD0O0rajlzmFcO9rgEnia/UrLtINXFlRs
         ZZNf7jCBKJ/IrQozkm+wXLaKpmciUvxmMm0KF25uLJtG4nvwWZEkJakDCTmLJpIFSMOJ
         LnjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769750239; x=1770355039;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3menaVMdqrCFHKYjPjGFm3g85BTsnFCXeiH7zVEgvlA=;
        b=cQAnvB5Xcz8flGNvqu0qe2TWXI8iQQkpl3lTVU7stXIk2Z7NiDIpRVeyqwEtWrvTTw
         eLVtkepfErcd84aKYzbm/ddISlxz2hpSRxk4GqMG+uyKtkVBmxhil+e2ZSVofM0NFg60
         EEwuh2u4Mo0ZBz/Sz20O6MUF3Pi0pRR61LvJV3RcqCIrC1WTyCAqtNvfey8YRDQiYj2A
         z6GGjEJxp9ZXuMCIug95z6AKjCuH+wz2gIWaVdgsm0d80fAy0wb/X6jMJyPboD/7IYCr
         uAuD1T07px2BryIuc3IWkd7/29fr/LEn6XE7uqClmFSmsbqpITzIrNFn9KU2m+Ez1bs3
         2/aA==
X-Forwarded-Encrypted: i=1; AJvYcCXdmEJiM8TpwGXGIF6bnva8ATbRA3+4vK7O+G1Y7JuF5bBrsAxniJwz5CBVUw13JxOeW8O/k/o8@lists.infradead.org
X-Gm-Message-State: AOJu0YyG+iOl77ZngZIz3VDpHevGgJfpdayskQ8cQYlKqmEouaZ2iaCy
	UZ/Cct+uu9JCtEyNVUso9XxKqs42vtCoPNknMiz1b/GuavcdvOAtKMe4oI5S4A==
X-Gm-Gg: AZuq6aLDnqB0PY2A5E0ZgZ5dbS8xMaF37bZ25GXqTTw2iLNVWlmbVqXzlXEjb9vJOiA
	MZ+mINXIp2u6FqWDFcc5GE4N4z+8R2gVBz0stwUVRz3f8ocmy74d4AC8gmDsB6ntZZL4Suc4O+H
	5A8KchMapMEmSQSc3go83y8ltYfJTKP6hmtP7XpAhv9e3NhkxDserwBVhzBJxEyFpqfsMGfvdEh
	6x7li5BPA5TyGr4D6XfNen/yM30Kz4jl4/+TWyXTwaxZUCCVY/uFbPNB69x9FFWt4wZjR0Q8j8C
	XTmJr71o0h39JeTsHZPKET+Rls1cMaZISJZYu9NmfpRhqg7NLW3gAlqgJ4yL0FZjiSb/fa+4LEF
	15oIGp3mLi+S9Dxn/A2ISyyOgy4QLxvkuPGTTmOc1Y3mGYhjcDwhNPJvh1NXq3nzenXcR53Gqyi
	K2/BojaKCggyyAp6anC+QvpX8Pqq+iAvtBTR+iHVad0HeFC31x/j2J2X9mIDm49mXBBqpdYaA0/
	TIjprVzzGF4xLdZFEfADU+a5J9Rh4jP2sB9EcnYssGwd2xnK/eGzpADcRx1aZ1kfpLqdHE6V9hz
	IAjZWfw7RuQN7fbBAtmzg9T7zOG7zsWqrmiB5qq8DtizoXNsFxdg
X-Received: by 2002:a05:6000:1786:b0:430:f301:3e6c with SMTP id ffacd0b85a97d-435f3aa7a0emr2283598f8f.34.1769750238959;
        Thu, 29 Jan 2026 21:17:18 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-ad12-b37c-7013-7685.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:ad12:b37c:7013:7685])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10e4762sm18943088f8f.6.2026.01.29.21.17.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 21:17:18 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 30 Jan 2026 06:17:03 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260130-barebox-kickpi-v2-11-d27cf94a39b6@gmail.com>
References: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
In-Reply-To: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769750228; l=692;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=Iik0mEOb3e6bT9pd2AzRWaLQHHfjBEiqwmIJKFQyC70=;
 b=pqvKzt9G4qJBuFXmt3Sna3jEya1JMci70DZSbJ8RfN1hABD1jk+5hED88eI5iEDgjFvc0RJPw
 EAkNXmxAATKBWty5I2i3NmiaaJlDUKFy5cfQUgVWIeI0aY0ldOMYybA
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_211721_221425_4C51AF67 
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
X-Spam-Status: No, score=-2.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 11/14] mci: sdhci: rockchip-dwcmshc: Add RK3562 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add compatible string for RK3562 DWCMSHC SDHCI controller.

Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
---
 drivers/mci/rockchip-dwcmshc-sdhci.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index c4c03f703a..0bc6824c80 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -352,6 +352,9 @@ static int rk_sdhci_probe(struct device *dev)
 }
 
 static __maybe_unused struct of_device_id rk_sdhci_compatible[] = {
+	{
+		.compatible = "rockchip,rk3562-dwcmshc"
+	},
 	{
 		.compatible = "rockchip,rk3568-dwcmshc"
 	}, {

-- 
2.43.0



