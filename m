Delivery-date: Wed, 20 Oct 2021 10:41:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1md7AF-00059U-Mq
	for lore@lore.pengutronix.de; Wed, 20 Oct 2021 10:41:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1md7AE-0008PS-R7
	for lore@pengutronix.de; Wed, 20 Oct 2021 10:41:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NQ+Xpkry6L+l+bQjO6PNhwe5OMlQ8sE2pWBVMOIIBcs=; b=wi3rq9r1e3gpz7
	6yuo9JhjmDRvEy+tJv42E3zFYzrVpi/G1lNrvv9K2K3tLOOYCsvMthDTlEoY2zGnsN3icQfsurdM5
	9pLOeKtHTCzJbzvitWB+JshvrsJKXUySgh4hF42b02Oa7L+etaP6qNaLF4XnBSLHmFlyq5aqMyVXp
	5ObL3bd4Wjv/JzgpkN4eQsHdyy1FJPXNbhEOBEzXq4Nu1EU1xb2uho9Y6h7gL5VkEVk067O3K4F33
	GK97MFeighNnu7K2UTENHcEwXX/xVv6saYxstmoJWmNDjmB3MwVQYdIBBzhMPpMnthclYgLWffSmh
	OcOQ569f7ojpZdqkPy1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1md78l-003qzz-Gl; Wed, 20 Oct 2021 08:40:03 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1md78g-003qze-Rn
 for barebox@lists.infradead.org; Wed, 20 Oct 2021 08:40:00 +0000
Received: by mail-ed1-x52e.google.com with SMTP id i20so22954495edj.10
 for <barebox@lists.infradead.org>; Wed, 20 Oct 2021 01:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cyDQJeuO3/P/p3FIcBTHM+1WWp0BuycOG4yISjQpGzs=;
 b=jj212FqQ7E+gedPd/ApCjA5ed/SMSkz3YsR1f4dsvZXTOOpip47iXj6+6MYrx8VaWO
 LyekErEUji0kM0uphak3rWJw4sE1audUUQE0V2iNsmcxtaX8w/oPDDOMRDB+fZ0p2WYV
 icvQIetYfBDgYMQcu+Im7WTTUSEvb4NJ9ehqkRNjBxrw7Bfcn8zSVCLR8OSB1s5xXKRA
 4hZ+O5b+C81Vsxvyom5dnfpIOc1ODbxqga3J21luq2JYvfd23S4dNPG2BWLA5NNdx2if
 u8xNRCxAnh1vBaC2UifZQDtaReR8FpXJqBFu+OKIEBEcV35RUXm/V1m9G6+w/nInliAI
 zXVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cyDQJeuO3/P/p3FIcBTHM+1WWp0BuycOG4yISjQpGzs=;
 b=2eblnG062ahXu73GlNTjnCLFJR3pP6J1MAUOVFKHT6KuN1wPeQ/g2ShHrvyMixKRgm
 EL6yg3wbMRF/inZEzbLyX/VlZHLEgm0fyk6Q6oLl0WNImkYWD3zlwznjrHaJAZisJTMS
 uczDm8ed5viPHRYt5xQGZ71ZORX5rWXxsFnQzDb2opmerS9ygbEtWG2FZFX6Ogicwrka
 Z6IjGSko15l9dObhaMeE8FNldT0zgX6SowEpv9UOivWOtbq/4JrTdVk04E7nJQtLUvZY
 trzNwoEN42IF0iesDbn0V7aB2dKnbmZOUpI8ilv+AIIMehlwaA1LOKVyVJyytrcmaG2m
 NaTQ==
X-Gm-Message-State: AOAM533vfxMqCeBLq5WiYY9RZkYIS5cZJQrquLA6qbaCVuOf575H9JQt
 vra0kO/oxt/2YJfhbrI4gK2/vB387126Ww==
