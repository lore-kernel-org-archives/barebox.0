Delivery-date: Wed, 20 Oct 2021 10:27:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1md6wM-0004lk-Gc
	for lore@lore.pengutronix.de; Wed, 20 Oct 2021 10:27:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1md6wL-0006t1-LG
	for lore@pengutronix.de; Wed, 20 Oct 2021 10:27:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iEJCmG1uMwD/BKfrJZRm8/WEV449gfHX6Hhl8piMwe4=; b=e7p2L8d6x98O2j
	iw8CFSxGe3EyAST7v1kfPyFdyTw4iN9m9T8b8TI91/Jxf3DZ7u2eQ+/cXxND0jYZSitOecAn1uExt
	+g1DCk6SACde3grV7BRAuFjE+WM3zkHnJ2QRDIZ2o6CKH1aH8Dv88cGFS0+vUmS1IHSegJ/UiEn/f
	LavdvTNjSmv9/VJjvhZ/KXNH8DdtSjrd5EQmfj82uvatqKrdJBgSz7K8zAf/jFwgFMiTnK5DcYc97
	0vasdATFKCt+UAMWyDwf7rlz7IHuOCzzE009yMvsD/Av9sJvZ6GTx3a+Ah0rLuPgzQJEFVN3EFa3S
	3/N7cKTAwjzZa1DG+mIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1md6ut-003pdP-IF; Wed, 20 Oct 2021 08:25:43 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1md6uo-003pcM-N3
 for barebox@lists.infradead.org; Wed, 20 Oct 2021 08:25:39 +0000
Received: by mail-ed1-x52b.google.com with SMTP id y30so21135878edi.0
 for <barebox@lists.infradead.org>; Wed, 20 Oct 2021 01:25:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=unFFidXIfKCujpH0rXaCt70/l4Mqqvr0f02P94s7/UU=;
 b=hrCt0L8rC9/SudF5IoLPL+xy79khRaTmD1HQpmC47PK3xCK6DAqyc3W1HNecAtJACe
 v+ToDMimsvwBH6hkHa8/1KLnzljW1ZdA6JKa7S1n/TZZEWEvNc08uE8/UPm63B0hkj9H
 IV567RpF2uSQYqR4hKRpXGMB74O+/zY6pkANn1Nh0b4caGJ0SwXgC7AEdKjBSV2O9j5O
 V8kzPIrOAZeVTAIbqfCMJxBvGTYaaXQ3rudlAgrTm8a2tPt7YznPclzc8jpM9en6eCOR
 E6biHyoZNjjZ9Stjnj3tYGPhmOfAGkXNZk5/3igOCdUCKOu6YZVzWdfmrJo2zlkhWECX
 zzbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=unFFidXIfKCujpH0rXaCt70/l4Mqqvr0f02P94s7/UU=;
 b=x3iG74tluWkCPKTwIxvZfxqo74DecimRAArmlct1Wgh1E6aYG4RNfShqkMxI/PPmt6
 WcSgbX+kgkJ7PWHh80mLj/uTP6V2I4bhEWUYHIQtn4ALLABUIAhM4DyePeuVQ1LF/DRe
 62/Wcl58qs9zlKDFcQJioqyUlWkVcXxv9Q0oN5b+rlfnVXmP9M9Ar0/mWcGTRbVtoSj6
 qLgs8GSA5jL14rowPTmzHeWRwisRQmMhCiUujiHqD1M2tBvImhpwAAKxy5VFiupQLApY
 T+UlWKjBGB62FRK2AfVQzi7si+OHbv9SY5kpTDr1IQHr2xOajf1H+v0hk1GSYJ1AHc9r
 4TzA==
X-Gm-Message-State: AOAM531CE+tfgwripQtsBvHvuOX8wzYAW6w4KWUvYuqNAJUAcGZEoiSC
 v5MIwV3YU7PjfcUrY7NU2BVOuXXy64oa1g==
X-Google-Smtp-Source: ABdhPJwscXTZgC3liX42URQhge1+cEHx7MPlLAq0MaFL93oiDUdCW0yyefNYXij2N9nmIDvyRU31pw==
X-Received: by 2002:a50:99c6:: with SMTP id n6mr59963821edb.171.1634718333516; 
 Wed, 20 Oct 2021 01:25:33 -0700 (PDT)
Received: from PC-BRAT-W10.ESKON1.local (mail.eskon.cz. [213.155.251.67])
 by smtp.gmail.com with ESMTPSA id p23sm795498edw.94.2021.10.20.01.25.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Oct 2021 01:25:33 -0700 (PDT)
From: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
Date: Wed, 20 Oct 2021 10:25:05 +0200
Message-Id: <20211020082505.3607-1-danek.brat@gmail.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211020_012538_770595_C58A6C26 
X-CRM114-Status: UNSURE (   8.26  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2] ARM: rpi_defconfig: Enable PHY core for dwc2 USB driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

RW5hYmxlIFBIWSBjb3JlIGFuZCBVU0IgTk9QIFBIWSBkcml2ZXIgaW4gcnBpX2RlZmNvbmZpZyBz
aW5jZQp0aGUgYWxyZWFkeSBlbmFibGVkIGR3YzIgdXNiIGRyaXZlciB1c2VzIGl0LgoKU2lnbmVk
LW9mZi1ieTogRGFuaWVsIEJyw6F0IDxkYW5lay5icmF0QGdtYWlsLmNvbT4KLS0tCiBhcmNoL2Fy
bS9jb25maWdzL3JwaV9kZWZjb25maWcgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vY29uZmlncy9ycGlfZGVmY29uZmlnIGIvYXJj
aC9hcm0vY29uZmlncy9ycGlfZGVmY29uZmlnCmluZGV4IGY0MmI4ODE5YS4uYjgyM2E5YTNkIDEw
MDY0NAotLS0gYS9hcmNoL2FybS9jb25maWdzL3JwaV9kZWZjb25maWcKKysrIGIvYXJjaC9hcm0v
Y29uZmlncy9ycGlfZGVmY29uZmlnCkBAIC05Niw2ICs5Niw4IEBAIENPTkZJR19XQVRDSERPR19C
Q00yODM1PXkKIENPTkZJR19HUElPX1JBU1BCRVJSWVBJX0VYUD15CiBDT05GSUdfUElOQ1RSTF9C
Q00yODNYPXkKIENPTkZJR19SRUdVTEFUT1I9eQorQ09ORklHX0dFTkVSSUNfUEhZPXkKK0NPTkZJ
R19VU0JfTk9QX1hDRUlWPXkKIENPTkZJR19GU19FWFQ0PXkKIENPTkZJR19GU19URlRQPXkKIENP
TkZJR19GU19ORlM9eQotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFy
ZWJveAo=

