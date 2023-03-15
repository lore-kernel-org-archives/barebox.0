Delivery-date: Wed, 15 Mar 2023 10:01:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcN0t-001K5D-LJ
	for lore@lore.pengutronix.de; Wed, 15 Mar 2023 10:01:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcN0t-0001j4-7b
	for lore@pengutronix.de; Wed, 15 Mar 2023 10:01:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PZufW0m95Dxr4OzCPdBi0+1h60fLOGlphtSEffkRGow=; b=wO448ZQ5+VuJ9I
	9Ya7jbn7NOMSWRAEBZQysaN59I8uBn9fcOu6WCBTdojGfeJWfeo2W6zhUPHw+epAZDcq+ABfI5MqW
	TQFR3LkGxPFgSfJ64amc2OVvY4cFVkqTkOyejzynb8hvZag+OhvGaF3bw20ppXQgq+Tyv6WuuSw2I
	SZQo7j50n2749bOZ+/FsLUJJGaiY3lqxW/qisrRP6hRHgozAEAJfHoe4LBvx04PtheHWsVVKuxPn0
	4HBC9wD6uetamFEfcVKj9owBXHMNuBs8p5N5yEk1C0nqa8Z7xHJmGsvPdM1SlVA+QMm9GremqkLFl
	LsOsuCzqmlaljaPwt4ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcMzV-00CqQD-14;
	Wed, 15 Mar 2023 09:00:13 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcMzR-00CqMn-04
	for barebox@lists.infradead.org;
	Wed, 15 Mar 2023 09:00:10 +0000
Received: by mail-lf1-x12c.google.com with SMTP id d36so23350927lfv.8
        for <barebox@lists.infradead.org>; Wed, 15 Mar 2023 02:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678870803;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PZufW0m95Dxr4OzCPdBi0+1h60fLOGlphtSEffkRGow=;
        b=GJbzrDzNO3PyD2a0FgtXpZTNjnO6ocRxfNoptDvSgARP1VjKuUaSfqy6M5InMYIzvH
         EjEFAl8scu8i/jik9zfCP0170z5IvskRrKiN+mL18ykyWheTwcu/zG75GLu56JN4S4XO
         opc0Fc8PX07dKy4qLYQyJ+TIrrg0ODYSJRYpDUXgEJLlgnczBLx5sN/kX+xtwmCCkTzP
         GRvYsjngAaA425mxlPnJJmwwNOxDlUyVVcEHa023u0Ub59YeQ5ebn0MOzz8c9J6ctEDz
         n9SicQfmYT4iNv1UcIZas2MlAAfHERhioF0gh0150VOddgs8YOlGOjoPj5ODgLeqqfsS
         XJrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678870803;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PZufW0m95Dxr4OzCPdBi0+1h60fLOGlphtSEffkRGow=;
        b=0tewMt4XiWOkYwVNi/dRRAsXZMZBCLi/g4Fky/xew5hMXO7hlJareyYf4+UW1sCkqq
         sBDuDoxwaAIsHW2ASKeeMhPXCRITj/D+iGrzG7bAj4efP9d7+dDpuWziA2AcubVf95gU
         0fnnKLQKEw7HhHN7rVN9pdgL5WqoHiZFXZvpH3G/pixNTWoA0TfFaubtxkl9TaV9K5rN
         gPPB+7PLU1SMXLICON12ucIntYXH+jRO6/BhmYmWkl/bGisxzVfda7mnhJc5uCIOf8Oa
         Nx2/kGzNeZ3XbBGeBAC40N4ccdt+6mEysP9vb5KK+cPu4SC41RAULRpxl+jYcJhYHPkY
         Z0uQ==
X-Gm-Message-State: AO0yUKUZN1vs+S5bGF66pc+Rhz1A82Uddpvg6RGiX578xu3r1KLhfxGC
	ZRbNnkgjFhTXQ4AO/iTImPJX9bFcAWuMC06i
X-Google-Smtp-Source: AK7set+lm97AT8ntd2rJ9BOjllZ3GkOxlIUN17pRzYp0aN6NojMI/IxXNIle66NX1/gVot7/1LyR6w==
X-Received: by 2002:ac2:44a3:0:b0:4e8:5627:e527 with SMTP id c3-20020ac244a3000000b004e85627e527mr1014255lfm.3.1678870803262;
        Wed, 15 Mar 2023 02:00:03 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id t10-20020a19ad0a000000b004e7a0f67490sm737300lfc.110.2023.03.15.02.00.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Mar 2023 02:00:02 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed, 15 Mar 2023 11:59:53 +0300
Message-Id: <20230315085953.4094660-4-denorl2009@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230315085953.4094660-1-denorl2009@gmail.com>
References: <20230315085953.4094660-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_020009_250201_A0A37F8B 
X-CRM114-Status: UNSURE (   9.54  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] MIPS: bootm: remove unnecessary phys/virt conversions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

They are not doing anything there - we should already have proper
virtual addresses represented by those pointers.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/lib/bootm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/mips/lib/bootm.c b/arch/mips/lib/bootm.c
index 69ce9b3904..19d82ec375 100644
--- a/arch/mips/lib/bootm.c
+++ b/arch/mips/lib/bootm.c
@@ -62,7 +62,7 @@ static int do_bootm_elf(struct image_data *data)
 	}
 
 	pr_info("Starting application at 0x%08lx, dts 0x%08lx...\n",
-		phys_to_virt(data->os_address), data->of_root_node);
+		data->os_address, data->of_root_node);
 
 	if (data->dryrun)
 		goto bootm_free_fdt;
@@ -75,7 +75,7 @@ static int do_bootm_elf(struct image_data *data)
 
 	entry = (void *) (unsigned long) data->os_address;
 
-	entry(-2, phys_to_virt((unsigned long)fdt));
+	entry(-2, fdt);
 
 	pr_err("ELF application terminated\n");
 	ret = -EINVAL;
-- 
2.30.2



