Delivery-date: Fri, 10 Jun 2022 07:42:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzXPj-009fJP-Fc
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 07:42:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzXPh-0007JJ-Or
	for lore@pengutronix.de; Fri, 10 Jun 2022 07:42:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7PB4Unsf183i5kkJmK7UwO9Zdmm8C4bnLuq0RPsyCEc=; b=VK1oNLfGBZjkja
	+WPCuKfOUMCBih/9WXZXDnRRhiA9ZwfgC6N45XMJGr2e5Is2GX7nU8V6DrPVeSJvPmTc0c61wsr1s
	ehzKmnfa7HgOMaE2dWTtqPP8dZy5mKOF3wPb/Lo5q9GStogeIZv81HS2t9rvXUOBYwFoXK7ualJyn
	8fMfRS6FRu/C+MtfpGXwn4X9PBvox5RX39pCfPjNkbiDQZBLOnURvQgIwtamKwZjysw+tjqm6eU9v
	z4miNKpvmhw4NGgYD7LJ1s25+LLXBGJ4FJJV38gUk0H1tz0TOqiSQl9o06WqoGgVyXqh0726V+9rI
	pdkubSp5ltvMEvaKGlQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzXOH-005zrT-NK; Fri, 10 Jun 2022 05:41:01 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzXOC-005zpj-UT
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 05:40:58 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 20so1669248lfz.8
        for <barebox@lists.infradead.org>; Thu, 09 Jun 2022 22:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UxE5zNlRQbiz1JimuT3RepCsIcb/xFXcL5bE2diCP3w=;
        b=SRWTh1cW1RiNp5ln7MowimFXkKpZPAv/RGBJvV8H6WX10YJPuQY7jEI1tzuSE/53DJ
         Tl+C5NVscsdEUDDmFccHF4c5JoF7Wbqtk8wSODedd//hoZviYiVAj5MCQX43zP/TR/gM
         2b17+TttfDsyQGnw1odXJtz+HNGbyaCeDEl3N41vktWnmyVwHMTsNajRq3eGbMHGkb+P
         IcXylEqEOtECOhAWD2AfFSVcJFUI/eKhxOWgOSaTtHcQwQG1Fqf8Pv8ACvKvZ7yUj+/w
         cfDAPBf98fRHfA5XzPdB9Mx7fMOMS7ZyRwNNwVVp1uHdTCerCbZJFm9xcRzWsrmJJDLU
         h0qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UxE5zNlRQbiz1JimuT3RepCsIcb/xFXcL5bE2diCP3w=;
        b=2R/iOUW0gPt0K0WwmS+uEP4zbF6/9vSGy+q27mHjrP7Ti5cwOnPH+KIuGQKU2GIECp
         1VTAjQgdzUR3AAeJGCK3+97ZzVYGuhllKkflaCeMFefL3lv1rEn7VuRbqiIHy1+xS6l5
         cLeE8IJTgHyBL+BAJIqIAxoD+Mp0sUQbZYhX+K1A5llL1kPqZgBwHOT2OEzvwPtsjlrh
         aV2hNqFuUFb80x2uRTUMyF+VY+5QK5AmpXGYsAz8zWuYWdfabX9xEhDoWHlItiT5NOaf
         Erjvv0qaszGMVEiF2rxDIDELo4RKfPy+aApGIFIvLdj//B7W8DykKsyDccw119mdhcux
         37fQ==
X-Gm-Message-State: AOAM530VRvVCIggy8BXGSHFRveYVvl+SM06xmPrLtD5zDgHViLIv4W5g
	noGPtNdzMQ9k6keQkEQl0fuCkS8Uy0A=
X-Google-Smtp-Source: ABdhPJzgJwrj9habQgx0WY863OSyhO+7CuabVCOKYLfAon/9D/csFMI8InELZ3lGEGlfz6KGEDS9fg==
X-Received: by 2002:ac2:491a:0:b0:478:f8af:a9f0 with SMTP id n26-20020ac2491a000000b00478f8afa9f0mr26372814lfi.650.1654839654073;
        Thu, 09 Jun 2022 22:40:54 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id v21-20020a2e87d5000000b0024f3d1dae84sm4009770ljj.12.2022.06.09.22.40.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 22:40:53 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 10 Jun 2022 08:40:42 +0300
Message-Id: <20220610054051.4911-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_224057_063129_5EFAE611 
X-CRM114-Status: UNSURE (   6.86  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/8] Misc fixes part II
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Unsorted various fixes for the barebox.

Alexander Shiyan (8):
  ARM: optee-early: Fix 'memcpy' implicit declaration
  ata: ahci: Fix format string
  gui: image_renderer: Fix empty prototype for image_renderer_image()
  ARM: vexpress: Add missing "noreturn" attribute to restart function
  ARM: versatile: Add missing "noreturn" attribute to restart function
  lib: logo: Ignore more generated files
  mtd: nand: orion: Disallow driver compile for ARMv4T
  commands: Add CONSOLE dependency for EDIT command

 arch/arm/lib32/optee-early.c   |  1 +
 arch/arm/mach-versatile/core.c |  2 +-
 arch/arm/mach-vexpress/reset.c |  2 +-
 commands/Kconfig               |  1 +
 drivers/ata/ahci.c             | 10 +++++-----
 drivers/mtd/nand/Kconfig       |  2 +-
 include/gui/image_renderer.h   |  5 ++++-
 lib/logo/.gitignore            | 15 +++++----------
 8 files changed, 19 insertions(+), 19 deletions(-)

-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

