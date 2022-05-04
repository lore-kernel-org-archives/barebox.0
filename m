Delivery-date: Wed, 04 May 2022 11:45:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBZd-001WIn-NZ
	for lore@lore.pengutronix.de; Wed, 04 May 2022 11:45:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmBZb-0002rr-CJ
	for lore@pengutronix.de; Wed, 04 May 2022 11:45:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IksI5txA1+uuH9h0d9v59OihwI1ukSiMjLShMeLIz+Q=; b=GV5u2sGcXdpXl6
	wPpajsCkqH901JBhkEvTTfo5kP+vwnB/hAYFflE5erDP61JCz4oAZKJx4UZNL1VAy6BbwtdElOcPn
	XVdCsz2GoESWpYvAQ1Dvq9hHQo8n/4Nnhfr0guY8bk58omC/Wnqek1Hr4hC/sTJTiHkrG7do9Do1x
	+iMSNHznr/oEgsJ55aXVx+e5FGTV9mQGFyAvc4qTe5ffMST0YhQZsJJi9vVd84LPYODrD9lBelCXh
	03cR+GeZwweKrKzU3+xo+7sqZrkgNVSa+S+JSeW0cgGH7mCY9bpqPfWz+AV5oVwfKzZHTb69Nze0z
	wHK+dws4EtrXVnZiwLZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmBXv-009zwp-DO; Wed, 04 May 2022 09:43:50 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmBII-009qnI-Cw
 for barebox@lists.infradead.org; Wed, 04 May 2022 09:27:39 +0000
Received: by mail-lj1-x233.google.com with SMTP id 16so898684lju.13
 for <barebox@lists.infradead.org>; Wed, 04 May 2022 02:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xheQRhmRM/m/7vqFR3ffTT/LQVoUyr82jJ7sCA3ECLQ=;
 b=QGZ+xSF/yobKZdbsejhqdAwCDcl+v18yOlGWTFuIARZix1CLpNS/UaiyTAKANCmp/L
 B3IT7gUMkh6g9/+9gY9/MN5LQrOwjLEECb5YHCayNAQ4kzQPKO9OOZ0Gm0NGaoch+4O+
 +Zc2y+8m0BI1eM8rMyczZfy2Nzjd2IANfaFEuQYM3ikXX/+8SiiwiCnIeNS+1hi8m5lS
 9234y/PYP8zfZjGAZHulP0dMvkT8I4fnkWxXw1SS3lYSajsJuVO06d35VtCtcAcIf06N
 SuI3+Hawl0SBotqyhv33IMGfhITve1e64TMlVPUERoVuEzh+nKKy+VwI4Zgb8SQTjpRf
 WYaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xheQRhmRM/m/7vqFR3ffTT/LQVoUyr82jJ7sCA3ECLQ=;
 b=RC1YBD9+RuD1w42r5yc/Vb+lo5bQZXKMLNxfr21SGzuypuRiB7NTGv95MrPuxTa/Wx
 X5DSv4vO8VyaL0PPtBOTObQTu41k/tWXT+gkWBpWmTB5MCk3qxqjEMzKGFimm6Z5sXXt
 4sQtqky7NLb4/xDMfPytw7clk2NeZP44CFrt88tNq84VGAuapGSxUF2SYnPooZ68zAia
 dcMIcFSmRXA/WhI+U4S1pPX4WJ0LF3trl3smO31htXnZUmzwCPYTns957bd1i37f1Jwe
 Xp1+76nW2RNlGPtRddfHqboPZg0GvJAYa6VO7CXZhESRwkADkv0XFVo2a8Qw8trrNEby
 BN8g==
X-Gm-Message-State: AOAM531uIwLM/UfymybTkmd1jNoowNx02pTAiD6vXVMcS6SttjuecQBW
 VZBn+Kl371jrD2RanBXwY7FrNnMsO4xetwvH
X-Google-Smtp-Source: ABdhPJw+vvT9LtShFZODqCjGtYw/m7+G+n08gVPMTpdbIozvMTl8ik++zkNTcmveU2L9fcj6iep7fg==
X-Received: by 2002:a2e:5149:0:b0:24f:1a3b:b774 with SMTP id
 b9-20020a2e5149000000b0024f1a3bb774mr12140596lje.279.1651656454129; 
 Wed, 04 May 2022 02:27:34 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
 by smtp.gmail.com with ESMTPSA id
 t25-20020a2e8e79000000b0024f3d1daeb3sm1616993ljk.59.2022.05.04.02.27.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 May 2022 02:27:33 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  4 May 2022 12:25:50 +0300
Message-Id: <20220504092553.27961-13-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220504092553.27961-1-denorl2009@gmail.com>
References: <20220504092553.27961-1-denorl2009@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_022738_548673_4E5C60A6 
X-CRM114-Status: UNSURE (   8.49  )
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
Subject: [PATCH 13/16] ata: ahci: add missing capability in ahci_print_info()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/ata/ahci.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 23085ebe09..2d5adcfca9 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -532,6 +532,7 @@ void ahci_print_info(struct ahci_device *ahci)
 	       "%s%s%s%s%s%s\n",
 	       cap & HOST_CAP_64 ? "64bit " : "",
 	       cap & HOST_CAP_NCQ ? "ncq " : "",
+	       cap & HOST_CAP_SNTF ? "sntf " : "",
 	       cap & HOST_CAP_SMPS ? "ilck " : "",
 	       cap & HOST_CAP_SSS ? "stag " : "",
 	       cap & HOST_CAP_ALPM ? "pm " : "",
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

