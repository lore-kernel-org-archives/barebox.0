Delivery-date: Thu, 27 May 2021 10:39:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lmBY8-0003kw-Tx
	for lore@lore.pengutronix.de; Thu, 27 May 2021 10:39:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lmBY7-0000ZV-Vu
	for lore@pengutronix.de; Thu, 27 May 2021 10:39:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xHm7o5AjNT7YarRoC8SwKWO6NgI3ekQNiTaNzQynYuo=; b=bAyfDps4XniDgJ
	wZATY5YrOBkACkLqLCXxo4Xgr0XouXOtQXxujC8OOroerxI7GWhbcOLteZZ1dTDqK9Cv4D2WgCvA4
	QgXkkAkj7T4K/GOXmPJNetrULI3q7qu2gxaS1tKAddp6mFS2o0n70FN8/azVW5v/AtnHf5N4Ar3hR
	26DLmsjl+STjDz++5QnJBr+Ck0CniCoD/LW8Fm07Nvnb/g2TBC884dl2pw/A9h9RAxqqQcvuhu70F
	8sV74VQZ8P9zAz3oVgRtwlJmQykYkX2e3wgIJ9A9RCWTkP1zSPzelArs5x9rPDAdJBLA47LJr3QCE
	/3Zrj8yVRBH+3k/0NAMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmBWj-003wR3-EF; Thu, 27 May 2021 08:38:01 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmBWc-003wP4-R6
 for barebox@lists.infradead.org; Thu, 27 May 2021 08:37:56 +0000
Received: by mail-pf1-x42b.google.com with SMTP id q25so49376pfn.1
 for <barebox@lists.infradead.org>; Thu, 27 May 2021 01:37:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TOmaKQEGxpr+xGYx31THWdtMnRqa7bPeNCcSUPogBOk=;
 b=b5Jiut1nORr+R0F9A8xAqsFA+FEier3kn0o4+PWsJuaR+KzV433gae48KEVqVA962y
 QErrG2GQCgHS1W+AXfSJzhJKyY88HMtuchkuBf/dA6Dm9/JDyvNrnX7+knDT5sr/RZs+
 en4Iat10mnLGlKYDqxSYNtKylMyqbbnPeLfKWSGeXEKjvFo3DroEmycUcYJiIjeWZEYJ
 ieITd5bGMr0NqrJunRVSwv4ti6gBAE/JSxBu9xPomYf9nWN/jVej5r3fF0AHpHGyYzty
 dnrfQf3feFfx8tdUUP021lAy1xhy4ap3yc8P08pegqB4eDhyaZzCTCglXrlQF82HNHXw
 fZWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TOmaKQEGxpr+xGYx31THWdtMnRqa7bPeNCcSUPogBOk=;
 b=M/vgyyojcH+JFeE3nm0Jb0vaTfXUCy/qU7RSNtUG5h+JQYtnL2782hlOfkD0rWRmlr
 rqeM32lkeuoqbSJNEo1Go6/2fjaI8SJLnrEwWD9GIXVQ3C1he+4l50+VsE8jPU7lw071
 Dg2s6vX5y2pR+AqmkZzzpYPD+Hwupdw46lVr4zJQlT/CT/+8Fep1dGx1nDGprW0Bl51J
 GnPK+NmwJzGzYSodMXR+SsNDWieLa6/86C8eRAAwlXZL5zdU0W/qAdND1fMk++YZZbHz
 45E2Suh49KnAxQAzHeIIibUUIKZ+oR4H0kuxHt8AfhatQbY5pfcfvkPjyZzGZ6IF65jU
 Of5Q==
X-Gm-Message-State: AOAM530UHri01VPHwDNbqqLfTo3NhinwdMhXBcY1gTslXo7Ivlv9Lwi1
 joITkQ+x8vlFzv9IeHiokZJc3Uhnywry/Q==
X-Google-Smtp-Source: ABdhPJxaBeXHOx/OPs/GiQP7Neu7XSEJRtLoTIlwLgnAfNjwJJ4KgSVjhvWt7yxiC84yGbINQBbwMw==
X-Received: by 2002:a63:ba1b:: with SMTP id k27mr2674276pgf.381.1622104673184; 
 Thu, 27 May 2021 01:37:53 -0700 (PDT)
Received: from zen.local (97-113-152-155.tukw.qwest.net. [97.113.152.155])
 by smtp.gmail.com with ESMTPSA id f3sm1338997pjo.3.2021.05.27.01.37.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 01:37:52 -0700 (PDT)
From: Trent Piepho <tpiepho@gmail.com>
To: barebox@lists.infradead.org
Cc: Trent Piepho <tpiepho@gmail.com>
Date: Thu, 27 May 2021 01:37:41 -0700
Message-Id: <20210527083741.789109-1-tpiepho@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_013754_896825_D65725D0 
X-CRM114-Status: GOOD (  12.12  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] mtd: nand: Add help text for i.MX NAND controllers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There are two different NAND drivers, used for different chips in the
i.MX range.  It's quite confusing as to which to use.  Add some help
text to clarify.

Signed-off-by: Trent Piepho <tpiepho@gmail.com>
---
Changes from V1:
  Add GPMI and NFC names, fix typos.

 drivers/mtd/nand/Kconfig | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 7c9326089..8fb1cedd6 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -32,14 +32,27 @@ config NAND_ALLOW_ERASE_BAD
 
 config NAND_IMX
 	bool
-	prompt "i.MX NAND driver"
+	prompt "i.MX21 to 53 NAND driver aka 'mxc', for NFC"
 	depends on ARCH_IMX
+	help
+	  Support for NAND flash on Freescale/NXP i.MX devices.  This is for the
+	  "MXC" series:  i.MX21/25/27/31/35/51/53.
+
+	  This is not for the "MXS" series i.MX processors (23 & 28), or i.MX6
+	  and later, which use the GPMI NAND controller from the MXS series. 
+	  See the i.MX 'mxs' driver for those chips.
 
 config NAND_MXS
 	bool
 	select STMP_DEVICE
-	prompt "i.MX23/28/6 NAND driver"
+	prompt "i.MX23/28 & 6+ NAND driver aka 'mxs', for GPMI"
 	depends on MXS_APBH_DMA
+	help
+	  Support for NAND flash on Freescale/NXP i.MX devices.	 This is for the
+	  "MXS" series:  i.MX23/28 and all i.MX6 and later SoCs.
+
+	  This is not for the "MXC" series of i.MX processors in the i.MX21 to
+	  i.MX53 range.  See the i.MX "mxc" driver for those chips.
 
 config NAND_OMAP_GPMC
 	tristate "NAND Flash Support for GPMC based OMAP platforms"
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

