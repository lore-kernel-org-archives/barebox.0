Delivery-date: Thu, 03 Aug 2023 15:46:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRYep-0058Td-Jo
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 15:46:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRYen-00033o-Qt
	for lore@pengutronix.de; Thu, 03 Aug 2023 15:46:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BOJORX9+/OFr5Negs87pgN4wKNAEilLDhSEkAwU8TBY=; b=WLAkR60qQGjxvHjlifFcgih6ML
	RtyMXJJ+SxiwNnFoAvSxr0lMk2AsYCNiXGQ/iCtAdUP3lsl8ccRduRb9m+/yp1iUTtD8Bbqq6Hfw6
	nit1IGYw1D/jQdQExOGWO4LP+hrxZV92O2IYOM81SB9r/+H/1LkCNgjEQmJPJSQPUx/fkiyDxux7v
	Pba13BcBTpzphGG9OavoilBsAJ4fwmLdZCWpVFM5LGd5CszjCJPl2aONQtJ9wSQqPGj1bK+NrK15X
	d1zAvyJ7YHyHqi29EaeU0C2nP7QHi6vFDSxgI/kP1TdPuhgqa5u74DY1cPlWwQJxfwbPrs3iaQx17
	nH1/6WMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRYdQ-009BX1-2Z;
	Thu, 03 Aug 2023 13:45:00 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRYYR-0097E4-1z
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 13:39:52 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4fb7dc16ff0so1705833e87.2
        for <barebox@lists.infradead.org>; Thu, 03 Aug 2023 06:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691069986; x=1691674786;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BOJORX9+/OFr5Negs87pgN4wKNAEilLDhSEkAwU8TBY=;
        b=VQ4W9ApnKpKx3NDT16C26Ldwwiz4f44VWPUJNFUswxfUwqqxTi7vOvONWp8VmCQUyf
         c2serXBAU0XmV42VxQ5KwX+TqwQv0b0jC0LQfRID3uCscV5EYduxBTtUMZdJfcR3nc+L
         6ft4bV7xtza2aF4epi7Uj/7A1+gUE8kPlXKPA+k8huEXqaim7foF4UzJ0vfaVOKEHQJr
         uXoERWX3NLpNPk+354xG0irhJZjjbPckjrdL6dDvQIap90FCQuM9a81HK77Za+U9dPfw
         eoyed3DbTuGAij60N/rPS+TkWQdplmEW4DJh3Cq7nMjqMtidy+W2e0n7+dN2H//3oqbl
         KS4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691069986; x=1691674786;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BOJORX9+/OFr5Negs87pgN4wKNAEilLDhSEkAwU8TBY=;
        b=bwBMZayglc69fbEcufgrQfwKTV5EqdEVKFD+uF1lw6pXdnNqJh6iQBhfVCz72geMFv
         bM07EqkxcG3zlfQt2B84VGRAVWjiTYhEc02eLT0TR49qJ7AzxDKzvWqeOVKS4kMZgcMm
         ZjdzFIL32LoQi+OOXtn9GeOt6uwKlIoRc+ObLIGjvxEHKERHYSGSFa+I/GGXlkjhPTjD
         GfeX6Hi3HNP5TGHg5x+egmNtadxtAZTzsfYN4Ad3iULBtbzTjOz7nWPhjwfl6QAbOWq/
         eitm4XeEabiz0W2HDuj46CBqxeLcdF95+GI/B2zO7UUlOwFSsqqkZtxTUJ5zK/Gc1681
         +7Sw==
X-Gm-Message-State: ABy/qLZ/aN78t3B/owWEI/bZj+QG8epubKTrKCqEZ0gYXhP/84KKtFJJ
	AvznYN56Wi9C+GEJGcjNJBZcb+EN3iWP/Q==
X-Google-Smtp-Source: APBJJlHoppl03uhmziZ+spEV/kXLAu96LO2eyvbDkmwL484sgQyfqZ/ZX+KYKsMUcbO/enWKtRs2IA==
X-Received: by 2002:a19:ca45:0:b0:4fe:c6c:ac95 with SMTP id h5-20020a19ca45000000b004fe0c6cac95mr6724850lfj.35.1691069985546;
        Thu, 03 Aug 2023 06:39:45 -0700 (PDT)
Received: from localhost.localdomain ([185.119.0.88])
        by smtp.gmail.com with ESMTPSA id q27-20020ac246fb000000b004f8675548ebsm3371274lfo.20.2023.08.03.06.39.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Aug 2023 06:39:45 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu,  3 Aug 2023 16:39:35 +0300
Message-Id: <20230803133935.90026-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_063951_660654_DB1CF1CD 
X-CRM114-Status: UNSURE (   9.04  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RESEND] mfd: rk808: Add missing RK809 chip ID to poweroff handler
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



