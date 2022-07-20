Delivery-date: Wed, 20 Jul 2022 15:33:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE9p5-00FdfB-2I
	for lore@lore.pengutronix.de; Wed, 20 Jul 2022 15:33:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE9p1-0004Wo-Oq
	for lore@pengutronix.de; Wed, 20 Jul 2022 15:33:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MUZe7Z73Z34KOVYfCmwMFCa2UHzqg4Fs9NOpxsorssU=; b=q+yYZIghc7vSCF
	PObz23phDIrCquFrKAPrHM7nPIP3A7bmzZi/MtHvzD2Ka92TGfsKa8tIrwg3IzGruTArBmQ4aa44c
	o/JsHYlcLARi7snuD4Dhk6nVqiZ4NeajWyDo/NJOKNU7tYAjqlIrfbSHJfPtQMw/QlH/Eiz13RLdF
	K/RLeAuFWygTlDQXJbAFSNZwsnVgD6WadhLOjgVpFGfEs6+kku2thjQUCBUoM+lfZdBaYxh1Gj+nf
	Fvk6iYt42YBNXYxUqCcIyqfZCs+SSs52Ryn7fTKAA9MMBNl3Ig8WAtWH82O2QnsBmPNODk/WvJ4VI
	6JU1RmWMnBHPHvH0i2ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE9nO-0064Ch-9m; Wed, 20 Jul 2022 13:31:22 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE9nE-00646b-7n
	for barebox@lists.infradead.org; Wed, 20 Jul 2022 13:31:13 +0000
Received: by mail-lf1-x134.google.com with SMTP id u13so30272686lfn.5
        for <barebox@lists.infradead.org>; Wed, 20 Jul 2022 06:31:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MUZe7Z73Z34KOVYfCmwMFCa2UHzqg4Fs9NOpxsorssU=;
        b=SCJUCLhvWedzCUQzcNQpA540fEdeDeTbnWWN2/siUJ4OsmhJwlwc2ocXaJoUEg/Taq
         iSQUg6kA5qPM3q5Qvp3nrAm/ekRUNABhMu5GoL5dfWA5WcoidgPUgEBzdLDAxI8Z9xH/
         +UspYmbUS6eHLrUJsv8aBGO1fgZbbdxEQpRfFFqeezaiuw5wzkD2Es8+gtDClnR+8BQB
         tt0rjeS7V64exImFwmVwaY4vedBelK77Xdzhv47fug+7inSMdT06XMud7xAQirvTmEMq
         r24QMn5jbCai0Zhnuv+zJ9Ab9grWf2wa4Uv+rvUcYKSVSAdxNvvqw5UdxHcYejBt4ySy
         svUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MUZe7Z73Z34KOVYfCmwMFCa2UHzqg4Fs9NOpxsorssU=;
        b=ECIVlXRTxFtoHaLUYvS7QAsW/wfPsfMZgqKeb+QzHXK/T1NdT6w23SGdkrt/PUvE2t
         qj8fHOTZ/Ji18hUYz5EAKtVw7uQbnvj2PutfbWcTXnNW32s6jGqWjUMINvxe4myj4t+K
         yCox4Y2b8sz73pEY3hmGVeyzhI6CfqRLXcwWFv9uX1PnvoM7fmtcEiGTtY/4zoJGY95z
         E2w9XRobKZ70Eh//tT6CeEtQILaRuzk+MDS/63O0t24e+LC8gIme0Orf+K0AKwyO+FVp
         87Z7IUljDvyDIbOYGyBHtk2OgjNnZRkZf9Qa6JWOxsIV1kHkXOJPx+Y5c/2WhtcUHEnF
         +lQg==
X-Gm-Message-State: AJIora/2gVzlcqyf31vtrSxLGgdfO0QzDoZLp4rBaK+qsVRST7Qx/FlA
	wkxZ1xOoiJrRdkiSOrPBFuWfwvJgYahQkL8p
