Delivery-date: Mon, 05 Jun 2023 22:28:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoO-00CCTG-QQ
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 22:28:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoM-00010o-Cx
	for lore@pengutronix.de; Mon, 05 Jun 2023 22:28:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UTFuOaYQbqqM80teOXP3PttSFeHIy7b3bDs3Kr/MEcg=; b=eBra9jrCzMk+xe
	qRbqURWfALs3+hnoNL2UeNFH88/wSNgiCteFw+E5tgmPmMGrfp69Wf9rrxjgs75igva0ZMfBynSx/
	ymKrN23KOeEP1Vkc9P/fbIiH/eiWVIj1fK1eqdjNDe4rvu5D2/4Mk0LGUO/xBKg0fGvJSBCwfNyZ+
	+gNBby/pzlGLFSXYm2F2k0ZBGOunHQPlHcvTr58bM1Rs7iIXwdp0PP9klylnWdS+Ye7M3bUXGSoYv
	iawsn+XIKAeGBIr0LZGac/jyqFKj83fYXPqFxeHZTHbzs4dw54zAnH/rdoUIsLFOF3R3XszWgq2vS
	VKJIBYs3B3xor13mg7ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Gn4-00Gh7z-1A;
	Mon, 05 Jun 2023 20:26:58 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Gn0-00Gh5o-1j
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 20:26:55 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2b1ba018d94so33569951fa.0
        for <barebox@lists.infradead.org>; Mon, 05 Jun 2023 13:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685996812; x=1688588812;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UTFuOaYQbqqM80teOXP3PttSFeHIy7b3bDs3Kr/MEcg=;
        b=BhXaQs5xx90NY/aozpuTCJDtr2plcxTs6ChpdPqyk9XJrusf1r5YKDGiUnplRxbA+3
         EmSpdqYixePHn0WPAO06JBfmHAJot6xtO/DKrgikUypZKURJsGuB+mcOuQiqgLrnHQ8U
         Ilx2q071aciXNVEnYJUkXxgJY+F/jvKEBox9LHSE2v67SvL4cEtIYpnGGW/3GwcLdgMf
         FiOOLnWSUPuguG/P4t86wFf38Cw7Ubp+S6O89PiojhIFQtdxISVlAr8y4pbK/gAF3xCR
         aFyLBkCumfYeMhYlDuTphCtHFonh+s2SvdUNfc2x23YHYx/ZH1xmvvc4lN+84wcZWd39
         CAmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685996812; x=1688588812;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UTFuOaYQbqqM80teOXP3PttSFeHIy7b3bDs3Kr/MEcg=;
        b=Y+20aca8iA1QwlE0NQup2E9/x36I2KdF6Jtu423b+JbQPXSSch03JIKUlTPcrpaVgb
         wm5hUgfNuYCNIbZurKVSZv7nqXN8S1My2DuEYqG6GprCtb/v246acEVLAVjnJq0HwZby
         ke0ia666+nULH4GJUhdmW6BzU6RSMW+OpnW3HicPOcN+M2py6PxczZUS2/Uc0L8NF2sj
         HBaOIRwLLbzXUVqGn97cIse2S1d/ii1PV52510MtlFphRXExKsw91avGU6po04bEJuik
         UOuN7qXYn5j6A8/L2Uye3r30rrusGbTbSUZ/AD7r7VhLoZ+J+YZ1tk22UVfR9d4Xre+R
         JW6A==
X-Gm-Message-State: AC+VfDwAjPuaHIggOMwdFyj1mI6nRuStywMC0ThA45c3z0rL0j55TH2x
	6lnJr5S3TnVowpUUQbojkqyROis0vj/DCA==
X-Google-Smtp-Source: ACHHUZ5RK2V6P1EOO68AOCklMOjQGfR8q3f8J6dLL8pHfI/sQoF/xQt4llpyhBz0hUi0QEWAOAfnag==
X-Received: by 2002:a2e:9bc7:0:b0:2b1:bfbb:9f24 with SMTP id w7-20020a2e9bc7000000b002b1bfbb9f24mr181791ljj.47.1685996812356;
        Mon, 05 Jun 2023 13:26:52 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.216])
        by smtp.gmail.com with ESMTPSA id i18-20020a2e8092000000b002a9f966f4b3sm1587087ljg.26.2023.06.05.13.26.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 13:26:51 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Mon,  5 Jun 2023 23:10:36 +0300
