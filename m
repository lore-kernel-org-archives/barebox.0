Delivery-date: Thu, 28 Oct 2021 03:32:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mfuGy-0001yU-6r
	for lore@lore.pengutronix.de; Thu, 28 Oct 2021 03:32:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mfuGx-00011j-6G
	for lore@pengutronix.de; Thu, 28 Oct 2021 03:32:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1VaQdnntYRuoIgd172/eHFcGtyf4MrEvbn7BAPP4D+4=; b=xO34v4HwtVc3Ct
	j5tosEO74TRxlr77ltc9OtJYFlQ64Zn0Z4KVpTPKJpPDTPRJSIDfHRE27WN37o7a5NQZr0qUbjnIg
	RxXjVeksJm9CWTWiXxiJjNQFGKAlAusggvlvv+mhJXlrCQlgE+hJA9sFPc2+L5hOSx9qrq2RwyUlD
	7zj9V//xPzAGYg4lt+GIYGJVpm5waPyLcWqN7JfOeKoGq1F4EaChTNyBYhZvweT5sHq2IT8sNnb8G
	VF8c/3EuJimjilvsQOHZNxPpWyP1pxtIxHDp25SXukEy7a8PqklqbMGfytdtws0GTFYml6t7zwLwh
	/1X2/yHpy+rHHwFoZMkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfuDg-006cD7-Sn; Thu, 28 Oct 2021 01:28:40 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfuDQ-006c8e-2T
 for barebox@lists.infradead.org; Thu, 28 Oct 2021 01:28:31 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 205so7785329ljf.9
 for <barebox@lists.infradead.org>; Wed, 27 Oct 2021 18:28:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JqwZ2wuH95k7p3Xvqa6wKWDcTKZlYxg86DamcbSxaKM=;
 b=LoOW7yvwt9oYMhkTMouyXLVr85w4SQrF5KlmeoeiNqYNj2T5zdlbDp3sIgfS6/Wn9p
 n/BJm7cN3p6GA+s4OPKJV8KMJ9bQ97+f2P7l5sogj6rRzpRgo9NoLC71p9G7kN+zdmge
 tPUIlTVrzF8o+ro3mLreSfVEEFmOPFHBRSrOTFD/XObm9iv8DyYsxe2zMtjv37MB2uZ6
 J9m6w2JMxGY/IWqSEBy3M4ueFLIO2aObqgt130B1Ac+Th4oNUBqhRWuFqfA2TaIW3sVA
 uMcCdIR4k27j3TeAyXUWWj8JUhkzBmhY25wxAKX/wpU3Rxx1Fi4zkvrk9SB04k80J2rH
 1RDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JqwZ2wuH95k7p3Xvqa6wKWDcTKZlYxg86DamcbSxaKM=;
 b=GwD0yKFSXvo49Nsv/PAy2trRAqLrE/4X+r/AcNqjRHmld/CvGDIvF+SLPTJ2NSz7PQ
 kuIdUeoxl37ZyPBa25JigJDvYX9eWgf6/yBp3Dx4ggnTJx8dWDRNTFM7ltRJtg7VhMPy
 fUt4CmEejZYsVFKcaMttRk5ZF8nWpBHOdRk6ZBpQ6RBnXhuNU5CaGyHEKsVz9hnCH6c2
 QW2NBEfllr8AEMEZRBEXJvZjSPTzMwi858h5S0zg8C6qnjat1LvqmGlQK1skbidKnOUY
 VSqMIGJ2sXEySCJmcoi8XdRmzH47v4r+qfIbL9odrfV+VStmLyc4yOOB+tm+iLKS+JX1
 SWVg==
X-Gm-Message-State: AOAM532DLMWy3BVFhcX7jsT7fFdO1OugwuKmZpkFqQtothTaylfifG67
 wwZmzP+FHWQM80KEPPYLtu3xtbhaaWg=
X-Google-Smtp-Source: ABdhPJwaMknYe8htmCqSfhl/WZidukacb/r78BgpGY77o9+X1CC2Srf7aZ3yfUc0t2QinzAVYK9j8w==
X-Received: by 2002:a2e:9b81:: with SMTP id z1mr1446364lji.518.1635384502245; 
 Wed, 27 Oct 2021 18:28:22 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-96.dynamic.spd-mgts.ru.
 [109.252.203.96])
 by smtp.gmail.com with ESMTPSA id h14sm153111lfv.83.2021.10.27.18.28.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Oct 2021 18:28:21 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Thu, 28 Oct 2021 04:28:15 +0300
Message-Id: <20211028012816.929611-4-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211028012816.929611-1-antonynpavlov@gmail.com>
References: <20211028012816.929611-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211027_182824_186327_F618C821 
X-CRM114-Status: GOOD (  10.28  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] include/image-metadata.h: fix whitespaces in the
 BAREBOX_IMD_CRC macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/image-metadata.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/image-metadata.h b/include/image-metadata.h
index 439a0cba81..bf4e08d98a 100644
--- a/include/image-metadata.h
+++ b/include/image-metadata.h
@@ -139,12 +139,12 @@ int imd_verify_crc32(void *buf, size_t size);
 	}
 
 #define BAREBOX_IMD_CRC(_name, _crc, _keep_if_unused)					\
-	const struct imd_entry_crc32 __barebox_imd_##__name 				\
-  	__BAREBOX_IMD_SECTION(.barebox_imd_ ## _keep_if_unused ## _ ## _name) = {	\
+	const struct imd_entry_crc32 __barebox_imd_##__name				\
+	__BAREBOX_IMD_SECTION(.barebox_imd_ ## _keep_if_unused ## _ ## _name) = {	\
 		.header.type = cpu_to_le32(IMD_TYPE_CRC32),				\
 		.header.datalength = cpu_to_le32(sizeof(uint32_t) * 2),			\
 		.data = _crc,								\
-  }
+	}
 
 #ifdef CONFIG_IMD
 void imd_used(const void *);
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