X-Google-Smtp-Source: AGRyM1sn8E8RFSxcFynJD315gG2+Rlou5AQdU/I+bdehKBHfLHo87LWrRiJl7/oT0BPTRVpvNdLr5w==
X-Received: by 2002:a05:6512:1153:b0:48a:2836:692f with SMTP id m19-20020a056512115300b0048a2836692fmr12654433lfg.650.1658323869349;
        Wed, 20 Jul 2022 06:31:09 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id k8-20020a2eb748000000b0025dd85da157sm237378ljo.5.2022.07.20.06.31.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jul 2022 06:31:08 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed, 20 Jul 2022 16:30:55 +0300
Message-Id: <20220720133100.13580-3-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220720133100.13580-1-denorl2009@gmail.com>
References: <20220720133100.13580-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220720_063112_311100_D1C9983C 
X-CRM114-Status: GOOD (  12.40  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/7] net: e1000: properly read/write MDI registers on 8254x cards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Taken from Linux e1000 driver.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/net/e1000/e1000.h |  3 +++
 drivers/net/e1000/main.c  | 22 ++++++++++++++++++++++
 2 files changed, 25 insertions(+)

diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
index 52ad3d4cdb..3a5ee9988e 100644
--- a/drivers/net/e1000/e1000.h
+++ b/drivers/net/e1000/e1000.h
@@ -1388,6 +1388,9 @@ struct e1000_eeprom_info {
 #define PHY_1000T_STATUS		0x0A	/* 1000Base-T Status Reg */
 #define PHY_EXT_STATUS			0x0F	/* Extended Status Reg */
 
+#define MAX_PHY_REG_ADDRESS		0x1F	/* 5 bit address bus (0-0x1F) */
+#define MAX_PHY_MULTI_PAGE_REG		0xF	/* Registers equal on all pages */
+
 /* M88E1000 Specific Registers */
 #define M88E1000_PHY_SPEC_CTRL		0x10	/* PHY Specific Control Register */
 #define M88E1000_PHY_SPEC_STATUS	0x11	/* PHY Specific Status Register */
diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index bfb8d8ff2f..3b45fb3b51 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -54,6 +54,8 @@ static int e1000_get_speed_and_duplex(struct e1000_hw *hw, uint16_t *speed,
 				       uint16_t *duplex);
 static int e1000_read_phy_reg(struct e1000_hw *hw, uint32_t reg_addr,
 			      uint16_t *phy_data);
+static int e1000_phy_write(struct mii_bus *bus, int phy_addr, int reg_addr,
+			   u16 phy_data);
 static int e1000_write_phy_reg(struct e1000_hw *hw, uint32_t reg_addr,
 			       uint16_t phy_data);
 static int32_t e1000_phy_hw_reset(struct e1000_hw *hw);
@@ -2627,6 +2629,15 @@ static int e1000_read_phy_reg(struct e1000_hw *hw, uint32_t reg_addr,
 {
 	int ret;
 
+	if ((hw->phy_type == e1000_phy_igp) && (reg_addr > MAX_PHY_MULTI_PAGE_REG)) {
+		ret = e1000_phy_write(&hw->miibus, 1, IGP01E1000_PHY_PAGE_SELECT,
+				      (u16)reg_addr);
+		if (ret)
+			return ret;
+
+		reg_addr &= MAX_PHY_REG_ADDRESS;
+	}
+
 	ret = e1000_phy_read(&hw->miibus, 1, reg_addr);
 	if (ret < 0)
 		return ret;
@@ -2702,6 +2713,17 @@ static int e1000_phy_write(struct mii_bus *bus, int phy_addr,
  ******************************************************************************/
 static int e1000_write_phy_reg(struct e1000_hw *hw, uint32_t reg_addr, uint16_t phy_data)
 {
+	int ret;
+
+	if ((hw->phy_type == e1000_phy_igp) && (reg_addr > MAX_PHY_MULTI_PAGE_REG)) {
+		ret = e1000_phy_write(&hw->miibus, 1, IGP01E1000_PHY_PAGE_SELECT,
+				      (u16)reg_addr);
+		if (ret)
+			return ret;
+
+		reg_addr &= MAX_PHY_REG_ADDRESS;
+	}
+
 	return e1000_phy_write(&hw->miibus, 1, reg_addr, phy_data);
 }
 
-- 
2.20.1



