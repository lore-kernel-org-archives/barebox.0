Delivery-date: Thu, 27 Mar 2025 06:39:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txfxJ-004k1U-0F
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 06:39:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txfxI-0003nE-I2
	for lore@pengutronix.de; Thu, 27 Mar 2025 06:39:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ScOy1YkHcH0Y4TtNUSBs3VRKnSnchSR9Ct0GsKWMICQ=; b=jbca2GSk4VNsu+q/t4IHHOyo7I
	XujEaywpSKuIOX98niE6eF6t+ZAmFsrR86kTUynY2aTRTGLnZD3RPB8G7CTkn9E9kTnzA9COyi8rK
	Asy/NZ4EnzWearNg1j8j2VWDAIa7JnBJFaYNorzzsmb18rH1TWMql3TwNiC5gsd4QLo/IoL/rAYcD
	ziZ/hAiz38BOWyQr2+NxQibNEZPh4qvwmz4PPcbdzIBQ8H3YZmV6swJ0xsZzPGYbDrJGYA9ovEAZF
	NJMZLskc/a1YNKZ6PRNUYwDWwc1XUiUB8VSEgtc6Sct/E5SuK30Fopetf24RSqqGIPZRH6eFYbvg6
	i2BAPnnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txfwc-0000000AEB8-2HPm;
	Thu, 27 Mar 2025 05:38:22 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txfwa-0000000AEAh-27sM
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 05:38:21 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-5493b5bc6e8so781966e87.2
        for <barebox@lists.infradead.org>; Wed, 26 Mar 2025 22:38:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743053898; x=1743658698; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ScOy1YkHcH0Y4TtNUSBs3VRKnSnchSR9Ct0GsKWMICQ=;
        b=PsoZRYRLoHPnaVrWoGRbPs2NzKZU8b2mXlspms0mJX2TBpnyp+dFeugv73NtuSgjuk
         0dbHyzVEWj9VU8j4iYhxGa5IKgKYtqDwdmUVB2AwbwZyttmHB4XVn6ka0fZSpUllOg6J
         5ge6KodNUxqaoFY7phl/8lEOEE4F6eoCXyhne4lnYvG6/jQ1e4Z6njOeNRJDgDm9KlP+
         2xVKcJUa3G/wAzFCM6RuCpsRD6NPcU4heupLEXpzY0tUPDH/ZrcROK1elpIMCqDMsCKg
         E3AFc69eMAztzAXVhTMqIMd9IhzszmV/iVHCTGMKgzUJ0labXrhzHeig3mSci5lHP2+e
         Ealg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743053898; x=1743658698;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ScOy1YkHcH0Y4TtNUSBs3VRKnSnchSR9Ct0GsKWMICQ=;
        b=Vg1xsz0Z+5NsKoFel8FxEv3z4Qqaq2lUS/xfyisza5rkT8MBqWOz7IPZtzpcvhUJSX
         zSesbjVVbQcUF3IbAlteoAdnJVa9wmBqtNdZ1ESPFltUt+Xm0OHMeNLyYSyVYhKebblB
         7oVEhR5AWAU6p45iKDDEhEcRD0br9TywoUNUqTb02jACW4Yjn655+7QBADEZZWgLlRCX
         /wLoIe7NY4Jug2awRo5lQ90cR8XxBt4D87V37GK1DZ0VYq/2psd+BH4bu31sGKSBBts4
         JWIq4pgP3AEMCzoYcdAYFRk8FZEuyZMKdN/6iKBlDh+o7iuWV29uKdsmdrwJ4VvXVe5L
         gRpw==
X-Gm-Message-State: AOJu0Yzbmdmc+qUz/FoNiiHBGdU7yJ00daKISNsoxuY4/GohyI95SAc4
	bQWeGKC/icAfFmIBvg/aC9ueLkA6aDO6zU7vBA5ATmAM8Y2K70VhyO/LIw==
X-Gm-Gg: ASbGncu+Ip8JsfuEfgOrRsw2+VrFtcBVeBKd60h4pFz9nOYy6pkIh7cHm4gyIoUY9iq
	P5tv3RCLb2kxSVUrsALGdc4m8xbnfIrRMgizHWMh5JBdbMknCAktQlUo+FqzUQCwMfJuz2+kmLb
	rQ3YprMIfLMY6PF/acN/U8XLGIxXHRfxkgy+S5KXA9hrZ44UGr6EBQvhtdGL9cnaSUFZ5pfWfnX
	9TARt+I24rtPM0gOlOKOaJukaVlNaAyT2d4Uo9+4fmcttBghORT8XiR+29/NJB2OBseOvMRbta+
	5d6sz56ZC7/ZX+W3AcHDoE9bARr9NZmgv7Wu97X6Hy1TVuDaPgCyAV9oc6C+M7fCOXY=
X-Google-Smtp-Source: AGHT+IH7hp0MO7QrOX0sBpk495cgeI6DWNcNwFxWOSsysPje78RJwh2Hxf7yBz+982w55ocORDUQ/Q==
X-Received: by 2002:a05:6512:3d0b:b0:549:735f:f0f6 with SMTP id 2adb3069b0e04-54b01271d0fmr748398e87.50.1743053897844;
        Wed, 26 Mar 2025 22:38:17 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad64806a1sm1958904e87.100.2025.03.26.22.38.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Mar 2025 22:38:17 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 27 Mar 2025 08:38:01 +0300
Message-Id: <20250327053801.52356-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20250327053801.52356-1-eagle.alexander923@gmail.com>
References: <20250327053801.52356-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_223820_545486_15ECCDC0 
X-CRM114-Status: GOOD (  10.24  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] reset: Fix name of exported symbol
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/reset/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/reset/core.c b/drivers/reset/core.c
index 2431a9374a..3571fe8aae 100644
--- a/drivers/reset/core.c
+++ b/drivers/reset/core.c
@@ -392,7 +392,7 @@ struct reset_control *__reset_control_get(struct device *dev, const char *id, bo
 
 	return ERR_CAST(rstc);
 }
-EXPORT_SYMBOL_GPL(reset_control_get);
+EXPORT_SYMBOL_GPL(__reset_control_get);
 
 /**
  * reset_control_put - free the reset controller
-- 
2.39.1



