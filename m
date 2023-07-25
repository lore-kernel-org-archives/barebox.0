Delivery-date: Tue, 25 Jul 2023 07:08:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHE-008zse-W6
	for lore@lore.pengutronix.de; Tue, 25 Jul 2023 07:08:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHB-0004DG-To
	for lore@pengutronix.de; Tue, 25 Jul 2023 07:08:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OXl5GVX0jX9jo5z+MTgR09B4TfH71BdQlVlGLzqsci8=; b=nO/eOePRoirIwz
	g4CwAQvvcNeca1PWgzgz/5livVadVZTftUd5rG/jEVwAo0sU8sqVBTlrHNdtvaeX3zjeYkSGxVOb+
	0BqE6yVoR51m38QINXMr93IF5JR5wdZW4LlJhJvmeQiS1ivQfRxEEXpbSUV0K7vIaIWWt3ohfp9ag
	aT1XWk8tze/tnpQYkKPMVm5ytKF5GhYsb1wnJXQdvKD+oTj4z5JeVo9CR646Q2w/VErq4DLU8jZNW
	tnbNTfE6ZrXcHBN+mL0rcuMwVvWvr77V9Dg5ZcpUcX2w9D8q0SoFDJMiHJm1KEr0J/YaSacM1uiv9
	HfxITih4oMYkbXWxPiEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAG0-006FN4-0B;
	Tue, 25 Jul 2023 05:06:48 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAFw-006FIf-2L
	for barebox@lists.infradead.org;
	Tue, 25 Jul 2023 05:06:46 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-4fb7589b187so7749777e87.1
        for <barebox@lists.infradead.org>; Mon, 24 Jul 2023 22:06:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690261600; x=1690866400;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OXl5GVX0jX9jo5z+MTgR09B4TfH71BdQlVlGLzqsci8=;
        b=cq2ulITEee91KtssLDB8FRtcope7EeCu7eZdfrUWQdu+8yVTG2JrJXZ07uNuoTWGTS
         tGeh06Jv1N9TEploajqd+tFL/hLHS0uSQ5rYMaaNovJXhQmYfTzBY14HNatuRO2xfTrE
         4BNB7ANZs7/bMx/wif90WeNhk3LXW5Bno6rAj+LAtqNBo0psGFy5xtSoUtOWiX5qMiXo
         T9OfIYcE4krNFwScyXQCk9RCrVd7Pgu6zU147QCTAJr8oGvZUd0uJ3aRquvYZgC8z+lx
         rsutJaGMPVPFiY4nQyk06H4JyYBjrU8AffoXOHrwhp2NjVJLHOtEIlNjK2N/gDdiFAAT
         e4Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690261600; x=1690866400;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OXl5GVX0jX9jo5z+MTgR09B4TfH71BdQlVlGLzqsci8=;
        b=fn0HnLmwVejcmpyE0TwERudmra5jfMFgWAGLqTossCMsb3Z0qLpNZfxAduOeqBYDQP
         UsLo9G9gA6v87rZLO2UQQrEZKx/4OD7boiMBS3QQCzHufg5xmtpTEDEwDZpJAc38C167
         +RnC9nBkGEVXAbIYCprOocEB5FC0yoC+kRebNzxdO3ioBArpqAZF4gqzP+5Qj0H0o85j
         oGUupQ/9E0FFOtqc1Tt1+Nw0eZiuLeFja3B85su+/DdsRyddbAGZkxYmGkEsMJxIC4UM
         TnHBRYps+MJNmw2aRFRO/A/xOIr6M8uZ/pRCEjTdnBj54o5on9rIhC9unVEzrNgm9/Cz
         8K4Q==
X-Gm-Message-State: ABy/qLbVS4zD2Q3kZL5Y5TOmdNHivs1Fd/Q4/KVnbQrVfbn7q8SrX51I
	TQKZW6cVLEZFo/jU3zbx1yi9lb+gwiehbfWjCsIqqw==
X-Google-Smtp-Source: APBJJlGiR604c0lMB5Ixc9weXQlrNG/3Hjrpfbqkw3BfRswHPD13n+VxdLDZAuB2whnUBqzKXRh89g==
X-Received: by 2002:a05:6512:3e25:b0:4fd:f827:225a with SMTP id i37-20020a0565123e2500b004fdf827225amr3949899lfv.43.1690261600333;
        Mon, 24 Jul 2023 22:06:40 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.211])
        by smtp.gmail.com with ESMTPSA id k17-20020a05640212d100b0052237dfa82fsm1730505edx.64.2023.07.24.22.06.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 22:06:39 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 Jul 2023 08:05:10 +0300
Message-ID: <20230725050618.3451-10-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725050618.3451-1-denorl2009@gmail.com>
References: <20230725050618.3451-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_220644_764328_43068250 
X-CRM114-Status: UNSURE (   8.97  )
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
Subject: [PATCH 09/21] MIPS: pbl_macros: use .asciiz instead of .ascii + .byte 0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

GAS allows to use '.asciz'/'.asciiz' instead of manually writing
'.byte 0' to null-terminate the string specified in '.ascii' directive.
Do just that in 'mips_barebox_10h'. The malta-specific entry code
currently does the same.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/include/asm/pbl_macros.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/mips/include/asm/pbl_macros.h b/arch/mips/include/asm/pbl_macros.h
index f8629d3f2c..6e177ff69a 100644
--- a/arch/mips/include/asm/pbl_macros.h
+++ b/arch/mips/include/asm/pbl_macros.h
@@ -170,8 +170,7 @@
 	 nop
 
 	.org	0x10
-	.ascii	"barebox"
-	.byte	0
+	.asciiz	"barebox"
 
 	.align	4
 1:
-- 
2.41.0



