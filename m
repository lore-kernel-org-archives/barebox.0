Delivery-date: Tue, 25 Jul 2023 07:08:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHL-008zwf-Kn
	for lore@lore.pengutronix.de; Tue, 25 Jul 2023 07:08:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHI-0004KF-FE
	for lore@pengutronix.de; Tue, 25 Jul 2023 07:08:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ceFVrzyeWFZ2HLCm4WHlb7r2OVE3muivKuotJsLFZRU=; b=s38zsj4dEnZz/n
	7ig/hAptmWeK5F0uDygDMqVpJEIJafEIyila2L/HlE2M9Ac2aLBVHGxEybkaIgob9baHlhV4BHNvg
	wfl7AXSZrGf+pnaFJyrmtf9mO2LWmjj312II5fPt3YSJDROX/6JR9Kcan3bxu4GV8cEPwte4AtI2E
	Kp4Jlsrc9Y7ztbY52jAHaqZADHnrYbxKkRoepm6ltbp+SKrxeRLu/wtX4U21FmnS/fae+R1ONNX5w
	4CMon+5qoTTyRx3Eu417ehcDM0IHk+PGk9I5eHUmM47uY071EBiWnhGdXbqqxKtesylZjBEsSLNwO
	g6NSUo+EODcxtcRVxPiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAG5-006FSj-11;
	Tue, 25 Jul 2023 05:06:53 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAFy-006FLB-1c
	for barebox@lists.infradead.org;
	Tue, 25 Jul 2023 05:06:48 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-51e619bcbf9so6706676a12.3
        for <barebox@lists.infradead.org>; Mon, 24 Jul 2023 22:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690261605; x=1690866405;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ceFVrzyeWFZ2HLCm4WHlb7r2OVE3muivKuotJsLFZRU=;
        b=coMqV/K9pnn8HvgmwwTJvxT9z6gpWqEwHvMAluZR5GfzjQWJaDHbSCyD+t3MSDluO3
         gAbchvda6MOCh8asd7Vn9klhcdvjogFBAG0iG1pPUXgAEZ2G66gkZqb/j3PXAWjtLk7d
         S42ZXKbOt2zFBCvthFNmGeYu+Wa4WOpXY7N4GXytjAfTnMq7CjKXltWsIhQVcadFawWI
         b7i4qbLFmTLkTS7R57d9phW1CQvHp4p/wWwTiC8rK/qVYb3WTGAnlwi7tWbwvn2/Phxw
         QVZVKqnsIlF86WvcN7NL6vAm+wzebceG1QsLVdepjRY6dscxa3nYwPfDp6WMZQt03jSx
         YJow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690261605; x=1690866405;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ceFVrzyeWFZ2HLCm4WHlb7r2OVE3muivKuotJsLFZRU=;
        b=D+tTH4mq6eeF1XG0ycu2hlXu8YvKB2QwHvFjoHnG1LZLy2W1CpgsDOUYMt8l4H3ZWt
         /rK2++VovXROYl5Cy+IYFwAeFNOSGIZbOJM0BlaUIyM2vcrrLOaoeS44IQYHE3uwe5Vi
         z7gPnjAiLhHbIPYUi5uLi8OWR2NIJFoBM6nWkzZq6yM9wYk7yr61MNPudGoqwl0SJ5bw
         /Vg/Rn0G0mSllMtyV/iT34TTVE1rLGwkM3M4gm2KqRK5v76S2GrrGycORqU29nn8BtzO
         Rj/ce1fLc8GyO4zvWbzRrMSa3fqkfhmwCeL1wFAPkpURATpyjueUYCnHjh7tGognL/nI
         DQjA==
X-Gm-Message-State: ABy/qLbb742cTszd2TPVhmocMqjZnnDBv3+R5JTlWKGgMY5uHASqfkI9
	71XogLFFPW0adLW7tjuNr0t5OJzL53vbhtpZvE32Rw==
X-Google-Smtp-Source: APBJJlG4SLXZvUC0WIjvtI8W7fUKV7lCv+bTvjRdmuAg9FiVNJkzcg0Mx/dh3NHtGHbjNHL/dr3IsQ==
X-Received: by 2002:a50:ed94:0:b0:522:1e50:1e3e with SMTP id h20-20020a50ed94000000b005221e501e3emr6135442edr.12.1690261604751;
        Mon, 24 Jul 2023 22:06:44 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.211])
        by smtp.gmail.com with ESMTPSA id k17-20020a05640212d100b0052237dfa82fsm1730505edx.64.2023.07.24.22.06.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 22:06:44 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 Jul 2023 08:05:14 +0300
Message-ID: <20230725050618.3451-14-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725050618.3451-1-denorl2009@gmail.com>
References: <20230725050618.3451-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_220646_551205_821C3DE5 
X-CRM114-Status: UNSURE (   9.35  )
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
Subject: [PATCH 13/21] MIPS: pbl: do enable 64-bit addressing in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

It seems more reasonable to do that in PBL code that initializes all the
other appropriate CP0 register bits. This also makes a corresponding
call in barebox proper entry code redundant, paving the way to its
removal.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/include/asm/pbl_macros.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/include/asm/pbl_macros.h b/arch/mips/include/asm/pbl_macros.h
index cc81e06a64..61e12cd004 100644
--- a/arch/mips/include/asm/pbl_macros.h
+++ b/arch/mips/include/asm/pbl_macros.h
@@ -175,6 +175,7 @@
 	.set	noreorder
 	mips_disable_interrupts
 	mips_disable_watchpoints
+	mips64_enable_64bit_addressing
 	.set	pop
 	.endm
 
-- 
2.41.0



