Delivery-date: Tue, 01 Mar 2022 10:18:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOyeW-00EDwf-V7
	for lore@lore.pengutronix.de; Tue, 01 Mar 2022 10:18:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOyeV-0002wV-Ne
	for lore@pengutronix.de; Tue, 01 Mar 2022 10:18:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SdNbMEEv+Q26FzgTCWV5xjA2OoOvGuchwOiQ3Lyip+E=; b=wd+dn4jRVG94Wb
	xj6ABhOT0NLVhcBGCrKFoZzmlc4DiiXqpEdDmMDe+PciODXZpPQSzqalEQdgFfELblhV9UgUQX0RV
	GoW7ugScp71KosleuFABFlqRmVki5RJwNvvzjOkb6rXetxOR6hR2hRAkRiWn1BPNBrfenLULC6eVp
	HbhZvv5cGX9FKx/noPDjX7hP7hKvcgIgHFkMq5HRD3QkT6B1OWz5c08pUpdzCz7n+RGvyUiLXUxLv
	GslrB667hy6b2ysK6ZXOYq1+7VjG3iIaHgqRlTmgZ2vEj/SdoF3PIzKnX0AGfmoM0aKKWLpUOYx9G
	oZnY1p1c21pdOrzx/ifA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOyct-00Fnol-K6; Tue, 01 Mar 2022 09:16:59 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOycp-00Fnn6-IU
 for barebox@lists.infradead.org; Tue, 01 Mar 2022 09:16:56 +0000
Received: by mail-lj1-x22a.google.com with SMTP id r20so21013857ljj.1
 for <barebox@lists.infradead.org>; Tue, 01 Mar 2022 01:16:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jADfaklsdTYNDatM1pl8Cpe+dwcdXFUNGKLHmEw1POg=;
 b=HAXKsNkaY6FmoI/7+K+6QS0vmgvVLE3BxeOtAUudWDbqcrjCvfn5ZW6Q/sO/YSE4gt
 EFiRB0vnk1e6Wn8m9Yr2Ai0FHGCi4vUJZd6VIy+Ejgt2/tA0ja56DXOHF/hjRN/2Cg5o
 OqTb2q4uho4hhNz2ENtV/lsgCIlkM/8ch3ZBp4BjkUbsnEmoTm0Grp4fsNzhBG+3RWA+
 iOBXoDQMcL2GY3dvu6lUTPRP06aA4j6pa1pUPYpE3DfnSlwC5ql1ldf0MyHipF2WKaN9
 /7t9G7sGgkJVtj0ue9pvkDzSNeEY/aqMrjyVjRXT6FXEFVbKuETB6xIakpH+cBQX064f
 xVtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jADfaklsdTYNDatM1pl8Cpe+dwcdXFUNGKLHmEw1POg=;
 b=oBi5pdAqO5gA6pXklXg0y9z9UEmecazjUDqmwk6I6n//w/iRAgnvEQmfatP7wkFq77
 96WHxa3rTWJ4UcqpZUvSOiwP9ykRU6+FfPLwWviXRQ7KfkydmGUV12KjZ+N85+c/8HjI
 f0yhEpfdTsq9a7kqDjIdQaJZemSulmh9HVz1XnFM3yxJffj7JS8GIMr++fLPY1NC5+B7
 c+fzQljzblGG0UyZmhbkEKD0wM+UBCLCV3iezuG2T0rBorO/1WhgXQRz0OCbEIDaRIG+
 xC7CgkFGAO8UYXNP84uZY9Pz+dwZcNAJgCZvALnwL5PDeeJKVFPn7AYztMHYYKpwSype
 srGg==
X-Gm-Message-State: AOAM533/djLVdTZQmHwm9hUHFM49wyV8tiPysrbQhC0t3mVPNd0IeVqV
 rfG0135o/w4YATdIMQLMmU1sWFMhHgiDkIqy
X-Google-Smtp-Source: ABdhPJzYg+d7go2Y3xYzEMk86HoVUlSs1sMQXWrxcviA3cmrBC8/huKfV1ZxNYh+rFOgo9ps44my6w==
X-Received: by 2002:a05:651c:1028:b0:246:468b:dc3d with SMTP id
 w8-20020a05651c102800b00246468bdc3dmr16831246ljm.438.1646126210949; 
 Tue, 01 Mar 2022 01:16:50 -0800 (PST)
Received: from localhost.localdomain ([193.232.173.109])
 by smtp.gmail.com with ESMTPSA id
 t18-20020a2e9d12000000b00244b7b5d9b6sm1868865lji.8.2022.03.01.01.16.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Mar 2022 01:16:50 -0800 (PST)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue,  1 Mar 2022 12:14:22 +0300
Message-Id: <20220301091423.19871-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_011655_632774_F171D1A0 
X-CRM114-Status: UNSURE (   8.93  )
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
Subject: [PATCH 1/2] usb: host: ehci: add GENERIC_PHY dependency to Kconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With GENERIC_PHY disabled, EHCI driver initialization fails in
ehci_probe() as calling phy_optional_get() returns "Function not
implemented" value. So it seems reasonable to make USB_EHCI explicitly
depend on GENERIC_PHY.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/usb/host/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
index d38b4dcac4..cc71b76902 100644
--- a/drivers/usb/host/Kconfig
+++ b/drivers/usb/host/Kconfig
@@ -2,6 +2,7 @@
 config USB_EHCI
 	bool "EHCI driver"
 	depends on HAS_DMA
+	depends on GENERIC_PHY
 
 config USB_EHCI_OMAP
 	depends on ARCH_OMAP3
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

