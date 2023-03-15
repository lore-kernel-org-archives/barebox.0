Delivery-date: Wed, 15 Mar 2023 10:01:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcN0s-001K4j-OJ
	for lore@lore.pengutronix.de; Wed, 15 Mar 2023 10:01:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcN0s-0001iX-AU
	for lore@pengutronix.de; Wed, 15 Mar 2023 10:01:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jw+zkA2YTgP4waL37YzdtUqwhw3XDo5E/KJxGRMgNvY=; b=2gHUCgTxjPEMIA
	KfO0FEqkMBayGVEZZwiQYxMcOfY+i8BHVB4v2cXrEaqxN2UkBFHsqw+3Pl72/VrTBAftI3+t97WYq
	H9gqRN6Xjr243Rvupl4c91OIyNNliMkNSo2DojVDUXJgDJsq1PuS1xLrd9mRZgNJFcSSl2bqrKBO7
	q2fKAbLtoCXOq++rBObyAMocfKiFPZQkhXqYkJfYx0z3iqkL7/GlNaN0ga4lLS7DlcGb02jri2ocE
	wc47YM/7mdwRAyFruuJmqSLn3n8+Bt59ISPLt6aHwY4ILFoq1ApR0e2butor3ZS5M5VAHaTDWPpeg
	VWnDSI7fUQwQs1UnKaJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcMzR-00CqOZ-2V;
	Wed, 15 Mar 2023 09:00:09 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcMzO-00CqMZ-2e
	for barebox@lists.infradead.org;
	Wed, 15 Mar 2023 09:00:07 +0000
Received: by mail-lj1-x231.google.com with SMTP id b10so18681733ljr.0
        for <barebox@lists.infradead.org>; Wed, 15 Mar 2023 02:00:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678870801;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jw+zkA2YTgP4waL37YzdtUqwhw3XDo5E/KJxGRMgNvY=;
        b=L3MrCMc0kFb/g9XYi2R3BJR5g6NDSb3JC/D28c9LDdp6GjcTo0IFBJvqQoO5pFnuWE
         lZ4tWlD7mwBQSakOIThDfU4glTTYSdTnJN3HMjXdl6PUtTlZguVXJcbAt/0QOlzSV0IQ
         I/YFk7ybOFHzpoY87XuGscuX+q1+zpYo9rAHh6qaJgIeq+nk1mRRoTSamNb95bUpd8aC
         TL56SBSrj9JCB03gEteuppRvczpNAaVm/2EoHjE6w7Obuiwbyg0UyJEkafLv04gjJmsl
         AVOxzijKK7pX7rNpck0Zvew7eLTyoxeXbiRXgbIDVOP/hVIWbLynF+R/paZ0l7zsmn9K
         ReJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678870801;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jw+zkA2YTgP4waL37YzdtUqwhw3XDo5E/KJxGRMgNvY=;
        b=pPOVAepgpgic70hgyayF8MoNVA322+Yo4VibBNJnVNmoKzT0Dc7CNPZU+bs9pgFVvr
         GcuTnBiwHGEVbWYoh7JBMWi0DzNiFLH4oogShSuPtMJHILMQe7Le4mxazMf73lLYibYo
         5HcXW9nx9Cp1A17RMhlsTbv2FJwztTJTMw5A5tiREHe144a/L5sGcZD6/X0jgx6NqSvp
         8jA19Di50HnAREPzglsg5ia5yx17UGPWqwXHzhagQ/AozRLNogJV4ieZLdKpAnpdV1oh
         eT0AtFMqORxphIjJYHxF5IquFYkJZkdx3+hRr+wkO2Q41PWn/eH45JCyW7hIeKw0YpSV
         IfTg==
X-Gm-Message-State: AO0yUKVF2ueklOkyqsmhe/vjIhftQXKPy9LkhK3XHB7h3h5nYECK2BHh
	V+cpRCpT7GAhuyGdObU79AZVIlZZbPq0miiE
X-Google-Smtp-Source: AK7set+FkfyMm6grFDVdM5OM0hhf2ytdQY5VnZcISj5mBAJ6ffQPH0PmZj6iirzZgzMttUWaInFFTg==
X-Received: by 2002:a2e:7006:0:b0:298:ade0:40bc with SMTP id l6-20020a2e7006000000b00298ade040bcmr448227ljc.10.1678870801593;
        Wed, 15 Mar 2023 02:00:01 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id t10-20020a19ad0a000000b004e7a0f67490sm737300lfc.110.2023.03.15.02.00.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Mar 2023 02:00:01 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed, 15 Mar 2023 11:59:52 +0300
Message-Id: <20230315085953.4094660-3-denorl2009@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230315085953.4094660-1-denorl2009@gmail.com>
References: <20230315085953.4094660-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_020006_862012_CD86995D 
X-CRM114-Status: GOOD (  10.16  )
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
Subject: [PATCH 2/3] MIPS: bootm: do not leak memory on error in of_overlay_load_firmware()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/lib/bootm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/lib/bootm.c b/arch/mips/lib/bootm.c
index 95e9dc0d7d..69ce9b3904 100644
--- a/arch/mips/lib/bootm.c
+++ b/arch/mips/lib/bootm.c
@@ -69,7 +69,7 @@ static int do_bootm_elf(struct image_data *data)
 
 	ret = of_overlay_load_firmware();
 	if (ret)
-		return ret;
+		goto bootm_free_fdt;
 
 	shutdown_barebox();
 
-- 
2.30.2



