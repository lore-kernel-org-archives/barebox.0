Delivery-date: Tue, 25 Jul 2023 07:08:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHJ-008zsz-4v
	for lore@lore.pengutronix.de; Tue, 25 Jul 2023 07:08:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHD-0004FQ-Tq
	for lore@pengutronix.de; Tue, 25 Jul 2023 07:08:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6MNSGffAbCHIeGDuA+Z2TB+tkKC4GL5MO+s8ukpbwPo=; b=itIsge1T8HzQU2
	PCHelIJCirnY35feBpegYxtybgTZBVhIPjUFURCaA0fs+grxBcVqgkAl2cZLwavIl2Nd/BKk2hC0w
	HtvGTXbhTsBegbLQDgRtgg2bdLXlS9mQE7WwYRW6RIbaPTs9koTAdpiV2QzdJezhRigvkvlyzXGEK
	b8l5cMY+OEL2qrOdtXOTYolM3lpEuZiMWJCm/bCuj0CwlQupGk9t9SZ2nvZfn+RzdsHPBUbW0l295
	gac0r+GRiOOzC1MUyukTVK7QekAc5i2955feD8b5hBU2YnakrWp9IxTdBVjmuND7x9VT4m5cGdyUm
	GihDvS/hNgYADxBgH5WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAG1-006FOx-2v;
	Tue, 25 Jul 2023 05:06:49 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAFx-006FIy-20
	for barebox@lists.infradead.org;
	Tue, 25 Jul 2023 05:06:47 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-9924ac01f98so873326566b.1
        for <barebox@lists.infradead.org>; Mon, 24 Jul 2023 22:06:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690261601; x=1690866401;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6MNSGffAbCHIeGDuA+Z2TB+tkKC4GL5MO+s8ukpbwPo=;
        b=kUqV8yoJ0McurK6ydZlSYAwitiNIjcGkoH26wi7vl27E9lJzzewR+9eIe9oEtiJmc1
         N7vlCa8DvcKLAn+psxvbpll0ylsMrY4Vypb8j65Y4lrOzWoIVxe+iy1LQSf2zhnBMwUB
         84OmqBBCFtKMDXbE9nhu0rAbLZb/g9EegUOxiEgNFQQvxOdSfEeG7DF0O0COqP0BUEjy
         BwfX60YON6U6Dm0Cy0Shi1I2bwy+Yv5Ezh9pomraVU/YvbdSqjiUiBiy9Wc06jsKBIpv
         3YKQGX7f+y7U0JnPxQvwmWmdcHHZ4JIIZRzYYLOJoaPBTZaFAnj3BbkMN1s7JBXkJCRi
         hbGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690261601; x=1690866401;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6MNSGffAbCHIeGDuA+Z2TB+tkKC4GL5MO+s8ukpbwPo=;
        b=DhrXpIwHLu7PTTfC7WmOf26jsrcdkCKB3d+Y1saLhiwl22+uQAQlue6Z1yWY+R/UNp
         YMNYd5mgOKjhule2WCPg9N82LKGw1sx5S6Ulln+Mq9C83daHVI0jnxFfcMjI0z464R81
         yFOE3oZ6Bhk22fJ9G4U6hcL/m1O+zqZOPOoJA6Vm+WAD+5hFtAEt44v4r83VIi032fOJ
         SPTjyZnEQ4Ms2pwc0mwcuciwpZinQ1zh9yEfUKBlrr/VogyDdMlI9uI1Ev4O6BQjENOv
         a4f/IW30Fe7N7yHt7EtaPWdAtWv61zisfDgx6Q4J3TN1UCg0usOjHRqaF82Se08pnR2V
         MJtg==
X-Gm-Message-State: ABy/qLYxb1OwQQCaqaiMXnAjaIBQgGR0sLKmeQ4mZk/yFC/GOip5+oD3
	iJHr/LaocrCP2BtqS70jsuEX+JzltmZRxiDYKnvtGQ==
X-Google-Smtp-Source: APBJJlHV7M9echZEeWPxR+dUFLlNYfl9IbZaqWISydWmKos9SjgPw9fRY8bTza8BJyJ54NUPcqCr/g==
X-Received: by 2002:a17:906:53:b0:99b:605b:1f49 with SMTP id 19-20020a170906005300b0099b605b1f49mr12156521ejg.36.1690261601440;
        Mon, 24 Jul 2023 22:06:41 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.211])
        by smtp.gmail.com with ESMTPSA id k17-20020a05640212d100b0052237dfa82fsm1730505edx.64.2023.07.24.22.06.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 22:06:40 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 Jul 2023 08:05:11 +0300
Message-ID: <20230725050618.3451-11-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725050618.3451-1-denorl2009@gmail.com>
References: <20230725050618.3451-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_220645_657490_F5CEC536 
X-CRM114-Status: UNSURE (   9.39  )
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
Cc: Denis Orlov <denorl2009@gmail.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH 10/21] MIPS: malta: remove duplicated barebox magic code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use 'mips_barebox_10h' macro instead. Remove the comment about the same
address being reserved for a Board ID as we don't really do anything
about it anyway.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/boards/qemu-malta/lowlevel.S | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/arch/mips/boards/qemu-malta/lowlevel.S b/arch/mips/boards/qemu-malta/lowlevel.S
index 09087ad916..d5d7480e21 100644
--- a/arch/mips/boards/qemu-malta/lowlevel.S
+++ b/arch/mips/boards/qemu-malta/lowlevel.S
@@ -31,17 +31,8 @@
 #define	GT_HD(x)	(GT_CPU_TO_LE32(((x) >> 21) & 0x7f))
 
 ENTRY_FUNCTION(BOARD_PBL_START)
-	b	__start
-	 nop
 
-	/*
-	   On MIPS Technologies boards
-	   0x1fc00010 address is reserved for BoardID
-	*/
-	.org	0x10
-	.asciiz	"barebox"
-
-__start:
+	mips_barebox_10h
 	mips_disable_interrupts
 
 	/* cpu specific setup ... */
-- 
2.41.0



