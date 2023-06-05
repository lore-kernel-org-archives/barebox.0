Delivery-date: Mon, 05 Jun 2023 22:28:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoP-00CCTd-Pr
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 22:28:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoM-00011W-M1
	for lore@pengutronix.de; Mon, 05 Jun 2023 22:28:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kI/x1LkjB7SP9Y/5JbvYWFGp5b5guKVhOfCCDIBaqU0=; b=l4qE6kzyLUWFvd
	9VuMIIVBMCXwldD3zEBDw3du4V7oNblWLur0FUdM+RoJw7h0XK41QlsDEx4+6BJd+IAqea7n9s4Pc
	IlfXR/zE27vIG0JzCleygJ8BjCU+i4Swi1PZ0dFqByqN1rGUCJjo0RCR/ScBCl6g7R00V1fpJFu6R
	OvS2EkSvV+2Vou/I+IR0vJCTJA7MdmGeAU3EiX5Ex7z6+V03ja0813XsFpbUllyqxpBuzZnnYJk1w
	ZXUeIfDuHXI4n9xRhU20tFH2tyLqZK7ckmKFG/jW0Gv19sqZd3+cWtjFg2N3+tlU9f05QMjRvzLFA
	Cwej2POqHHFkcGFgwBgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6GnC-00GhEf-0z;
	Mon, 05 Jun 2023 20:27:06 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Gn7-00Gh8i-1V
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 20:27:03 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2b1b3836392so43897051fa.0
        for <barebox@lists.infradead.org>; Mon, 05 Jun 2023 13:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685996818; x=1688588818;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kI/x1LkjB7SP9Y/5JbvYWFGp5b5guKVhOfCCDIBaqU0=;
        b=hlVEziRbdr8eSXrTfC7JCRUE013uXWHdvPOu2JLnJEpg/v9sSNNnHgub5RKuC18lSt
         NsEr8rfOUs0vfHUzduTbJl/lzAw7pzkf8NW1cQVq+wTDYEdkdm2XVV8i4lQX+hSk519+
         6kT7Ru0aVIl7e8JaK4LOZfSJFNKocOlE0v9ARndOWlb+ZniLqn3TYkKedB0p+8rOfJCO
         Vwh3pnyg0mpCcRS2IIEe2NOVtfwjmgE1hBwIJIgj/gRh7+bDJYqjHTg/TThGEPamyxim
         FhBRmqych6kNG/sbi3aCtI/VyDqNJeHf31XNjBmdp2cs0L0yP6dDYWUP4iC857VmXQl/
         dufA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685996818; x=1688588818;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kI/x1LkjB7SP9Y/5JbvYWFGp5b5guKVhOfCCDIBaqU0=;
        b=WPxzambmA2zHirop1EDAXdhJud1ahAi4XY+ksLlH+EAqQX1W+sFXysdbrIejyEhU0u
         H+Ip1XicnKlHnjOsy6SaRXw2jpqosCGOAHZglU8wViVlwiVPJC5NBhz0caEcmex4bg0X
         VqonOzjWbkmpv4GQ9REmFKyyEVCW2bpoVGQ28VOGXuxJYr+OXgXdyWggTNKxH0HOvcbM
         5rp+T47sCyhfg3Gbp4OQpLMkOb/8OJ0KP+rx22gSgm8hgr+LwhiGvIgksG2oj8ufvliY
         ZakVWl0KJCzNbo3flPZ41CNX4HU0B5Pd7dXImuD3p+QB2og55cwwZb+wfXB+A5a3RvcE
         5xDQ==
X-Gm-Message-State: AC+VfDz0HCAmONCb1wlPPET0kBIBpre6+mdpj8xiZvC3lW70emi7K/Ei
	6+EqPhV3/8HrCZWAGb8hkiD/COp7acivog==
X-Google-Smtp-Source: ACHHUZ5MLyCIok31Ir6Jm6kpNsJa415nGpnpReTFs7nZ4WMbuABk3zOH0sFUo1mdUEc8zLSgvjxl2w==
X-Received: by 2002:a2e:9b94:0:b0:2b1:df76:294a with SMTP id z20-20020a2e9b94000000b002b1df76294amr207778lji.43.1685996817764;
        Mon, 05 Jun 2023 13:26:57 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.216])
        by smtp.gmail.com with ESMTPSA id i18-20020a2e8092000000b002a9f966f4b3sm1587087ljg.26.2023.06.05.13.26.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 13:26:57 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Mon,  5 Jun 2023 23:10:41 +0300
Message-ID: <20230605202634.42175-11-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230605202634.42175-1-denorl2009@gmail.com>
References: <20230605202634.42175-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_132701_526932_038C2772 
X-CRM114-Status: GOOD (  11.13  )
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
Subject: [PATCH 10/17] MIPS: fix *ADDR macro usage warnings on CONFIG_64BIT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fixes "warning: cast from pointer to integer of different size"
messages.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/include/asm/dma.h | 16 +++++++++-------
 arch/mips/include/asm/io.h  |  2 +-
 2 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/arch/mips/include/asm/dma.h b/arch/mips/include/asm/dma.h
index 62d9c7c548..d7570cce71 100644
--- a/arch/mips/include/asm/dma.h
+++ b/arch/mips/include/asm/dma.h
@@ -25,18 +25,20 @@ static inline void *dma_alloc(size_t size)
 #define dma_alloc_coherent dma_alloc_coherent
 static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 {
-	void *ret;
+	void *ptr;
+	unsigned long virt;
 
-	ret = xmemalign(PAGE_SIZE, size);
+	ptr = xmemalign(PAGE_SIZE, size);
+	memset(ptr, 0, size);
 
-	memset(ret, 0, size);
+	virt = (unsigned long)ptr;
 
 	if (dma_handle)
-		*dma_handle = CPHYSADDR(ret);
+		*dma_handle = CPHYSADDR(virt);
 
-	dma_flush_range((unsigned long)ret, (unsigned long)(ret + size));
+	dma_flush_range(virt, virt + size);
 
-	return (void *)CKSEG1ADDR(ret);
+	return (void *)CKSEG1ADDR(virt);
 }
 
 #define dma_free_coherent dma_free_coherent
@@ -44,7 +46,7 @@ static inline void dma_free_coherent(void *vaddr, dma_addr_t dma_handle,
 				     size_t size)
 {
 	if (IS_ENABLED(CONFIG_MMU) && vaddr)
-		free((void *)CKSEG0ADDR(vaddr));
+		free((void *)CKSEG0ADDR((unsigned long)vaddr));
 	else
 		free(vaddr);
 }
diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
index a3acbd7017..9c856c7b15 100644
--- a/arch/mips/include/asm/io.h
+++ b/arch/mips/include/asm/io.h
@@ -30,7 +30,7 @@ void dma_inv_range(unsigned long, unsigned long);
 #define virt_to_phys virt_to_phys
 static inline unsigned long virt_to_phys(const void *address)
 {
-	return (unsigned long)CPHYSADDR(address);
+	return CPHYSADDR((unsigned long)address);
 }
 
 /*
-- 
2.41.0



