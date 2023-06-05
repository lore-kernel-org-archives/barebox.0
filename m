Delivery-date: Mon, 05 Jun 2023 22:28:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoS-00CCTu-2y
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 22:28:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoM-00010M-2V
	for lore@pengutronix.de; Mon, 05 Jun 2023 22:28:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aAVzo3cVlNzpwtcu79QsQwW0U+r8kEb13YjLC/NUruc=; b=hxXYMZESdz6mr9
	ZdXdcKiPS7HKoIZwSs40k5RFr3W6oZYiq+uyqXoNAGwziuwbk00Gp6R7LR60IyapUo+fZMOdjW+Nf
	/dnrpaoocBrA84DcbMa3Vt6kSuuxyGbHh2mfoxj53iSgazIc7RILXWYVLj/k4tfS1d++ePL0QUB2J
	geCLpHFVAdDK3EOaYiFC/Jnd3PPVZo5N0ziol9ksfmAVlBqAHP1OYbRAL83zFbUcK2M/RSFsYnFUI
	7NGblQ/y0K+rLXfcXruq+D6SWaQh9wGHdl3f7y5Vm7i5NJiOCVo+mHty2fSdRPRRnKgXDG5+oS8Z9
	q1Q0JPyw/0qEHqduJLVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Gn3-00Gh7a-0C;
	Mon, 05 Jun 2023 20:26:57 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Gmx-00Gh4m-37
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 20:26:54 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2b1ba50e50bso33957151fa.1
        for <barebox@lists.infradead.org>; Mon, 05 Jun 2023 13:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685996809; x=1688588809;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aAVzo3cVlNzpwtcu79QsQwW0U+r8kEb13YjLC/NUruc=;
        b=QF0fL9I011wOa4XqvFotjGjX4/7zWN+hwEkdpPEhq/wc9/stExjue/v1+LjgrukLrg
         mT568jv5VBU9dUvQvFqtNfcqLDaaStDGFf0Nx2u0gmnKEQ9AfQutMRzY2pImpCRo6HU6
         wpAFASdY7bbd+y04ijfQe8LIJLtRPPrWVFxqR6dE4rG95RYKhJRk1KE7Yxqico01VMYb
         4UUeaQz7N86oQmnlp1hi69GvkcXyQ+awz40d7WVD+XMvO3CfGIWtoOs4TqkoR5xmnOEk
         HHc/5iklHOXu0URPwsj8lc/PbAyw8SXS1Qe57aBhhXhk+wXAwaIUoVbWjvl0fY2O7DiN
         dqVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685996809; x=1688588809;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aAVzo3cVlNzpwtcu79QsQwW0U+r8kEb13YjLC/NUruc=;
        b=XgoDs1louZExM7Y503YHlV0tyqXfmqmyTmZtGjPIsjDJtDviXW3Wml4miVrImT37Oy
         IKEpGc1aDwLyWFadPAjCjT62N9gWql+uNC2mMDUEgFURvceldVJSYDtId8tqYYIOKuB2
         3ASdGkSL3C5izDS8L519ytD1jeSOGVkfHvK1UlQb63xVBTb/gxLWr1E/amfFzUBoinJn
         YVRGRbAmzufVh8N3ZSiPSbekYMtc6NYsZUpM1WXA32oxfKW8mRbowclFNmMc8iEBNnzP
         q7RPmvFOSibJGI0MMEHB8SL97aj1xcvWUVR4xcgnxQ8lSoZ0Fvz0DPP7CI9++il3ATHA
         qDOQ==
X-Gm-Message-State: AC+VfDzlbNxwX/VqR+w0QLU8FPJgiOoBVl8Hu/+mxs2TT8xf93M7NpM6
	tv7mKerjQcoII49ZnV+BQT0ZYzFkWNxbDA==
X-Google-Smtp-Source: ACHHUZ64OpFR6L2M4QJGjZVnvvoL7VWLO+7754TtjVECKUIekXzV0aTDIekG6XZGeO3Kp25WTSg1WA==
X-Received: by 2002:a05:651c:223:b0:2ad:8c4c:4459 with SMTP id z3-20020a05651c022300b002ad8c4c4459mr150266ljn.50.1685996808920;
        Mon, 05 Jun 2023 13:26:48 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.216])
        by smtp.gmail.com with ESMTPSA id i18-20020a2e8092000000b002a9f966f4b3sm1587087ljg.26.2023.06.05.13.26.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 13:26:48 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Mon,  5 Jun 2023 23:10:33 +0300
Message-ID: <20230605202634.42175-3-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230605202634.42175-1-denorl2009@gmail.com>
References: <20230605202634.42175-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_132652_010724_C04E8A00 
X-CRM114-Status: GOOD (  12.14  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/17] MIPS: malta: use CKSEG instead of KSEG macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

KSEG macro is not available when compiling with CONFIG_64BIT enabled, so
use CKSEG instead.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/boards/qemu-malta/lowlevel.S | 4 ++--
 arch/mips/mach-malta/pci.c             | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/mips/boards/qemu-malta/lowlevel.S b/arch/mips/boards/qemu-malta/lowlevel.S
index 98821e0426..541d62fc2a 100644
--- a/arch/mips/boards/qemu-malta/lowlevel.S
+++ b/arch/mips/boards/qemu-malta/lowlevel.S
@@ -56,14 +56,14 @@ __start:
 	 */
 
 	/* move GT64120 registers to 0x1be00000 */
-	li	t1, KSEG1ADDR(GT_DEF_BASE)
+	li	t1, CKSEG1ADDR(GT_DEF_BASE)
 	li	t0, GT_LD(MIPS_GT_BASE)
 	sw	t0, GT_ISD_OFS(t1)
 
 	/*
 	 * setup MEM-to-PCI0 mapping
 	 */
-	li	t1, KSEG1ADDR(MIPS_GT_BASE)
+	li	t1, CKSEG1ADDR(MIPS_GT_BASE)
 
 	/* setup PCI0 io window */
 	li	t0, GT_LD(0x18000000)
diff --git a/arch/mips/mach-malta/pci.c b/arch/mips/mach-malta/pci.c
index 113b94fe23..0ab239f509 100644
--- a/arch/mips/mach-malta/pci.c
+++ b/arch/mips/mach-malta/pci.c
@@ -136,7 +136,7 @@ static int gt64xxx_pci0_pcibios_write(struct pci_bus *bus, unsigned int devfn,
 static resource_size_t gt64xxx_res_start(struct pci_bus *bus,
 					 resource_size_t res_addr)
 {
-	return KSEG0ADDR(res_addr);
+	return CKSEG0ADDR(res_addr);
 }
 
 struct pci_ops gt64xxx_pci0_ops = {
-- 
2.41.0



