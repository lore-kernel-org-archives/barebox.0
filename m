Delivery-date: Wed, 08 Sep 2021 10:03:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mNsXu-000526-BI
	for lore@lore.pengutronix.de; Wed, 08 Sep 2021 10:03:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mNsXr-00023V-UB
	for lore@pengutronix.de; Wed, 08 Sep 2021 10:03:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ycKi2XfkJPbz3O9rV8AvhUinkNijM2vsQ/+9PAJ810Y=; b=h+P5qcPO12V1Tk
	yDGq4lPbzTLBzeK24SNio/CZzDF6b4O5dVRRTRNb843e9MlChhzmAOYevaGXYmNhNLDWItCoQS3nb
	sOURA1RvB7EFeJVGPQ8tHUm638oAttA0xnWWmMeVLuOUSfkG9OS1uZI469XMJLqfCjO8EuB+x9HnB
	QDkv3frPUh9T7SMoYIE81W4wBXUUF6mteE5bZWKslrC85B4EUvcNFy9hl9ARTujXXIaU1M40oymQB
	izuX3PsAT8EGvGzh5HFppTYwvHKlUUHescsILk4thI91zxFuFFzafuDVxMqYojayUR4BTTPAs5o4L
	uw1i5Qf5ZX8RySXcj7Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNsVg-0062Qz-0y; Wed, 08 Sep 2021 08:00:45 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNsHw-005yf2-Rc
 for barebox@lists.infradead.org; Wed, 08 Sep 2021 07:46:34 +0000
Received: by mail-ej1-x633.google.com with SMTP id a25so2328134ejv.6
 for <barebox@lists.infradead.org>; Wed, 08 Sep 2021 00:46:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KcScgmj280od2prFYZwdaGPUMskCAA2hcGydmtBHXC8=;
 b=KdegQvmldW1L8trfmwAFqI8zXviJ3NqzhDr1lIxzPimCFjUr1uIX/Lo4AWiRR2NCWi
 F/x+G5pL2bVN+7iM8K1jKXafrT7fVUOpubtoUWy2hk8yw+q9VhyzTtuv50U8V0OWFe6q
 4BnG4qloAr41pA43qXqEe1klYDFv3h/KaJMb1POg4lC7t6pqR7tdC4qUsux77X+0T6CA
 7graNwkhaTOAlEhmGWSjE5lUE61o9E5JEISJHy4Cuu6bWbEzgJCeCsA2y4BDJYPtwkfG
 YZcTBdp/Y07YzAGJxk3w00iUkJV9lpZ0YEFGAj9/ewWekBX8vpggaIDmPmG351fwlu27
 F7pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KcScgmj280od2prFYZwdaGPUMskCAA2hcGydmtBHXC8=;
 b=VHuvpevBJxk6btt5pAYKNQafHQbf/ESGatHijqFjZuvrX0n8JA61wgykPcl+s2izQK
 YriiSXlcI8NPx4ZulNeZCxkoNx6Oo8AGvsd703Cg0YoDrvz1PH7wahZy+CssAfABRAtz
 NuV/wR7sKYTnV2j8+jlu5ccgLXIPF4r1FSiFOc+THCuLCDYiU7n4AVbFufYg8QFcdfZE
 oSZQPBHRbyEfEvljRwErgvtFttX/OX2rVGp4K8iyqKbajtGI9VBRIPyYHyu6YdSH+zc3
 A99rndGwMSX0irbZJfi53gBnKIjC+g9FCymLm7oTcGyjBdUPwxhgd9dwi/SZVNIM+Q1w
 mjKA==
X-Gm-Message-State: AOAM530cm1bkI6S2/KkhJdVh3H41Mb9Ng8zCLCjU4mAf9XdII9odbDAT
 ubTdugFDrBmGxfP/KdY+uawSLwfc0UCrcQ==
X-Google-Smtp-Source: ABdhPJzpv9f9Q8hjp9sidx4l1F6G/T+KmtBjrx0zH/G0EW77STF8NsqNgPxR+JbICdfT/VjJnch+jw==
X-Received: by 2002:a17:906:1299:: with SMTP id
 k25mr2615059ejb.139.1631087189399; 
 Wed, 08 Sep 2021 00:46:29 -0700 (PDT)
Received: from DESKTOP-KJS3OJ9.localdomain (ip-78-45-54-3.net.upcbroadband.cz.
 [78.45.54.3])
 by smtp.gmail.com with ESMTPSA id lm21sm561653ejb.58.2021.09.08.00.46.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Sep 2021 00:46:29 -0700 (PDT)
From: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
Date: Wed,  8 Sep 2021 09:46:20 +0200
Message-Id: <20210908074622.3271-1-danek.brat@gmail.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210908_004632_963231_94536851 
X-CRM114-Status: UNSURE (   8.06  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] usb: dwc2: fix phy dependecy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SSBoYWQgcHJvYmxlbXMgZ2V0dGluZyBVU0Igd29ya2luZyBvbiBteSBSYXNwYmVycnkgUGkgM0Ir
LiBJIHRyYWNrZWQKdGhlIHByb2JsZW0gZG93biB0byB0aGUgZHdjMiBkcml2ZXIgZmFpbGluZyBp
biBpdHMgcHJvYmUgZnVuY3Rpb24KZHVlIHRvIENPTkZJR19HRU5FUklDX1BIWSBub3QgZW5hYmxl
ZC4gSSBmaXhlZCB0aGUgcGh5IGRlcGVuZGVuY3kKaW4gZHdjMiBhbmQgYWxzbyBlbmFibGVkIHBo
eSBjb3JlIGluIHJwaV9kZWZjb25maWcuCgpEYW5pZWwgQnLDoXQgKDIpOgogIHVzYjogZHdjMjog
TWFrZSBoYXZpbmcgYSBwaHkgb3B0aW9uYWwKICBBUk06IHJwaV9kZWZjb25maWc6IEVuYWJsZSBQ
SFkgY29yZSBmb3IgZHdjMiB1c2IgZHJpdmVyCgogYXJjaC9hcm0vY29uZmlncy9ycGlfZGVmY29u
ZmlnIHwgIDIgKysKIGRyaXZlcnMvdXNiL2R3YzIvZHdjMi5jICAgICAgICB8IDM4ICsrKysrKysr
KysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgMjQgaW5zZXJ0aW9u
cygrKSwgMTYgZGVsZXRpb25zKC0pCgotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vYmFyZWJveAo=

