Delivery-date: Wed, 04 May 2022 11:43:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBXO-001WEK-L9
	for lore@lore.pengutronix.de; Wed, 04 May 2022 11:43:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBXL-0002KF-1q
	for lore@pengutronix.de; Wed, 04 May 2022 11:43:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G7SoM8htSYKThqUUvgzHxbXB/51XQ5Q9fZDXZgqpEjM=; b=XbjCCsQ+e4feAy
	x84AWjEeIY8LrKdjCTYreFubCdYiXgystHQC8NfrjPFbjEt3e2+D2GvwiFBuzdNdR90xKi6+/Fg9s
	GaudlYskaJqtf+bWe4a6vmm70oFzQ562qEk/Ia6LZBxktwpkL2osOdjDjNUFg1D8vD61DTVFEb0FU
	92/M5RN4pwmAAT3VwsNTpkqO9ZLFrcAsqLuSaRZlp5ABME4IbeNmVH33kGGrFl9MjUYbmVUaPMuom
	DjRq+i18b9jhuSauY+ws2eD/67ftop39rpMDm8lmW7dH0voVsy/9S7jHLTauTbyYB4imypi1KWvV2
	T0wCPGlyONG6C9pr1J9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmBVf-009ynG-FE; Wed, 04 May 2022 09:41:28 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmBHv-009qaY-Uq
 for barebox@lists.infradead.org; Wed, 04 May 2022 09:27:18 +0000
Received: by mail-lf1-x134.google.com with SMTP id bq30so1330263lfb.3
 for <barebox@lists.infradead.org>; Wed, 04 May 2022 02:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=p08agu7PD3fDHmf/Lhb8tv42KTul9jWoIUitoyLdDUk=;
 b=qMZPKKUytt4G9aQ7paiqrWcsC1mc/T5U/WoVHt4yKc/ti2igGXpBrBIADlalXeDrYe
 P/XGD499hEJjQ3wlwyA+ISPANexMOAha8eIpqX+WTLjKIoFUUcQT17hH/3R8lYXEE003
 85S3IwOYV9Zkx0qwVYrs+afhX/sqnwMujGNBlbvHE0soOD3qlnaw3J7ftEJy/YoUgHDz
 OYrpt/ee3l91ah3zlCUSQIvPvwx/GNmzcF+lcsCw8srMXoMPY5DJZ7lxJLIMQLpM7bl3
 YXj+kenFPOaWl3YyO1wn9EyDrUrBPbyBKE7W9SzCi0aLHdMq38jARmzGBckdM1Y2BnR+
 tsxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p08agu7PD3fDHmf/Lhb8tv42KTul9jWoIUitoyLdDUk=;
 b=WAHj/yZzYEHgQtPmkyIC0hIIkwo2Bap2Zl3yogwFMMtdlcsFc8MyH0SmuLepqT+zFB
 OIM1/43f1Vw3r/IArRHUMuwSXhWeIredr5/+99Q+Gej7gYYKzez47uuEV8XJcW+8Jaat
 tj9PovG20dRfeNwAYKvOzaWjO1VnRSI5PVmXBfHtZxz9Jwt7IMmOliwc4z4f+18CfYQb
 CkKplad7k+K9EwCxjuLyvTY/WQW0gKwAl2B9gE+hS7F+OVWaXdmYiPH7FbZeB/Dlzwdo
 jbbMyBHA5m9wm0L2Vu7Y3oAnEiAtoo/9ee1J4W3aFVs5AAlroC702gZRg+Tv/O4GeYd6
 oEfg==
X-Gm-Message-State: AOAM5336zmbzbk1Bh1wTSxFAmfuWIG8y1NsiYljDLs/AAyxEvT1Bx9je
 zhx7LwbUY5HJF9ny/P8dwC+uEXuuhSQFYlmC
X-Google-Smtp-Source: ABdhPJykEyeDbV8X1U4LTdqXhi/FJuQ4xYws3YR0cnm4+McPld0bHCddy0R/+Mrz4r5SOlnhmAFsuA==
X-Received: by 2002:a05:6512:3b90:b0:472:873c:31cc with SMTP id
 g16-20020a0565123b9000b00472873c31ccmr9774198lfv.374.1651656431716; 
 Wed, 04 May 2022 02:27:11 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
 by smtp.gmail.com with ESMTPSA id
 t25-20020a2e8e79000000b0024f3d1daeb3sm1616993ljk.59.2022.05.04.02.27.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 May 2022 02:27:11 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  4 May 2022 12:25:45 +0300
Message-Id: <20220504092553.27961-8-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220504092553.27961-1-denorl2009@gmail.com>
References: <20220504092553.27961-1-denorl2009@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_022716_077242_44A53F1B 
X-CRM114-Status: UNSURE (   8.74  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/16] ata: ahci: properly fill scatter/gather table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We are supposed to populate a table, but instead we were just
overwriting the same entry over and over in a loop.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/ata/ahci.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index f7eb35c09d..2d7b527755 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -139,6 +139,7 @@ static int ahci_fill_sg(struct ahci_port *ahci_port, const void *buf, int buf_le
 
 		buf_len -= now;
 		buf += now;
+		ahci_sg++;
 	}
 
 	return sg_count;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

