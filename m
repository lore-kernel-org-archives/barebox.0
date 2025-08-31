Delivery-date: Sun, 31 Aug 2025 05:56:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1usZBJ-006Q5R-2V
	for lore@lore.pengutronix.de;
	Sun, 31 Aug 2025 05:56:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1usZBI-0007YY-LX
	for lore@pengutronix.de; Sun, 31 Aug 2025 05:56:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PkimHYVz59i4G89KCcqYcb/lvcVMf3VIDR8Wpiu50IU=; b=X5wSjfPj043qMn6qLHWdRIn8YF
	cwDbk9MZVG0ei5VM+gt++Eea+7OWULxLCpDLkDwjY7sBXFmyERTX0nniYjipA4ZdvNyPWKdfELYg/
	T5b23Cb6TDFxUrxoGXwx8YJZmKOF0/DMz6jYobO7NMi0p5k/tGVgocV+oLTyT5mHJZQCT348KCysY
	vl7vq+nSncKTMCRcjqPy11j9fjpl81LLEtnjEtLBmIjYVMP8pCbIgvL+O0473Yb9bhcFBWJSZO2So
	GYSBUrhYVasrkPhCg5QZNmCLNAkqn7FvT252PhZOx24ZpIS8n10X3uRbxyDgsk8PV6GZWKLG4jSxV
	R5mu+gJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usZAU-000000092D4-41XK;
	Sun, 31 Aug 2025 03:55:50 +0000
Received: from mail-qt1-x834.google.com ([2607:f8b0:4864:20::834])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usZAS-000000092B9-1uJT
	for barebox@lists.infradead.org;
	Sun, 31 Aug 2025 03:55:49 +0000
Received: by mail-qt1-x834.google.com with SMTP id d75a77b69052e-4b32ce93e30so1363821cf.2
        for <barebox@lists.infradead.org>; Sat, 30 Aug 2025 20:55:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756612547; x=1757217347; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PkimHYVz59i4G89KCcqYcb/lvcVMf3VIDR8Wpiu50IU=;
        b=Gohzz9BGPM3ogcNEHtQ0VKn8mwY7zvx0RwqeVpfyJ0o5kOOiEDzHeykKLEgn0TIm5W
         Jx9gou5tMAihSngsWZvMGjNZ3nnLOT+eckbnOeRAPBy2PlPfvuL8eWhFn1z68E5A6QXv
         VA7EE6zCTGi2R1vs/aTo+ww15rPKXZwCRV7PfG0QVeHbFTUnYcniFCxLDrt0nX5UCgBy
         Y0aZyLaEPyeGGCY+HwOCY1iVzFqY0U4jTvVbafJJats+3gTvaAYGCCy6dHIY7imON7ur
         9eupkrAAHk/xOyZQ7MUitElhct7xKuVlPHKfjLL6Eofc5i/tA7EAUi1W4whTQKpFFUP0
         fbtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756612547; x=1757217347;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PkimHYVz59i4G89KCcqYcb/lvcVMf3VIDR8Wpiu50IU=;
        b=AoMH5tPZRmcD+2bS/+aNNEfeymYRI1RJKKKSfNX+IyAuxnT00EMYNyXeIvctSUSJZ7
         12f1PWF1m09HBf4MJlSVWZRkz5e+z8xyFyWs2uqW3cm9UzJLLIMgNWzWRGinH5yA3GdL
         riN41Y2Bi2rjNPDHVHinBaYWuHAfbtHSMcmRpQzxywdQsPGYEi5mp5Rd/9Q6YDoftYZj
         QAMQb2qEMHAibPiYVpwmWftoEOCPsPFF2q9Ek6/H06R88P6oCVMuHnTZwdC7F0iLv9mu
         dPZByKBqqRjQ/nxoPejWjsdKE+I6cDby3EfXyfGWWIRCccJAyNYdlg5CdpdZrmATM0fz
         2+Ag==
X-Gm-Message-State: AOJu0YzVBh6VrM7FD1YXjSGEJvJaf0tlMRJtDwlVlZNxiRKRIGgUu9LL
	qNdR2T/Q3/AopNYivourGdB0LgV+qkh0/4c9FN6lrX/eWVSPRHV5XoWt
X-Gm-Gg: ASbGncssfMMp/aDohv/32h7aZZhziQBTUWaQtaSrxG44jZVBITAtpCUMdUOIv3BUwvd
	uWWj7KBQzo0BXjf07/1GTiGvCIOYCfRghjq2AiG1AshafqKAB3kBxVsoN2RJRf8gqsTiVkYqT8k
	GOgABdQHGKwaG8CBsSE1n8/ROESnKSmWyvzrUu1NOibEGJTqt6nics43B+ua49aavSi8rrbJCBo
	YE8yJP2nlSX9vsqQRn+2gt22N4a9DBWNeOpoCMmLW3tvkabK/Liaiqbb4p6Th2cYYShht8+kdTr
	jb1TupGUdo/+WH5JK+dJxLZYqUl4NKXuDS+OHmlfhksTy6gwKPqrONmR9+3SKlZ2G9ERXr8ILvD
	WnF7YGA91ThvZqzqojiwiuCv5O884jGc5SPkVBYRlnBIWtNLzSVo33vKIjcB9vT2NkFJQ3fFo74
	3/Typ49ORQ9z7j8q8NnBNxHrlWjDHCX4oNfOHB
X-Google-Smtp-Source: AGHT+IEPPnhexpiSzBjuNP30lk7V73Ft6Foks3Yb7qm+9QG09Qx76CuKuhu4YSSzIQF8GUIu/2izAg==
X-Received: by 2002:a05:622a:190d:b0:4b2:feb5:7740 with SMTP id d75a77b69052e-4b31d8b8cbamr39186511cf.35.1756612547343;
        Sat, 30 Aug 2025 20:55:47 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:10aa:d623:fe15:9cbf])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7fc0f097401sm433366985a.30.2025.08.30.20.55.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 20:55:46 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Sat, 30 Aug 2025 23:55:36 -0400
Message-Id: <20250831035542.1623695-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250830_205548_495102_F0138F70 
X-CRM114-Status: UNSURE (   9.16  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/7] drivers: video: efi-gop: fix null reference pointer.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

fix a null reference pointer on mode variable, that was never initialized,
the mode will be set by the framebuffer subsyetem after initialisation so
it's not necessary to change the resolution here.

Fixes: 6518b21c6c66 ("video: add EFI Graphics Output Protocol support")
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 drivers/video/efi_gop.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/video/efi_gop.c b/drivers/video/efi_gop.c
index f4f58d9271f5..cef8a6816cac 100644
--- a/drivers/video/efi_gop.c
+++ b/drivers/video/efi_gop.c
@@ -169,8 +169,6 @@ static int efi_gop_query(struct efi_gop_priv *priv)
 
 	priv->fb.screen_base = mode->frame_buffer_base;
 	priv->mode = mode->mode;
-	priv->fb.xres = priv->fb.mode->xres;
-	priv->fb.yres = priv->fb.mode->yres;
 
 	return 0;
 }
-- 
2.34.1