X-Google-Smtp-Source: ABdhPJwQtEicx4S6YHp77VyVpn6fAfQmai/4WX46QLJdJPtzDznQvRVXm1kHMzR/caY8mxGALx1sHQ==
X-Received: by 2002:a17:906:a1c1:: with SMTP id
 bx1mr43625152ejb.447.1634719196871; 
 Wed, 20 Oct 2021 01:39:56 -0700 (PDT)
Received: from PC-BRAT-W10.ESKON1.local (mail.eskon.cz. [213.155.251.67])
 by smtp.gmail.com with ESMTPSA id v13sm687493ejo.36.2021.10.20.01.39.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Oct 2021 01:39:56 -0700 (PDT)
From: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
Date: Wed, 20 Oct 2021 10:39:54 +0200
Message-Id: <20211020083954.3787-1-danek.brat@gmail.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211020_013958_943014_D31FB2A0 
X-CRM114-Status: GOOD (  12.11  )
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
Subject: [PATCH] phy: core: Make 'phy_optional_get' return NULL when not
 implemented
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

TWFrZSAncGh5X29wdGlvbmFsX2dldCcgcmV0dXJuIE5VTEwgaW5zdGVhZCBvZiBFUlJfUFRSKC1F
Tk9TWVMpIHdoZW4gdGhlCkNPTkZJR19HRU5FUklDX1BIWSBpcyBub3QgZW5hYmxlZC4gSXQgbWFr
ZXMgbW9yZSBzZW5zZSB0byByZXR1cm4gTlVMTCBpbnN0ZWFkCm9mIHN0cmFpZ2h0IHVwIHRocm93
aW5nIGEgZXJyb3Igc2luY2UgdGhlIGZ1bmN0aW9uIGhhcyAnb3B0aW9uYWwnIGluIGl0cyBuYW1l
LgpUaGlzIGFsc28gZml4ZXMgZHdjMiB1c2IgZHJpdmVyIHdoaWNoIHdvdWxkIHByZXZpb3VzbHkg
ZmFpbCBpbnNpZGUgaXRzIHByb2JlCmZ1bmN0aW9uIGRlc3BpdGUgYmVpbmcgYWJsZSB0byBmdW5j
dGlvbiB3aXRob3V0IGEgcGh5IGp1c3QgZmluZS4KClNpZ25lZC1vZmYtYnk6IERhbmllbCBCcsOh
dCA8ZGFuZWsuYnJhdEBnbWFpbC5jb20+Ci0tLQogaW5jbHVkZS9saW51eC9waHkvcGh5LmggfCAy
ICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYg
LS1naXQgYS9pbmNsdWRlL2xpbnV4L3BoeS9waHkuaCBiL2luY2x1ZGUvbGludXgvcGh5L3BoeS5o
CmluZGV4IDY3OWNlNmU0Mi4uMzIxZTU0NmY5IDEwMDY0NAotLS0gYS9pbmNsdWRlL2xpbnV4L3Bo
eS9waHkuaAorKysgYi9pbmNsdWRlL2xpbnV4L3BoeS9waHkuaApAQCAtMTk1LDcgKzE5NSw3IEBA
IHN0YXRpYyBpbmxpbmUgc3RydWN0IHBoeSAqcGh5X2dldChzdHJ1Y3QgZGV2aWNlX2QgKmRldiwg
Y29uc3QgY2hhciAqc3RyaW5nKQogc3RhdGljIGlubGluZSBzdHJ1Y3QgcGh5ICpwaHlfb3B0aW9u
YWxfZ2V0KHN0cnVjdCBkZXZpY2VfZCAqZGV2LAogCQkJCQkgICBjb25zdCBjaGFyICpzdHJpbmcp
CiB7Ci0JcmV0dXJuIEVSUl9QVFIoLUVOT1NZUyk7CisJcmV0dXJuIE5VTEw7CiB9CiAKIHN0YXRp
YyBpbmxpbmUgc3RydWN0IHBoeSAqb2ZfcGh5X2dldF9ieV9waGFuZGxlKHN0cnVjdCBkZXZpY2Vf
ZCAqZGV2LAotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