Message-ID: <20230605202634.42175-6-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230605202634.42175-1-denorl2009@gmail.com>
References: <20230605202634.42175-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_132654_576222_6605DF4A 
X-CRM114-Status: UNSURE (   8.94  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 05/17] MIPS: pbl: use o32/n64 compatible register definitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This allows to compile PBL code with n64 ABI, which we use when
CONFIG_64BIT is set.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/include/asm/pbl_macros.h | 28 ++++++++++++++--------------
 arch/mips/include/asm/pbl_nmon.h   | 10 +++++-----
 2 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/arch/mips/include/asm/pbl_macros.h b/arch/mips/include/asm/pbl_macros.h
index c62910ff60..e60af38442 100644
--- a/arch/mips/include/asm/pbl_macros.h
+++ b/arch/mips/include/asm/pbl_macros.h
@@ -30,9 +30,9 @@
 	.set noreorder
 	li	t9, \addr
 	li	t8, \val
-	lw	t7, 0(t9)
-	or	t7, t8
-	sw	t7, 0(t9)
+	lw	ta3, 0(t9)
+	or	ta3, t8
+	sw	ta3, 0(t9)
 	.set	pop
 	.endm
 
@@ -41,10 +41,10 @@
 	.set noreorder
 	li	t9, \addr
 	li	t8, \clr
-	lw	t7, 0(t9)
+	lw	ta3, 0(t9)
 	not	t8, t8
-	and	t7, t8
-	sw	t7, 0(t9)
+	and	ta3, t8
+	sw	ta3, 0(t9)
 	.set	pop
 	.endm
 
@@ -123,15 +123,15 @@
 #define WSIZE	4
 copy_loop:
 	/* copy from source address [a0] */
-	lw	t4, WSIZE * 0(a0)
-	lw	t5, WSIZE * 1(a0)
-	lw	t6, WSIZE * 2(a0)
-	lw	t7, WSIZE * 3(a0)
+	lw	ta0, WSIZE * 0(a0)
+	lw	ta1, WSIZE * 1(a0)
+	lw	ta2, WSIZE * 2(a0)
+	lw	ta3, WSIZE * 3(a0)
 	/* copy to target address [a1] */
-	sw	t4, WSIZE * 0(a1)
-	sw	t5, WSIZE * 1(a1)
-	sw	t6, WSIZE * 2(a1)
-	sw	t7, WSIZE * 3(a1)
+	sw	ta0, WSIZE * 0(a1)
+	sw	ta1, WSIZE * 1(a1)
+	sw	ta2, WSIZE * 2(a1)
+	sw	ta3, WSIZE * 3(a1)
 	addi	a0, WSIZE * 4
 	subu	t3, a0, a2
 	blez	t3, copy_loop
diff --git a/arch/mips/include/asm/pbl_nmon.h b/arch/mips/include/asm/pbl_nmon.h
index 0e4ec39967..7c8ec9d204 100644
--- a/arch/mips/include/asm/pbl_nmon.h
+++ b/arch/mips/include/asm/pbl_nmon.h
@@ -39,12 +39,12 @@
 	.set	push
 	.set	reorder
 
-	move	t6, a0
-	li	t5, 32
+	move	ta2, a0
+	li	ta1, 32
 
 202:
-	addi	t5, t5, -4
-	srlv	a0, t6, t5
+	addi	ta1, ta1, -4
+	srlv	a0, ta2, ta1
 
 	/* output one hex digit */
 	andi	a0, a0, 15
@@ -57,7 +57,7 @@
 
 	debug_ll_outc_a0
 
-	bgtz	t5, 202b
+	bgtz	ta1, 202b
 
 	.set	pop
 #endif /* CONFIG_DEBUG_LL */
-- 
2.41.0



