Delivery-date: Fri, 10 Feb 2023 15:48:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQUhh-00381m-99
	for lore@lore.pengutronix.de; Fri, 10 Feb 2023 15:48:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQUhe-0006Cv-Ik
	for lore@pengutronix.de; Fri, 10 Feb 2023 15:48:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wnR/SUtvyMvVe0RbCnSSo+dmjcPOna3Y+iN396MDTK0=; b=t6HENZ7TZiZr+x
	SzSfp4XfFaWe4p1vdA1EEJuEPER0XklP1r8YdaWo+OdrlNC7Lp7TfWsHIwQPPwTN8YNaJ8AeyElfN
	mw9Atlc6CXJs7VGNoFOCC2pgQ24olKoYnfqziIKgcas1l+EodNvynkHCJUNzkz2AL6hozUi0DdQ5x
	8TMwdygp4lRRRMAHK/aUR9PhU6MlMW2IFsubTXHZ9gMLFwjk0u/FssaO3bqJr8C+cLhxMNB0Cqb2R
	4IzlghBroHl/ixM/UbfKME5ojDghtw8S1eraVOy5fu64UdsP8Ge1tNIt3VjIpHJ1jaZFu1iWaOzKU
	droljb93YpzwTKELheBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQUgy-0066DP-Gi; Fri, 10 Feb 2023 14:48:00 +0000
Received: from mail-qt1-x829.google.com ([2607:f8b0:4864:20::829])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQUgt-0066C4-Ps
	for barebox@lists.infradead.org; Fri, 10 Feb 2023 14:47:57 +0000
Received: by mail-qt1-x829.google.com with SMTP id 5so5921154qtp.9
        for <barebox@lists.infradead.org>; Fri, 10 Feb 2023 06:47:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wnR/SUtvyMvVe0RbCnSSo+dmjcPOna3Y+iN396MDTK0=;
        b=mdlpuJFAFOLs/3+4Xlscd7yxLhnNrhF6AlfeobbeBgOjvn6T6eeHK7lAfuXM/fX1f2
         w9J/786lUjXZgxzL2HbNxzD283P3RrfeRM/4kZQCgPVmjojFP/BiwM8kP/HAs70yeDB7
         XrWdRPt7+hy/pnte7wLm+SEMAqWs5WdWXueg7aJ6O67/qc/pRMEAHFj61td5+oYplgHf
         xBDGZPfIf1S2wvnE09hQdragwLI2qAKP64I8O5FhXfhSHqqxSrTjWXWpWQ5uE3HgPm/p
         j8hwVMsIbOuRDAMJ9OEHrfSBNY9ghSR0hJwMgy9YNo86Mmc0r/CrjAUkakw+IORKcBnj
         w2tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wnR/SUtvyMvVe0RbCnSSo+dmjcPOna3Y+iN396MDTK0=;
        b=HaBISt4/4ZA4tGjJ8nYUm1xuth25FZsqjd3b0Z6BvUgu1tDmqreQn7c4IqhoGkdzD5
         Pswzyqw4CZXutF0087sRgMYXTisRhysaXL1pSsgFRyzwOK226o76mAJWBGaFs8/0zrBY
         lKCbOvcJULSQ9znS4AEUSLRdpnQpOvBgDTls94/rgstqC7JRYMxb38hdTVTqduVR/CLN
         luRp9nF/xZFFTILP1p1eHlnJ8hVBL9E9Mki39IpShvx4is9QYlBxjG43SddA+JbOoLV6
         p5lp1TZLEN6UAqQ1x/A2ZNdAGGKLXH5VpR90REyY6nt9OWzYFUWJgsXjr1Ktej/6yidZ
         ZbCQ==
X-Gm-Message-State: AO0yUKUkClb6b+f4Sk7bGrK08K2HasDT5Jk9HqlQfRuZIeKhtZVeF69T
	/1kC6YtUArCEEAJvkf/vCITKde9zyXKXcMbeSvg=
X-Google-Smtp-Source: AK7set//s7F0ZDoSaUuk5ledQo6hXFCxRR5g0q04hkwv6FuofZhdlp8t+RcuEXXhlZwj6ULzv5ZmUQ==
X-Received: by 2002:a05:622a:64b:b0:3b8:1f33:ab57 with SMTP id a11-20020a05622a064b00b003b81f33ab57mr24736758qtb.59.1676040473036;
        Fri, 10 Feb 2023 06:47:53 -0800 (PST)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id u63-20020a379242000000b00731c30ac2e8sm3661703qkd.74.2023.02.10.06.47.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Feb 2023 06:47:52 -0800 (PST)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Fri, 10 Feb 2023 17:47:42 +0300
Message-Id: <20230210144745.915720-2-denorl2009@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230210144745.915720-1-denorl2009@gmail.com>
References: <20230210144745.915720-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_064755_853355_46FFAD45 
X-CRM114-Status: GOOD (  13.00  )
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
Subject: [PATCH 1/4] MIPS: dma: fix nullptr handling in dma_free_coherent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

It is not an error to pass a null pointer to free() and as such it seems
that dma_free_coherent() should be able to handle this situation too.
Currently, if CONFIG_MMU option is enabled, we would convert this null
pointer into a pointer to the beginning of CKSEG0 memory segment before
passing it to free(), actually trying to deallocate stuff.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/include/asm/dma-mapping.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/include/asm/dma-mapping.h b/arch/mips/include/asm/dma-mapping.h
index 8e6ea08168..9f6ec03e3b 100644
--- a/arch/mips/include/asm/dma-mapping.h
+++ b/arch/mips/include/asm/dma-mapping.h
@@ -31,7 +31,7 @@ static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 static inline void dma_free_coherent(void *vaddr, dma_addr_t dma_handle,
 				     size_t size)
 {
-	if (IS_ENABLED(CONFIG_MMU))
+	if (IS_ENABLED(CONFIG_MMU) && vaddr)
 		free((void *)CKSEG0ADDR(vaddr));
 	else
 		free(vaddr);
-- 
2.30.2



