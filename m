Delivery-date: Thu, 05 May 2022 08:54:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmVNN-002Q0b-2w
	for lore@lore.pengutronix.de; Thu, 05 May 2022 08:54:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmVNL-0006oH-Qb
	for lore@pengutronix.de; Thu, 05 May 2022 08:54:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EZQWpSyqeot3FIq7O7bItKdc2WUeh5W9kjHhIhwno+4=; b=XJAhhdHkNaHhQG
	D+jqTRlvrXLKc/gnNKJG4I0zyHykcxMc7fyZW63/juM/lscwW8IBz7bNRNZyAV+xLftIa02e2wn3j
	sXLsPzEtNmYhVCPjswEfRwJb3bvZy7Z1KGOxHpj70D3jSTgHHs2RbQiXsxXBGOIWnrO3Vb9ObObew
	2FSqLe2vvO2iXJ6DEbDJvzmQuFhZ1ovcCZd1FEwlGL833k+b6ngKRzuRQ2Cy7w9TMcOulHs1ZCJn0
	yI+478uU/lsZwYKvz6VDyLN2Wa7/xZnNwo86WnPi00rGsQJ8BzEFwiRd6e34cuKekdYAcZjNcEqxC
	+s7g6IHTHngz8BNlOdCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmVLb-00EIHq-DR; Thu, 05 May 2022 06:52:23 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmVLW-00EIFu-2W
 for barebox@lists.infradead.org; Thu, 05 May 2022 06:52:19 +0000
Received: by mail-lf1-x134.google.com with SMTP id bq30so5940246lfb.3
 for <barebox@lists.infradead.org>; Wed, 04 May 2022 23:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pEP/96s/OBs4uj3kd70jWnwMJFnvp67yL4RyCvYZNcM=;
 b=oEZKlhMd+s/0MO8gyP5LvryDk7XbOnDVbk5/ILs2FolCpGkmoMy8S8ZeV6nmknzukL
 5K/n68H9eqy3tt99hFGlcV7724Deb1XHzNzOjmehvhqoodlqwHfhhuUDNMm05nX4EGDG
 TbI4Uz3mrWLqyEv1kn3Bxc88EqwKIA4++N32KPwujARw/blhwNQVKSn45xieyaX74V8+
 5CXH2FZ9pE7y+VsjJhLR+e9q8RGYmIdlVpJX9RRDUUV7x4jLi7qYc6JegMFLE4Qvnw3N
 AO1g1sqcb1p03WB5h8PmtCLDxdGK8hb6prfVIDgGk13hkM/KgnSXgt9oWrEqY2AznV/t
 nWlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pEP/96s/OBs4uj3kd70jWnwMJFnvp67yL4RyCvYZNcM=;
 b=YHERcVacrs7692D35jx7OEgaowGtCnDznUbSIVbxVUx0AMns7FAN9BPesw74lGAiN5
 tCO/gRRnB038F3kjdKIrrANlcpq1AO7EgnY6G4j+d6dU8EhS1OzIBQD/LFEjdO7+eua6
 e77UTKmaLXxQBmRqaT/Zi6iYHw/oBYDVYV2702v0cfH68GBkcKV72sWZEgmN/wA3jE8a
 /L7FxsDNVYlDYC4gQRnTWFFXfi7AnL36zUWpu/EOAjRqE+KGDwaKgBcJvLUHMh0lI5a+
 BgyF6jFdV6VdYB0b1j4kIr77xmrUOfLsL95iuavB1RM9NUmoSe4ETZhClQQ10p4ukXCq
 Wyng==
X-Gm-Message-State: AOAM532wb6Y4SN/jfW8DUCL0HQwIYnGu93hn49r4/ty0iF3f5z8XgxOw
 /EmIMfo2bry/aAWxjeYYyypFxLrak1RPrw==
X-Google-Smtp-Source: ABdhPJy/G+H5/FPp1sMrnt+tGLybnmtid1+eFCcBiYNmPwiurIgW3RfJG3UZGJAZel5jt1Z0jDrF7Q==
X-Received: by 2002:a05:6512:3ee:b0:471:f84f:7d5b with SMTP id
 n14-20020a05651203ee00b00471f84f7d5bmr16308937lfq.18.1651733533148; 
 Wed, 04 May 2022 23:52:13 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
 by smtp.gmail.com with ESMTPSA id
 u18-20020a2e8552000000b0024f3d1daecasm98513ljj.82.2022.05.04.23.52.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 May 2022 23:52:12 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu,  5 May 2022 09:52:06 +0300
Message-Id: <20220505065206.10816-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_235218_170735_23FFAC75 
X-CRM114-Status: UNSURE (   9.28  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: omap: Cleanup omap4_revision
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Clean up the omap4 revision function by removing exceeding break statements.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-omap/omap4_generic.c | 17 ++++-------------
 1 file changed, 4 insertions(+), 13 deletions(-)

diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index c9a89c57b7..406b686318 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -433,38 +433,29 @@ unsigned int omap4_revision(void)
 		return OMAP4430_ES1_0;
 	case MIDR_CORTEX_A9_R1P2:
 		switch (readl(CONTROL_ID_CODE)) {
-		case OMAP4_CONTROL_ID_CODE_ES2_0:
-			return OMAP4430_ES2_0;
-			break;
 		case OMAP4_CONTROL_ID_CODE_ES2_1:
 			return OMAP4430_ES2_1;
-			break;
 		case OMAP4_CONTROL_ID_CODE_ES2_2:
 			return OMAP4430_ES2_2;
-			break;
 		default:
-			return OMAP4430_ES2_0;
 			break;
 		}
-		break;
+		return OMAP4430_ES2_0;
 	case MIDR_CORTEX_A9_R1P3:
 		return OMAP4430_ES2_3;
-		break;
 	case MIDR_CORTEX_A9_R2P10:
 		switch (readl(CONTROL_ID_CODE)) {
 		case OMAP4460_CONTROL_ID_CODE_ES1_1:
 			return OMAP4460_ES1_1;
-			break;
-		case OMAP4460_CONTROL_ID_CODE_ES1_0:
 		default:
-			return OMAP4460_ES1_0;
 			break;
 		}
-		break;
+		return OMAP4460_ES1_0;
 	default:
-		return OMAP4430_SILICON_ID_INVALID;
 		break;
 	}
+
+	return OMAP4430_SILICON_ID_INVALID;
 }
 
 /*
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

