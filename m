Delivery-date: Thu, 10 Mar 2022 14:43:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nSJ4H-00101s-IB
	for lore@lore.pengutronix.de; Thu, 10 Mar 2022 14:43:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nSJ4G-0008Cn-Et
	for lore@pengutronix.de; Thu, 10 Mar 2022 14:43:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CkEObc59hfYLFo3ALXfPQIkanCEtYilkdE/YBTzYWv4=; b=FAZqnUrhhSyPTJ
	EJAO7t0W3j0Vgnk/SLmRCk9n241IUG6KavuQL28EKri+A7aCiEfcRQuRF5AzfWdkeaxG6Fr58kUT2
	dMBQWtUSFOxjjZiFXRIW1uTyLmVo/lO5KuhxkeZEbItQWObKCAyZbKhi+wWXpuhrPs4ngYgd1ANMe
	D83+pTu0CJBFoybX7Avy+ktknBbTGUjo6ukT04NF2WwTQPqWVssMXce+lCR/uJu5Ngp71wEFnIBLS
	Ij+faDLKzjaHD1/IMXAU2uFRoT88V6NyCfpo35ukFbfGyIQaXkiyQtAWDdyQEMqjmXvrE06SgxgPa
	ESy+4BTtEArRMQh70xKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSJ2u-00Cxtw-B4; Thu, 10 Mar 2022 13:41:36 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSJ2p-00CxtL-NR
 for barebox@lists.infradead.org; Thu, 10 Mar 2022 13:41:32 +0000
Received: by mail-lf1-x131.google.com with SMTP id l20so9441473lfg.12
 for <barebox@lists.infradead.org>; Thu, 10 Mar 2022 05:41:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cyjXH0QaQrSr51eh9/ODuJPUsFyzX7X9U/niFHRF+Fo=;
 b=iZ5iF0UFpq7c617ZtyGtP5I6ZfZa3x6/D2x3kUw3xAg910hg2+G7KMxS4M/eE1f406
 fmTclCxodx2uYLv7dYXKDx961kyIg8GB5W7J5i+sqTmTNOW5cUXxMLBCpQUIQy4TCL60
 HOwRSa/TKk54loVF0QW/vIdj9lcm1wz5BpYc1fVAeF05bPfdNsClsicLtyqZGE1e+ib2
 +ZpGGgml0tk10T/et9BrxgyueCTyt9srNhCsGz6GT3uJ8CMo29QI/Yz5WI7ygnUWJR0x
 doQj3eXdT1LebNqcGAEHluHv22AWuTu/mOEzSiRXRqVIUnRP34FXCi4ZWYOI/8omq7Wj
 h1mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cyjXH0QaQrSr51eh9/ODuJPUsFyzX7X9U/niFHRF+Fo=;
 b=vofRhVUqJbg6D/n9/vKwJvHUj/UE1Q9QoQ81OcK1Bp+R9CKNOM0buZz3xwC2OJfslO
 sm/M567L9Y1Jfmq4XB4uK4Pp7qlN8TT0bInSucVXWtAII3JLTHu9BvVkERUkkbZ9BV1+
 GRgj1Z617v1jeAz/TE55188mjYOr1+/QDejawecREPrBpgyW6LlZt+MP8aifFShYoLN3
 LS51iV+Hwg6J9Hgu8xm32qKrMX3oGFhvee+kI9ulYjUnYGtGtxvX8qTAQaOczqj13ZhU
 PxGQSewIzKcIWHvPnxXG3V/kFdB50s9QiqFhcG8P+5uckJB61Y8IN+J5sgIN4E+nTnqn
 cbVQ==
X-Gm-Message-State: AOAM533xyS+raI0RIsOZW29HFBlbFtgGDmntBgLNlYbXs1kG2sfLBbJZ
 TckxXw34pOkAGJPgxGFH1vs8JgZOifmh/A==
X-Google-Smtp-Source: ABdhPJy3URpznhwLphnpSBJIb/hzjw2Snq9/p2i6o4dt9bSxRAgil08egQsBFG6AeURcDlbW6QSkUg==
X-Received: by 2002:a05:6512:12c9:b0:446:830:54d5 with SMTP id
 p9-20020a05651212c900b00446083054d5mr3100979lfg.686.1646919689307; 
 Thu, 10 Mar 2022 05:41:29 -0800 (PST)
Received: from localhost.localdomain ([193.232.173.109])
 by smtp.gmail.com with ESMTPSA id
 m10-20020a056512014a00b004482247f0ecsm982702lfo.252.2022.03.10.05.41.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 05:41:28 -0800 (PST)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Thu, 10 Mar 2022 16:40:40 +0300
Message-Id: <20220310134040.30631-2-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220310134040.30631-1-denorl2009@gmail.com>
References: <20220310134040.30631-1-denorl2009@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220310_054131_781478_E761181D 
X-CRM114-Status: GOOD (  11.30  )
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
Subject: [PATCH 1/1] MIPS: fix optimised memset returning garbage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There is a subtle bug in arch/mips/lib/memset.S, which results in
not writing the correct return value into v0 register if the value
to fill memory with is 0.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/lib/memset.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/lib/memset.S b/arch/mips/lib/memset.S
index 0b81bd7d8d..cd4e4ccfe8 100644
--- a/arch/mips/lib/memset.S
+++ b/arch/mips/lib/memset.S
@@ -34,8 +34,8 @@
  */
 
 LEAF(memset)
-	beqz		a1, 1f
 	move		v0, a0			/* result */
+	beqz		a1, 1f
 
 	andi		a1, 0xff		/* spread fillword */
 	LONG_SLL		t1, a1, 8
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

