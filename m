Delivery-date: Wed, 26 May 2021 08:49:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llnMS-0004Uj-50
	for lore@lore.pengutronix.de; Wed, 26 May 2021 08:49:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llnMR-00079e-64
	for lore@pengutronix.de; Wed, 26 May 2021 08:49:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G2rBp1Q4KSXwot73mf9JCdCNqUXLkp/hFIPLmTwTzU8=; b=Af9I9nZPoLl5FK
	JYQKsWPF9IQCCvErwN0ADIh4VYwLbE7YdkzifmJozF9JFSkdGSkcVlDFjsi6wqawq8p5nmWyicCcR
	+RdKphpJZNmGJCubAKS03IgLWPhYlhbNIQCpocyauzOwqNCaz+20D/ThQmZn6MH2aHhwl6OCgOao0
	sfz7dgkouZ49JCgNwil8+dBxAAU68m1E6VTu5z2pJaoXpY/O/0h2dGMPArkD0bdJQVntQvijrPHDK
	PNUEfBPe6LwXoa2B2jH0sm+cKyz6xIp5wbnuuVSKFPHfwNNs2A6Tfr/AyJ7s2Ehm9n20jfmeHOx1/
	JgUcpiVb2DoPRou3FdiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llnL4-00Bk3F-7O; Wed, 26 May 2021 06:48:22 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llnKy-00BjzJ-2N
 for barebox@lists.infradead.org; Wed, 26 May 2021 06:48:17 +0000
Received: by mail-pg1-x52f.google.com with SMTP id 27so137488pgy.3
 for <barebox@lists.infradead.org>; Tue, 25 May 2021 23:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w4T4TjwRGI7Zb4VqcuDme+Bgil83UwGv2gQ1N9/7grg=;
 b=o45EjnHSfZlntuULKeIXtkAWwpUrT+cFgSQuZ3kyzjnNblZ3TELqp3H5vK0SBWFzZt
 H+bZNkb6A9MzirQ/khFsdlWoMqgDqQFUTUBSDy8zIaY/uLJ2Ae2qAEP92eDPh7etQZwf
 RpFeqYflIU0IW1B3OB4XInvurB/4Agk4UC6cptc8bnzz0oIJe50MyoytU4E+5cALa0d2
 yGgRzqD5pEm2FgTDBeGTktdzY5OBtn1lwQGpBgCgZgteTbE/R06kcLmoNgrJlKnmlVnG
 A72If575lTopJ7zSovBcUVYNubp8UDE1yoo8AVYvb54wUSla0/p0RYqe/ASB4/E/KbRY
 2+0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w4T4TjwRGI7Zb4VqcuDme+Bgil83UwGv2gQ1N9/7grg=;
 b=BqlFqlpsyBeWnSCBo4YAhpIfEhg8W936QtdPFboXY1eRewcbtarvdojMovspQHzamy
 QCuQHOtkQVEZakKhCDOblK8cw7IqkiWDNQnKFEfp8xt1rRDdiO6aR/fHou00ApSDcrGt
 rEPz9Pb9IqkKY1GOS5GFz9LWh0P2W2gPdawA7bOoEbdgreocV0ZelHDydfiBL9nH2xxE
 ruTjY/yzbhnzi+Jh1zkkwHf0clN4sikPnWDIMsftExPUSA6JI+uhmmDBu2GeflFU/4VG
 VqtkDIobkxlr5kAspg6mGYjmxhIZNqnHDOCg9tl4V2HpE8Nk/PngAxKekJhhrePFO03h
 4Hcw==
X-Gm-Message-State: AOAM532NWulFwIqplconjBMwbS1XOK5yS+8TS7VE0XnD+z+DQeJAIEsx
 TBBHb53qsa6WDhwTZlrbMsb+bPJksIS4tw==
X-Google-Smtp-Source: ABdhPJxYAyXLjB1Ad+Wq0ILLfcsEwp/wfAd2IF6LzglU8nWWJWRA6vd3AWqH8RLxjeZ8TWyuXz0p8g==
X-Received: by 2002:a05:6a00:c86:b029:2e9:3041:162f with SMTP id
 a6-20020a056a000c86b02902e93041162fmr25895pfv.78.1622011690165; 
 Tue, 25 May 2021 23:48:10 -0700 (PDT)
Received: from zen.local (97-113-152-155.tukw.qwest.net. [97.113.152.155])
 by smtp.gmail.com with ESMTPSA id 63sm15070449pfz.26.2021.05.25.23.48.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 May 2021 23:48:09 -0700 (PDT)
From: Trent Piepho <tpiepho@gmail.com>
X-Google-Original-From: Trent Piepho <trent.piepho@igorinstitute.com>
To: barebox@lists.infradead.org
Cc: Trent Piepho <tpiepho@gmail.com>
Date: Tue, 25 May 2021 23:48:05 -0700
Message-Id: <20210526064805.367434-1-trent.piepho@igorinstitute.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_234816_150895_C99184D4 
X-CRM114-Status: GOOD (  12.21  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] mtd: nand: Add help text for i.MX NAND controllers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Trent Piepho <tpiepho@gmail.com>

There are two different NAND drivers, used for different chips in the
i.MX range.  It's quite confusing as to which to use.  Add some help
text to clarify.

Signed-off-by: Trent Piepho <tpiepho@gmail.com>
---
 drivers/mtd/nand/Kconfig | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 7c9326089..9dd6851f3 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -32,14 +32,25 @@ config NAND_ALLOW_ERASE_BAD
 
 config NAND_IMX
 	bool
-	prompt "i.MX NAND driver"
+	prompt "i.MX NAND driver aka 'mxc'"
 	depends on ARCH_IMX
+	help
+	  Support for NAND flash on Freescale/NXP i.MX devices.	 This is for the
+	  "MXC" series:	 i.MX21/25/27/31/35/51/53.  It is not for the "MXS"
+	  series i.MX processors (23 & 28), or i.MX6 and later, which use the
+	  NAND controller from the MSX processors.  See the i.MX 'mxs' driver
+	  for those chips.
 
 config NAND_MXS
 	bool
 	select STMP_DEVICE
-	prompt "i.MX23/28/6 NAND driver"
+	prompt "i.MX23/28 & 6+ NAND driver aka 'mxs'"
 	depends on MXS_APBH_DMA
+	help
+	  Support for NAND flash on Freescale/NXP i.MX devices.	 This is for the
+	  "MXS" series: i.MX23/28 and all i.MX6 and later chips.  It is not for
+	  the "MXC" series of i.MX processors in the i.MX 21 to 53 range.  See
+	  the i.MX "msc" driver for those chips.
 
 config NAND_OMAP_GPMC
 	tristate "NAND Flash Support for GPMC based OMAP platforms"
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

