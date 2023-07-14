Delivery-date: Fri, 14 Jul 2023 07:17:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qKBB0-00Acbc-Qn
	for lore@lore.pengutronix.de; Fri, 14 Jul 2023 07:17:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qKBAy-0000FQ-A9
	for lore@pengutronix.de; Fri, 14 Jul 2023 07:17:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BOJORX9+/OFr5Negs87pgN4wKNAEilLDhSEkAwU8TBY=; b=TXqLoQyUsM2lHBZ2WS1FNQQUm/
	Wof0KkPfTKPBJmeZLI2ldb7omW3Z9CbV1ufZBJuG9sCu0Vdiw9wTF+SVGbD5xAinEay3PAAjwBbAY
	5r51HUvm44tzSnF3q5608cFfJsQfyLwGzb5J1uJaSt1tWeIxfTfwoXzZ/yVCfRAo4HaIEyjdzbeEE
	LZGzNU2u6WlzBiR+N8xv1jNpMDIV2FFvuq0FFaMcVVm1hRlhB5yKfojFZqBuefS6IFOUec3RCwQvg
	0ksnUfQxYioahwUXKjQRzPqFwqdMeBCuqZSy5DFT/s4dEYN6WPXBh/ttTapBzWky2PKU2YmK+oskt
	ZBrT3wOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKB9Y-0052rt-0D;
	Fri, 14 Jul 2023 05:15:40 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKB9U-0052qU-2q
	for barebox@lists.infradead.org;
	Fri, 14 Jul 2023 05:15:38 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-4fb7dc16ff0so2541069e87.2
        for <barebox@lists.infradead.org>; Thu, 13 Jul 2023 22:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689311723; x=1691903723;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BOJORX9+/OFr5Negs87pgN4wKNAEilLDhSEkAwU8TBY=;
        b=XSdy3O2Oe7NakI+6FJ/6LeQFzM0dpcp91lKOqAAk2XzpeVAg3iquZjbLvahrJT6NFF
         L4+2PlVAw+AQA03u+xfXfKngdJ+I7BWKvYpqOdY1L6pFZo+UlC8u08zeVHQRm2EroicL
         t2CjqTsexjriUrsNKkxp+qck4Ey77XL+VIvaVoo73hDciNCT2Y6kzvEDai0Mhj4loOkt
         3E4hJ7MPjEnQu14WIb1Aqfcx2shOtELpmkODb6RAetCTaI2vnPopCdhyl5E+SsoIp3/F
         JVMxj2LuXz7UeJlI/Nqs3md3OPE8aiUfelpbU6D25Jbmve2Jxoejty3twR/vgkXZG2to
         9i4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689311723; x=1691903723;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BOJORX9+/OFr5Negs87pgN4wKNAEilLDhSEkAwU8TBY=;
        b=MIMxu947KKvQFiSph0M3Ma6aP1e053qjMywqxOnuwtCT5E2iD3LPAj9dEcvw3ZCDMs
         WKR09RqkNFXQBOR1w+ckg+53zQvBxnlOsvSoXr5ydg0Hy1l8/mJvWggwzVuJ0Iz2UuMP
         RQzOaiacxZbPkyiHhIsjsFW8+PqCoiBqSMRRdHpXA8lgfYdKQiTBaDJfMvXH0q83GE5v
         +AmDJWmd5O1ZLOwINK34QOJvKUKFRdW2lTJzoW0yUnx1bxzX4etUEo+Fn1xUDJkt3Wmb
         T8e2GTvMMthRI7VimNrYAjMiVnkDrrsIBzwE4JaO70e/2fzC6upqcIZGdt1jUCb1Txvs
         ft4Q==
X-Gm-Message-State: ABy/qLb4VtRHU9YRQNWSWbPWU4ZYvUGZkCWmH/0okombNaKAaHqokmMf
	Kx8tXCBrHZQuDWI+owLoXpaiGNvQN65ISg==
X-Google-Smtp-Source: APBJJlH0YTvS4j0tCPQm6ob5gvAnL4sOyNml8c/79lAnkmvmKmkxtaZIYidG9DlXt8jGJ+1v5QBe5A==
X-Received: by 2002:a05:6512:36c4:b0:4f4:b783:8556 with SMTP id e4-20020a05651236c400b004f4b7838556mr2297611lfs.66.1689311722730;
        Thu, 13 Jul 2023 22:15:22 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id d15-20020ac25ecf000000b004fa52552c7csm1335893lfq.151.2023.07.13.22.15.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jul 2023 22:15:22 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 14 Jul 2023 08:15:09 +0300
Message-Id: <20230714051510.2304-3-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230714051510.2304-1-eagle.alexander923@gmail.com>
References: <20230714051510.2304-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230713_221536_916951_EF5A027F 
X-CRM114-Status: UNSURE (   8.99  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] mfd: rk808: Add missing RK809 chip ID to poweroff handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/mfd/rk808.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 738ba305ac..1361bb7101 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -224,6 +224,7 @@ static void rk808_poweroff(struct poweroff_handler *handler)
 		reg = RK808_DEVCTRL_REG,
 		bit = DEV_OFF_RST;
 		break;
+	case RK809_ID:
 	case RK817_ID:
 		reg = RK817_SYS_CFG(3);
 		bit = DEV_OFF;
-- 
2.38.2



