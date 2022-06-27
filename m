Delivery-date: Mon, 27 Jun 2022 12:26:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5lx8-00GGNJ-9g
	for lore@lore.pengutronix.de; Mon, 27 Jun 2022 12:26:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5lxA-0001Hg-4B
	for lore@pengutronix.de; Mon, 27 Jun 2022 12:26:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QoicUI65vtJ4l5/CQmwceZP0krQBX71bUuNUVqHhob8=; b=cSFdhxYtGlslUOZhXT+7AcTpH+
	HqyaPVQ6O7Xa1bZ7GkrtXkIHdJGc57pTdDmBYi4dXUO0rQjcAUs6MfbAe/LSV5wzhmm/h0knCV9WP
	TxAYUbWkmhpxcrOaePVdoxOIA1texIDMPyq8LUiW1CzSvVOcm5C6B602Mtvfja2aitL5ApwBeKj9i
	8jUIN8BxTOzCN74+/80wZrNmkiheTUYsYUqeIKvNHKi0NN47eCqxSknbIudbq7RDgjsMqelqnwzm6
	YVnd8YBYysZN9XWc1Qde2LWRQTNgLaJfULslL1jK9MVihUjEFJHA7FyFreBVr7QZ0Hloqg5cB1+Rs
	GeTYnr6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5lvl-0005fz-1G; Mon, 27 Jun 2022 10:25:21 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5lvc-0005b0-Mu
	for barebox@lists.infradead.org; Mon, 27 Jun 2022 10:25:13 +0000
Received: by mail-lj1-x229.google.com with SMTP id b7so10424575ljr.6
        for <barebox@lists.infradead.org>; Mon, 27 Jun 2022 03:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QoicUI65vtJ4l5/CQmwceZP0krQBX71bUuNUVqHhob8=;
        b=Y9fATvs/zkCcHIC7luD11nYSgZ6Tk++2/ftwViv05kU/8slNDWQeracIGogV84DyW4
         uaACD+aLlIH3WkVjhlsd3SqjRnthdho2eGbYk01RzjBCBuXTlrPymR8IonfgZK2nFBU8
         xj920h5gwPEa6raIs4eQGbBRvB2qku1GA3RXsmV989KBEys1FDHBrZFJTu1meCYKbx+p
         EWME8xO6J3zu04XtrvNg5rZFq8/rXS/jLepfbflR7hca0jHuCOGsKlBWYNDrougzINlh
         Es5aFnPo02PSlMu4ZLBpTSGtZJoS0h54nOqhpe8KK8tQRpsXyjYXlMpotostePx3uSUn
         FG5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QoicUI65vtJ4l5/CQmwceZP0krQBX71bUuNUVqHhob8=;
        b=FrwKaCsadYeXlTYVa5kVwxknMS6dpomNj12yPAA1ZvTBsTO2N5IOdYU0T5L2eJe3M/
         tBvAvD632tJT2M8b7KQSEemVMffjDNdFZlGAMMpmgjj8ay5DSsWtzc3vqg0NnTSGBqtu
         iyO61NXn1IheTiOXlgrQ5tFgRB3b7DufO2hhUjPCGU1Y5PMqs7xN/vqOgu6ytuC2jFyy
         6N2lsBjICto2eoP+1miSLEsW6PIdHz6SLGlJIgGVpL0guQ0BR8nwh1ncPZIIMqzmnP9T
         f8/HXb4+w80JhjDW3tDUhL0rJ4r8HapSlhbqrZzohNffEl056/GIL/2OqOrDZ4stO2lC
         Kbwg==
X-Gm-Message-State: AJIora90/WxNH46kYUNrszMF6gCFfJ2nF8Swf34H9Tr7VCRxzzIN+XJY
	utlvLgxhftS90+NjHnYxmPQSCldWlu0=
X-Google-Smtp-Source: AGRyM1uVK/J/jwFa3CepTWA9nVdTiJ/gTS/+8BYzGpmxbUf1jbgki4ZsF43rCal1NcAGLCWBEZQksw==
X-Received: by 2002:a2e:7801:0:b0:25b:b822:d34e with SMTP id t1-20020a2e7801000000b0025bb822d34emr3791087ljc.506.1656325509026;
        Mon, 27 Jun 2022 03:25:09 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id 7-20020ac25f07000000b0047f5d390926sm1745622lfq.94.2022.06.27.03.25.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 03:25:08 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 27 Jun 2022 13:24:52 +0300
Message-Id: <20220627102500.18427-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220627_032512_811844_D9650A08 
X-CRM114-Status: UNSURE (   6.40  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/8] Misc fixes part III
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Unsorted various fixes for the barebox.

Alexander Shiyan (8):
  ARM: vexpress: Simplify sysctl initialization
  ARM: bcm2835: Drop uneeded headers
  of: Use appropriate header for of_clk_init()
  usb: gadget: Fix Kconfig dependencies
  logo: Fix Kconfig dependencies
  pbl: Fix Kconfig dependencies
  ARM: mxs: Fix Kconfig dependencies
  ARM: boards: ccmx51: Remove unused KConfig option

 arch/arm/mach-bcm283x/core.c |  9 ---------
 arch/arm/mach-imx/Kconfig    |  1 -
 arch/arm/mach-mxs/Kconfig    |  1 +
 arch/arm/mach-vexpress/v2m.c | 13 +------------
 drivers/of/base.c            |  2 +-
 drivers/usb/gadget/Kconfig   |  8 +++++---
 lib/logo/Kconfig             |  1 +
 pbl/Kconfig                  | 24 +++++++++++-------------
 8 files changed, 20 insertions(+), 39 deletions(-)

-- 
2.32.0



