Delivery-date: Thu, 10 Mar 2022 14:43:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nSJ4H-00101o-8r
	for lore@lore.pengutronix.de; Thu, 10 Mar 2022 14:43:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nSJ4G-0008Ck-3P
	for lore@pengutronix.de; Thu, 10 Mar 2022 14:43:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s3OI5N5Xz2N3RLwsKYK9aKHQAsjnJQbVDwEaZh8wQ40=; b=cLjypb8wI8G1ap
	VGx8D2jn2hQkubAbf5D2Teea0SNbYNCh5nUMMVxxyCPMmc7qBrPiW59tI4Gwrb7MFWg3/F1Wzz6wP
	d9iXTqFjZ1SDm1WmbzrWCmQeN3nwyfAokaa02FEY3VIu4yMVnqJUYWToSuTBtAkPfZ9+xxxiB6Jvg
	vdkr8prxNXzsFGrdZJfbFrxkT6C+MHfmDQAa3xH7zoqfK3f0ldHxeyrjtfLSp/7j8ywNs9B2Y1t2G
	R4fm0qBP6hfO2+r/rmO3sGe2QFeodqwPCYGb5Y4axDyP5qZvKff/OoQ8i88fyetkMz29KONjgv2Sh
	8ORpAA4BDODwVWF0IuVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSJ2g-00CxsM-UE; Thu, 10 Mar 2022 13:41:23 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSJ2c-00Cxrv-4D
 for barebox@lists.infradead.org; Thu, 10 Mar 2022 13:41:19 +0000
Received: by mail-lf1-x136.google.com with SMTP id h14so9448619lfk.11
 for <barebox@lists.infradead.org>; Thu, 10 Mar 2022 05:41:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QxQBVPfYNP+B3EK2tI/SO0unwGZZ0sTRDIndH+kEuu4=;
 b=F2KaQ6njYGdOiUbnU0KIoG/drOZU9UFk7Ohq5pngeHwsi60edyN3CXN1TCPU2emp+R
 0Dx3oZpDXkoaTfRm+pQaAV1QvBFVZkfbk7Zclq6JEB4jrkcC32YTbhRAkInNonG2W90I
 Rd5SOzaaGMUsZITs+FLCueOMVdo30scjgYoWa3MpJPN1/LKUT7Ci6jl70g4zXD4o7DRE
 F/E2/4Zqe0vKT3CmaM4KdIX6aa26C4H9ajLA8QhLf26b3mn72g6ZctF7l4kaGbNIX03T
 0/Sjt6w1tFQy9iEPL6d4cCmzhYsECF2BsQK/vbhq53wGYQo1WJrkgyjqg+LWOTnS8CvE
 dkuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QxQBVPfYNP+B3EK2tI/SO0unwGZZ0sTRDIndH+kEuu4=;
 b=K189mCLUbiJtuENHLM8V6lWEno3wYpaueMfSTgkLGs7yF5F6dc7hQ+GFuSZ2+MAm/S
 7ZQK20cCiRP4SQmIZsHpv4zw39t1NORFuh67550/FlnQ3FZVBB5ZcDfwqSHaRFktkOVM
 xdEjJv+vSfJ3c/lhZSGSIWeNiD7YcRQMuPssFNPTEgr4jko48FhCp6zVLM2U8eZXguaf
 RxBB1jEXG+1QvrnN7NJORAw8W4eWulmzIVjO1Gyr6Ut4n95ZvEkGZdw5t+rfpmjYjQDM
 61jEIRaVCelx0TKdWw6QvhH+bESBEvmqUPcectngF0atxlQuVq72KUWJR5MD/QjolDgg
 Nw7g==
X-Gm-Message-State: AOAM530fn15v7OzVRviUkV9PRqHUJaQ992/XH3TZvKhBqBQh5EYZr2ny
 p5wdGnL2Vjv+DZgb7jFor8g4hL0eNGM1sQ==
X-Google-Smtp-Source: ABdhPJxntra30fOFfKgGBNxiVyRbK6KA0OBG5fuKwh+5iVsqDrSgdO/p6dkrr64G9k+/Jm2tt+a8ow==
X-Received: by 2002:ac2:5dea:0:b0:448:54f5:1250 with SMTP id
 z10-20020ac25dea000000b0044854f51250mr2990017lfq.547.1646919675172; 
 Thu, 10 Mar 2022 05:41:15 -0800 (PST)
Received: from localhost.localdomain ([193.232.173.109])
 by smtp.gmail.com with ESMTPSA id
 m10-20020a056512014a00b004482247f0ecsm982702lfo.252.2022.03.10.05.41.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 05:41:14 -0800 (PST)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Thu, 10 Mar 2022 16:40:39 +0300
Message-Id: <20220310134040.30631-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220310_054118_193806_6909DB1E 
X-CRM114-Status: GOOD (  12.92  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/1] MIPS: fix optimised memset returning garbage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There is currently a bug in memset implementation from
arch/mips/lib/memset.S that is used when MIPS_OPTIMIZED_STRING_FUNCTIONS
option is enabled. It stems from a missing '.set noreorder' directive
before the first branch. This results in an assembler stuffing a 'nop'
instruction in a delay slot instead of an instruction writing the return
value into v0 register that was supposed to go there. That leads to an
error that appears when reading memory from SPI Flash and that was
mentioned here:
http://lists.infradead.org/pipermail/barebox/2021-June/036557.html.

There are a few ways of fixing this bug. The directive '.set noreorder'
that shows up a bit later in code could be moved up and placed right
before the memset label (as it was originally in Linux codebase - see
a583158c9ce822c96a718fbf877cec1e5f9ad75d). Or, rather, the move and the
branch instruction could be swapped, thus allowing the assembler to
properly place move in delay slot (as it is done in Linux now - see
68dec269ee29c3abfd09596fbee7e40d875a6ab3) - that is what is done in
patch.

Denis Orlov (1):
  MIPS: fix optimised memset returning garbage

 arch/mips/lib/memset.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

