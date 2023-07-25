Delivery-date: Tue, 25 Jul 2023 07:08:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHI-008ztX-O5
	for lore@lore.pengutronix.de; Tue, 25 Jul 2023 07:08:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHF-0004Gx-7L
	for lore@pengutronix.de; Tue, 25 Jul 2023 07:08:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vvCfeCKFkQseY+i3UQIPxPqVNnBCB9jcJxw0ZuAs+IA=; b=J9BhSaGPXAe4sz
	ikq1YdSPTr2XKeaU1unq0gOo9KAg4aPL90sd62RBgBocuWz7m0yuFVbfwLrkvvVYHOPAGhTeojQhu
	9dmzjpA3J5l2lFiDfClLJgYtk+/74MmgSZ+dy1XYi1oBUgtw8CsZ8zYn1yNcSbvh4Vw0pVR0bJ0cl
	Cs7/9fXUn5GCTCFAOX1QRakOTeAgEJfBP5W6OVBXijVZOeCuPCGxudryodDfUwMM7lcyDsj8iEmko
	MYKE0gUgkgD2l6oaN7Ef54DC3wCQerrgCkZcjbJr5j3aZjXHPyWqTMdof/ytrLeAORSVWy532Ib3D
	4OCmYGFunYq3ar2NYENg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAGH-006FkM-1S;
	Tue, 25 Jul 2023 05:07:05 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAGA-006FWC-0A
	for barebox@lists.infradead.org;
	Tue, 25 Jul 2023 05:06:59 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-51bece5d935so7685745a12.1
        for <barebox@lists.infradead.org>; Mon, 24 Jul 2023 22:06:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690261614; x=1690866414;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vvCfeCKFkQseY+i3UQIPxPqVNnBCB9jcJxw0ZuAs+IA=;
        b=MLFeXFFtwmevRZrUVJTb2KYFTNFW/EtWrIMJ1wL6kQ0YC3XeDucLvPXUp0vO9qxEQD
         Mv6kQ1c9ghlGGEcioikkIWe+l588BcjrkF4CHjotgePj46wrXBOy2+Zw/L9SuAPd/oyj
         z1Yg/FaQgIyQxA6zRVogqv5lQIc6VyVdveALSd5TeP4WB+lFNiI4QhzwJVjfKe2MjPQ5
         eD6ivbL2Z5DB7+z7X9cqCzmqsngYH1lh7u8CdrhRvudC3Gzgb1PgJitYS459PeYYtIS8
         OnjYVKO0I3acnClmB/Vo8bf7wL8j5djX3JFEaQyDQRTppOFOpTGJ9XCMM/G/So7VX9uH
         vgdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690261614; x=1690866414;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vvCfeCKFkQseY+i3UQIPxPqVNnBCB9jcJxw0ZuAs+IA=;
        b=AE744Wc7rMQElaHWnljeGk5BVNiG76HBE7AFV2bj/oOgAWo0f6xE89nJ9OmdzulXMN
         C0fiQsWZyWy5KLkPpBO5AVVejsOZPZ8/Gs1dRjTPzoG9bvqSxAUhr8Z6lYk7Ij7pgYlK
         yiKccym0G+eRNxJ2v0BRNZEjOcWg3WhaTs5ewIYhuNIELBqFw3MyGd+r8xP7OMqywKOB
         z55l1Rvvbr90FvuT6f8m0fwxhJl5CD5gaeUgVOaWLezKtUXCU6/Ka8btRhtVlH2CNUx9
         BcZsijWlEB+cNCN08K9muvQbIWastJhlhVMub1bv1Jus8eGtF5+CIVrHzxKfoNj8Dkep
         GlDQ==
X-Gm-Message-State: ABy/qLbbWg76CCfwa9I0SAMDZCl9ya3XyOpANLD1/zuUQ824TnGmv3Ae
	aTM1M49PNDQyNIEV5Rmrr834pdzWPWQbIk2/RUc=
X-Google-Smtp-Source: APBJJlF0W4sycNwD2uf1Ht8M2weiAE/AzzCmtLjCZ8QpO3KyLsVAjkrUXry4bZvTbUZ3CIgCmbJZ5g==
X-Received: by 2002:a05:6402:14c:b0:522:1cec:ca9f with SMTP id s12-20020a056402014c00b005221cecca9fmr7656496edu.19.1690261613780;
        Mon, 24 Jul 2023 22:06:53 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.211])
        by smtp.gmail.com with ESMTPSA id k17-20020a05640212d100b0052237dfa82fsm1730505edx.64.2023.07.24.22.06.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 22:06:53 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 Jul 2023 08:05:22 +0300
Message-ID: <20230725050618.3451-22-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725050618.3451-1-denorl2009@gmail.com>
References: <20230725050618.3451-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_220658_096147_D1F943EA 
X-CRM114-Status: GOOD (  11.34  )
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
Subject: [PATCH 21/21] MIPS: reloc: use IS_ALIGNED macro to check for an alignment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Improves the code readability a tiny little bit.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/lib/reloc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/lib/reloc.c b/arch/mips/lib/reloc.c
index 83b4040d95..a9078aa813 100644
--- a/arch/mips/lib/reloc.c
+++ b/arch/mips/lib/reloc.c
@@ -133,7 +133,7 @@ void __noreturn relocate_code(void *fdt, u32 fdt_size, u32 ram_size)
 	 * space in the Barebox binary & complexity in handling them.
 	 */
 	off = relocaddr - (unsigned long)__image_start;
-	if (off & 0xffff)
+	if (!IS_ALIGNED(off, SZ_64K))
 		panic("Mis-aligned relocation\n");
 
 	/* Copy Barebox to RAM */
-- 
2.41.0



