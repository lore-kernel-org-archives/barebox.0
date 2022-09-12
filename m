Delivery-date: Mon, 12 Sep 2022 10:47:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXf67-00226O-Q5
	for lore@lore.pengutronix.de; Mon, 12 Sep 2022 10:47:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXf66-0005vk-I0
	for lore@pengutronix.de; Mon, 12 Sep 2022 10:47:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yeGZBgFoc54gaQ2UyxvKviJ2mMvcJkIGBuVqg6CtfRc=; b=0IWVDZzd89qrg7
	DApvgjCKpoBODEthBXxzNWp5Sod4VU/iYtP0ZK/B5NZmwNMSsWXJ80ukmvzQyiACoiJ8WfszaeFbp
	FDoTUxS/FwHBH4a/j7LO0agDf4VlblXUvDrptlzevfv3Rjr/YuvJn348X9EF1ptmfG8UqPrY4YbN5
	VsJcm1NYgQs1GmqlRkQNcEhSPClPdxbDhW2Bb3snuffP6o/YyjT2pgWWZi0U729Sw9TM5RTnkt+X5
	Ki6zx4Novv2dVIAGAZwfuJuu8fSG5s+BSbJMy741dd3wa5oRL916gkNL7LAcbikrPtL3cdvEEDFWo
	Y6xE8ovBuWEyHQrtZSBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXf4S-007vAc-M2; Mon, 12 Sep 2022 08:45:37 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXf3X-007ugg-Nf
	for barebox@lists.infradead.org; Mon, 12 Sep 2022 08:44:45 +0000
Received: by mail-lf1-x130.google.com with SMTP id z25so13682865lfr.2
        for <barebox@lists.infradead.org>; Mon, 12 Sep 2022 01:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=yeGZBgFoc54gaQ2UyxvKviJ2mMvcJkIGBuVqg6CtfRc=;
        b=d+ZmD1aEJkAq6s+ZlWVaiaZd16jaATyy25QPNQdZ8X+VC3hZKIQ24zF6YWQz7XE5sM
         BSgtEtEzEi3YREZ+9QTjzlYRQBi7pBOwAUcXPp+io0NNU8K5joHBsbOIzn8WOjQEX/x3
         E6ak4+TTBqXfmjLOybb14WrhX6h9B1yWbzQytPEH6vzuco3uyHO8lOK8LpiONUlEmpax
         apdv1IY/sxHvHLPbBCcxtBtMgKXcEsBLXCP7BrqNMHYgxjQI/sBbJbeNMwSKFhsLBLEi
         dLfwC7E0QCZRxx5+Y31nlmiQjiLk0torhhOp53yGFeBZKfr3pab4V4TqOFCmCM5IcaCn
         qT8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=yeGZBgFoc54gaQ2UyxvKviJ2mMvcJkIGBuVqg6CtfRc=;
        b=p7zsJYXZejpIb0Q2pZ99BhJDaK/FW8kVTQuK4oenaee9OErJYUqB0rON/uzGWb/Jyt
         Ah+nUL496BDc/kuTNjGVTGGFjhLJHjGlbqleCLj5DhbsBGu62/vVIEooMS4tKm1CFsNy
         4YwcqG0GO5dJ/tkeJrwbLNaKx435t20z90jVjQxaV5qV+xJhhCRu9g1H0gMUW/h8wfNv
         sXpbCCJyh9NUh7kJVV2mpyAujyDQfcPiTFMYSOm5PwjYWH/OkLCUZKkwrMUW9ChHL8eb
         winXoKbOhrg7x9PzwA7crKaIUp7u1saXmmgGK3B3jzMJ2zgK9Ar5mQT0lUqOaYu1JGtw
         93dA==
X-Gm-Message-State: ACgBeo3Dm2+FFIbWH9BeDvfd3DqS7IEKloUbyQdZMYqIhQEoX3mBGSx2
	mNXh52PrBNb3oP5641terJvZV6ptQA8=
X-Google-Smtp-Source: AA6agR4z9ieeFOygeM72M+21/1acIlynfoVHLrLFcmVrQkcCpRSk9fHNzRJ2hvtDdgI/jk1k5Htocw==
X-Received: by 2002:a05:6512:3f90:b0:48a:826d:f727 with SMTP id x16-20020a0565123f9000b0048a826df727mr7949501lfa.281.1662972274876;
        Mon, 12 Sep 2022 01:44:34 -0700 (PDT)
Received: from localhost.localdomain (109-252-10-171.nat.spd-mgts.ru. [109.252.10.171])
        by smtp.gmail.com with ESMTPSA id n17-20020a05651203f100b0049a4862966fsm555472lfq.146.2022.09.12.01.44.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Sep 2022 01:44:34 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Mon, 12 Sep 2022 11:44:25 +0300
Message-Id: <20220912084430.84451-3-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220912084430.84451-1-antonynpavlov@gmail.com>
References: <20220912084430.84451-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_014441_034959_EE55DED2 
X-CRM114-Status: UNSURE (   9.75  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/7] Documentation: Altera SOCFPGA FPGA Manager: fix sphinx error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

sphinx error:

  Documentation/devicetree/bindings/firmware/altr,socfpga-fpga-mgr.rst:10:
   ERROR: Unexpected indentation.

Insert necessary whitespaces and empty lines to form correct
nested lists structure.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 .../devicetree/bindings/firmware/altr,socfpga-fpga-mgr.rst  | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/firmware/altr,socfpga-fpga-mgr.rst b/Documentation/devicetree/bindings/firmware/altr,socfpga-fpga-mgr.rst
index 9f7de6b9858..478e8e6fc44 100644
--- a/Documentation/devicetree/bindings/firmware/altr,socfpga-fpga-mgr.rst
+++ b/Documentation/devicetree/bindings/firmware/altr,socfpga-fpga-mgr.rst
@@ -5,10 +5,12 @@ This binding defines the FPGA Manager on Altera SOCFPGAs. This is used to upload
 the firmware to the FPGA part of the SoC.
 
 Required properties:
+
 - ``compatible``: shall be ``"altr,socfpga-fpga-mgr"``
 - ``reg``: Must contain 2 register ranges:
-	1. The control address space of the FPGA manager.
-	2. The configuration data address space where the firmware data is written to.
+
+  1. The control address space of the FPGA manager.
+  2. The configuration data address space where the firmware data is written to.
 
 Example:
 
-- 
2.37.2



