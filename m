Delivery-date: Tue, 13 Apr 2021 11:25:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWFIa-0007E7-6a
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 11:25:32 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWFIZ-0006Yl-HQ
	for lore@pengutronix.de; Tue, 13 Apr 2021 11:25:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3GVr8mCzQq9MH6GquV9GjWW5sdgE4Fns87D8z7SNWxM=; b=Ggnb58q1zrVx4igPyhHHurJ78
	57haNU5eFHIMMXakw4hpDPK3o/hBrVNYCNOQD0QXAhFFcK1TLWxvqbiorqc2nIaQYmw75uLw8NzQ2
	bq5kZTBW/TWzlAGLKf3IWrT4csk7yTqikW9GpSBGXXJ2bIAs6jIbnfyC3mhJ3FqFfznaEmqFdrbuZ
	u5YuKHO8BFTE8ofSwNrPfcUrTXNk8rae7j2RC9vHeO2S2lxWbr+ikVRsC04UGuItNH7zxsmdp2JOP
	XaNMzu7LBkFcc0nn4k2Ls01D5upwrVrNLX/Bnah47NA5joBr30G39VFeedatW3u+v2zBHxe4NPzY1
	n8oO/HVTQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWFHJ-008hKM-Bk; Tue, 13 Apr 2021 09:24:13 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWFH7-008hJq-T4
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 09:24:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=3i7uYIiXLKSxQDG+2/qi2wA1jvOkx/34Qnqx662Nnbo=; b=wkOAvdfKB6Wg5Jn0kPQgdMB3r3
 Yjibeug6crS5QYZ7T0/edLtFbINQjU6GDjZjm9FYk17vd3bQAbM961Y5hBhbEC5r3M9FLm8GXZC9f
 R2tdnZ8KkKN9n6DddExl2xI7rwpEv3zS6WtfsZAGcnm8bB8fg93qVgLQK787xleY0M65YFe2DKt8D
 TqpCDa7xf9IKXEt5BAKgesUAEQ/syT0C0QaoeRGJB1lcQVUPxJfZ95hPlgm9j5AQzLwQDL/qDSUZg
 dR/6EimZv25SSNfEOtMnK6vY3Rq0Zmw1CXKk8cfR9r8CUwZMtlQ/6VjnNxvD7rZSV/n4niyfA6tIB
 aPLdW/Lw==;
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWFH4-006sHh-1H
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 09:23:59 +0000
Received: by mail-lf1-x12b.google.com with SMTP id z13so9175061lfd.9
 for <barebox@lists.infradead.org>; Tue, 13 Apr 2021 02:23:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3i7uYIiXLKSxQDG+2/qi2wA1jvOkx/34Qnqx662Nnbo=;
 b=jkJjdaD18ijFDLCdisUw/leKvtW4rhGdCL7Om0Xt0QFFKnt9DH/V0uuZRboG3JohEB
 vypEHqnESiL5W0O+jGXs7+P3MpldjULL3f5tT2gCkRee1yyiamE64TUju5AWNDyg6XDj
 9N/9UPkwImSTK1o4Mfcv9Yk0IxcfXv0e02pLMHPhTU8udwYhKHj2bgCamsRFJVi1zfNW
 ZsKGaNr6p/EiL8Jn4R8bPNiv98UMe1NQyQOWcN4kvVET6F45HnQgvOtHFJbvXX1l2zLK
 pjKxBpB8zGtJe4uiE9sT/KNblAKzmnt6zyhRc4T+qw82inaG+Nj6Ap93keYpAo64T94g
 J2nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3i7uYIiXLKSxQDG+2/qi2wA1jvOkx/34Qnqx662Nnbo=;
 b=H9Kj8LP0ogbJtTel3qz8YBnB4aNRXlJ+usckbdaJMpOFqWs7OBe/xK5Fem8Sodx5Z3
 cLvvpAj3CI5cdjN6vXUd4ZJ3bfgnKkse8djZU9cGh9ahSbqNk8CZbG658WUGDsJRhJ2i
 ISDxiwTXEF44c7AjRo7tzxqLvNnqajmH7rCkQZirWW8RzFQvZVlB7Uh1gKA5Rsw1fGzu
 oZVb774Ex0yBaM1bJt0Rb3Q+l0owLPKZjgcgedh8o5GigWIjILNRWVOlkrxjj/H3UCZG
 xZoeK6KP6NnVHZbxZ4IbMyJ9QY8XindPBi85RhL2Scn7iqVbiVXaKCmCbnA7/We7UqVn
 Dsxw==
X-Gm-Message-State: AOAM533iNMm4QK39RqK6ZUcPMHnMCVfdq5MLs3YwycGLpf2n9DHGrwCS
 XcUb5iroeaJa9e0X8SfPE3vgXGNIUJI=
X-Google-Smtp-Source: ABdhPJyC9V8y/eHuzus+xWxpGF9le4NeOYN/40B1xzAHxkOx80zlDmVY3Vwt4cKHdiNAeBmh8kA0Bg==
X-Received: by 2002:ac2:54a1:: with SMTP id w1mr17143527lfk.48.1618305836095; 
 Tue, 13 Apr 2021 02:23:56 -0700 (PDT)
Received: from laped.home ([185.181.22.4])
 by smtp.googlemail.com with ESMTPSA id l14sm3117433lfk.72.2021.04.13.02.23.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Apr 2021 02:23:55 -0700 (PDT)
From: Lars Pedersen <lapeddk@gmail.com>
To: barebox@lists.infradead.org
Cc: Lars Pedersen <lapeddk@gmail.com>, Bruno Thomsen <bruno.thomsen@gmail.com>
Date: Tue, 13 Apr 2021 11:23:40 +0200
Message-Id: <20210413092340.241337-1-lapeddk@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210413061727.186938-1-lapeddk@gmail.com>
References: <20210413061727.186938-1-lapeddk@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_022358_094931_B44A83A5 
X-CRM114-Status: UNSURE (   7.90  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX: Fix Kamstrup mx7 concentrator default cfg
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Select CONFIG_POWER_RESET_GPIO_RESTART for Kamstrup mx7 concentrator
board.

Signed-off-by: Lars Pedersen <lapeddk@gmail.com>
Reviewed-by: Bruno Thomsen <bruno.thomsen@gmail.com>
---
Requires patch ARM: i.MX: Kamstrup mx7 concentrator board support

 arch/arm/mach-imx/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index cc73d0a0d..4ee8ffe4b 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -530,6 +530,7 @@ config MACH_KAMSTRUP_MX7_CONCENTRATOR
 	bool "Kamstrup i.MX7 Concentrator"
 	select ARCH_IMX7
 	select ARM_USE_COMPRESSED_DTB
+	select CONFIG_POWER_RESET_GPIO_RESTART
 
 config MACH_NXP_IMX6ULL_EVK
 	bool "NXP i.MX6ull EVK Board"
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

