Delivery-date: Thu, 24 Aug 2023 17:41:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZCSj-007Uui-Gx
	for lore@lore.pengutronix.de; Thu, 24 Aug 2023 17:41:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZCSg-0008Jv-U0
	for lore@pengutronix.de; Thu, 24 Aug 2023 17:41:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wM15nM+l1xYxiGvgENuS8KHOp8eeVRxli+K4wYSjW+U=; b=H0sTCokGLXc9UIYiD/WGz+FHN9
	TzyJpc3jfWw8ZUE7nKlRgXlyp4MEgoYa4l7qWYiFdgFAyqDbDW/mZdtxCXVLYejtIyJj34J94trHC
	VP18ANm/zY/LAT5edD/Nv/IxjmpOHRvJZf4fgjyLxMqmNViHcYWpm/9Bh3NCiBZ9Nle67fb38oeGQ
	JybJp3PQLZBKW/Dlr6g36AkRNH69HUMX3EohXdUBeemhctMDs3oGV82RCBgn7N9e9Ob8yStvtqdyc
	nPv1GF7wT2kHircQ257zJMZBwPk16hLjRV9jNsBwgTboi+weecBzUnw88EPB0eMHAJ0pmG6qZQZPD
	HRqu2tOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZCRE-003O7i-0G;
	Thu, 24 Aug 2023 15:40:00 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZCRA-003O75-0v
	for barebox@lists.infradead.org;
	Thu, 24 Aug 2023 15:39:58 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4fe8c16c1b4so10638413e87.2
        for <barebox@lists.infradead.org>; Thu, 24 Aug 2023 08:39:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692891592; x=1693496392;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wM15nM+l1xYxiGvgENuS8KHOp8eeVRxli+K4wYSjW+U=;
        b=IIrcsqcZffx5YTOtD6WNj1Py+53XfbZlcvMscfWgZfjMjdjb5LixYYKL0wOwgTMTxh
         Y4r01EYeBHWa9gXPXqXYXxg3jCXR0yBcED9VEvr60LHPqrwFiFECcXtD6GiA8dpEdqRG
         OIWvTg+ha0lu1W4VY32nA1vNfrN41sulMMVkX/eL/4IFIR8FoYbCRGkvnBTa1ABbp6OB
         fkqqsrgC2yA7vyayskegQXh83VzJOA/4+U1cB7NDXyuk3Gw9WuHkglflTStVLHw0NJT0
         smQeuAcbNVnrPDUG1VAliM5hwTwtHqH7ME4y5ThF8OOGirvIp9GSH9jNmwbEnAxlNeLp
         avqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692891592; x=1693496392;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wM15nM+l1xYxiGvgENuS8KHOp8eeVRxli+K4wYSjW+U=;
        b=Hh8w2WzZXujCViWMeC8siCIl6ndON4sRIAesBi/BHjezN8FqbvuugPUYO6lefKrab1
         6+u7W4e6PJoFjp4B5qomr/31en+sRKJnHogKhjjgfJiX5CtDCpsjizr0PC8K31xR/9/V
         MfzyaWMAzZfNUvtE2FEtkvRYC2A3vns8xX0HpsdiCTN3NpWVX01CsG52w3DUNisiM+hw
         0biuov+LEca12vZYy/kTnZC+8dkLklD35fVUrxRvKIvHRriiPVnI02UG9KdG3IcYJNDu
         eIrmLWX6AD1GqLThfiYhlCkvLIPPKQLf8LOVFAXF3RQAVzdhT8W/S8UvRNLh58olCcQd
         zIqQ==
X-Gm-Message-State: AOJu0YxUvrUp1nmO8vS2MF7zLwk/WD4h0VTPeNHx7cquDkWsRgxf1mbi
	M9cpf43O9d9JIsd2ytp350FcZc3zTZ/uCg==
X-Google-Smtp-Source: AGHT+IFCURP/M2imOMTEOR/ZE/jKHU4t2+berV/MAWaNnmmG80CtrcQXeC0sm0UT/wSJEiAzgL8TAQ==
X-Received: by 2002:a2e:8717:0:b0:2bc:c11c:4471 with SMTP id m23-20020a2e8717000000b002bcc11c4471mr9795111lji.21.1692891591362;
        Thu, 24 Aug 2023 08:39:51 -0700 (PDT)
Received: from localhost.localdomain ([185.119.0.88])
        by smtp.gmail.com with ESMTPSA id x9-20020a05651c104900b002b6cd89a3fcsm3815829ljm.118.2023.08.24.08.39.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Aug 2023 08:39:50 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 24 Aug 2023 18:39:32 +0300
Message-Id: <20230824153933.817192-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_083956_345778_B3105AD3 
X-CRM114-Status: UNSURE (   8.67  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] imx: Fix Kconfig dependency
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

WARNING: unmet direct dependencies detected for IMX_OCOTP
Depends on [n]: NVMEM [=n] && (ARCH_IMX6 [=n] || ARCH_VF610 [=n] || ARCH_IMX8M[=y] || ARCH_IMX7 [=n]) && OFDEVICE [=y]
Selected by [y]:
- IMX8M_FEATCTRL [=y] && ARCH_IMX8M [=y]

WARNING: unmet direct dependencies detected for IMX_OCOTP
Depends on [n]: NVMEM [=n] && (ARCH_IMX6 [=n] || ARCH_VF610 [=n] || ARCH_IMX8M[=y] || ARCH_IMX7 [=n]) && OFDEVICE [=y]
Selected by [y]:
- IMX8M_FEATCTRL [=y] && ARCH_IMX8M [=y]

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/soc/imx/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig
index 71f72eb480..57f5577ace 100644
--- a/drivers/soc/imx/Kconfig
+++ b/drivers/soc/imx/Kconfig
@@ -12,6 +12,7 @@ config IMX8M_FEATCTRL
 	depends on ARCH_IMX8M
 	select FEATURE_CONTROLLER
 	select IMX_OCOTP
+	select NVMEM
 	default y
 	help
 	  This driver disables device tree nodes that are not applicable
-- 
2.38.2



