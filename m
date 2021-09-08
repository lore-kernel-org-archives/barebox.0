Delivery-date: Wed, 08 Sep 2021 10:03:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mNsXy-00052f-M9
	for lore@lore.pengutronix.de; Wed, 08 Sep 2021 10:03:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mNsXw-00024H-91
	for lore@pengutronix.de; Wed, 08 Sep 2021 10:03:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=djdkXAw4rVMIaCSkrO1S7MiWQZXD1u0A6gooiNTLl18=; b=h4Ud98kbdMpLb2
	gq8vxAd1xxIVek9epuag0eLAaPunLV+t9pfaUSeV31uZQmsEbnSs1QbU51T+CSbzBv4imSTNKr1pY
	jWL2cfbe58/DWrkn708C1DPNBZbcSm7imOaLFkG0o4NnVY866AU2aJQQ2Z0WQUTVbHBoOQmTqSRD2
	CjCs2KplyqV6YgYWgUr94TAOdOfRKoRLvs7HVoJ4W0WB4hVE5RofsC3KHPgq6vpdBQ6YwzIzKaU08
	urdMkmlKzlBl9AqrQ+0A9FE9PlagY/hDJAN7MD/1NTDzisEl4cU+I/GYSTVJjMGjvGggNYpj1Ztf/
	sgkCUzCBOthALIM2E/+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNsVy-0062VR-2I; Wed, 08 Sep 2021 08:01:04 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNsI2-005ygn-GK
 for barebox@lists.infradead.org; Wed, 08 Sep 2021 07:46:40 +0000
Received: by mail-ej1-x62b.google.com with SMTP id h9so2336290ejs.4
 for <barebox@lists.infradead.org>; Wed, 08 Sep 2021 00:46:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=g3OjIpv7hJCbBBRUkeHFxvgOxjTszGjDQpHxC7OUghs=;
 b=eBpbgOer3IGA2eTT0iHUdBnnswJFyRVnBnjLxHmcATkStsqPPI+EYiHoAMS3Acm1u8
 opaDroWfxrZrwdQ1w2ImFHfLu+Mi2H7d9j2FWW5/CzqJuUwOIAATZbnuoA2b5zcoUDtz
 qciyL2SjRzoK6HlROPAwsJH0txSD9ZSOZOevu6RcqcJQ2kMHtSQe8jvrv0FH4qd/wjj8
 hv6EcRTP8P/XJzUyRZaYDbtbW91ZdOqLQ3MVlFpbiBGI3A/jj2WjonQvIDXTitpK5hRK
 mDNbbXfhpbvbGwLDerzfwz0Aag626NTYJeK0RDl/vKci2XcqU7KRZO4tmvRiyajLAU9Q
 opBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=g3OjIpv7hJCbBBRUkeHFxvgOxjTszGjDQpHxC7OUghs=;
 b=f5RW5csTxY7pa2zbrWR0NOxkA6LS329h0GTV3AZ4GkmJAtKVIvu6bZz+BKCRYTA0qP
 WGLlAk719xCWJlGn/zkNhrAKbWRV1Dn+B5CIXNY5IQq3q/JT/kd6rA25lY7YR+shzGx/
 coyogTkWH+rhpQ3QXE+uTHsyFLUu0j86auOpnpXBYs7X2gwAdrh2Pnx6EZLSZueNPnF+
 LYcJN0+HJX85PR2DByUQ9xU2J2BFcjC5vJdY3pB3Tp0JgmDgXNHh4D7Tj50rXjpH4kYX
 6rdqBhXG2DKwI/ewlHpslzNOaPRQqEywASvV0wOyNXfVOBvfBS0mha3BqERDw9megZ0I
 tlBg==
X-Gm-Message-State: AOAM531p0sY8r63giTflbm1uOcnAePBaSv20n7kNgcj2O86XzdtQ7uew
 LxYVCN6QdxPh+igv8FM+PRrGZKB+P7aHIA==
X-Google-Smtp-Source: ABdhPJzsvFPqcdFvOAjcBzb2NHvfS1BQpth37OHg0PsBqUBtiKwbKv+mHLH+758rXSctgk53+oUw2A==
X-Received: by 2002:a17:906:c298:: with SMTP id
 r24mr2679031ejz.93.1631087196440; 
 Wed, 08 Sep 2021 00:46:36 -0700 (PDT)
Received: from DESKTOP-KJS3OJ9.localdomain (ip-78-45-54-3.net.upcbroadband.cz.
 [78.45.54.3])
 by smtp.gmail.com with ESMTPSA id lm21sm561653ejb.58.2021.09.08.00.46.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Sep 2021 00:46:36 -0700 (PDT)
From: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
Date: Wed,  8 Sep 2021 09:46:21 +0200
Message-Id: <20210908074622.3271-2-danek.brat@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210908074622.3271-1-danek.brat@gmail.com>
References: <20210908074622.3271-1-danek.brat@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210908_004638_622989_3F5811FA 
X-CRM114-Status: GOOD (  14.75  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] usb: dwc2: Make having a phy optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

RGVzcGl0ZSB1c2luZyAncGh5X29wdGlvbmFsX2dldCcgdG8gZ2V0IGEgJ3VzYjJfcGh5JyBpbnNp
ZGUgaXRzIHByb2JlLAp0aGUgZHJpdmVyIHdvdWxkIGZhaWwgaWYgaXQgZGlkbnQgZmluZCBpdC4g
QWxzbywgdGhlcmUgaXMgbm8gS2NvbmZpZwpkZXBlbmRlbmN5IG9uICdDT05GSUdfR0VORVJJQ19Q
SFknLCBzbyB3aXRob3V0IGl0IGRlZmluZWQgdGUgcGh5CmZ1bmN0aW9ucyBhcmUgdW5pbXBsZW1l
bnRlZCBhbmQgYWx3YXlzIHJldHVybiAtRU5PU1lTIG1ha2luZyBkd2MyIHByb2JlCmFsd2F5cyBm
YWlsIHRvby4gU2luY2UgdGhlICdkd2MyLT5waHknIGlzIG9wdGlvbmFsLCB0aGUgZHJpdmVyIHdh
cwptb2RpZmllZCB0byByZWZsZWN0IHRoaXMuClRlc3RlZCB3b3JraW5nIG9uIFJhc3BiZXJyeSBQ
aSAzQisuCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgQnLDoXQgPGRhbmVrLmJyYXRAZ21haWwuY29t
PgotLS0KIGRyaXZlcnMvdXNiL2R3YzIvZHdjMi5jIHwgMzggKysrKysrKysrKysrKysrKysrKysr
Ky0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCAxNiBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3VzYi9kd2MyL2R3YzIuYyBiL2RyaXZl
cnMvdXNiL2R3YzIvZHdjMi5jCmluZGV4IDk4OTM5NzdiOC4uOGYzZjhkYTAwIDEwMDY0NAotLS0g
YS9kcml2ZXJzL3VzYi9kd2MyL2R3YzIuYworKysgYi9kcml2ZXJzL3VzYi9kd2MyL2R3YzIuYwpA
QCAtNzIsMjAgKzcyLDIyIEBAIHN0YXRpYyBpbnQgZHdjMl9wcm9iZShzdHJ1Y3QgZGV2aWNlX2Qg
KmRldikKIAlpZiAocmV0KQogCQlnb3RvIGNsa19kaXNhYmxlOwogCi0JZHdjMi0+cGh5ID0gcGh5
X29wdGlvbmFsX2dldChkZXYsICJ1c2IyLXBoeSIpOwotCWlmIChJU19FUlIoZHdjMi0+cGh5KSkg
ewotCQlyZXQgPSBQVFJfRVJSKGR3YzItPnBoeSk7Ci0JCWdvdG8gY2xrX2Rpc2FibGU7CisJaWYg
KElTX0VOQUJMRUQoQ09ORklHX0dFTkVSSUNfUEhZKSkgeworCQlkd2MyLT5waHkgPSBwaHlfb3B0
aW9uYWxfZ2V0KGRldiwgInVzYjItcGh5Iik7CisJCWlmICghZHdjMi0+cGh5IHx8IElTX0VSUihk
d2MyLT5waHkpKSB7CisJCQlkZXZfd2FybihkZXYsICJEaWRudCBmaW5kIGFueSAndXNiMi1waHkn
XG4iKTsKKwkJCWR3YzItPnBoeSA9IE5VTEw7CisJCX0gZWxzZSB7CisJCQlyZXQgPSBwaHlfcG93
ZXJfb24oZHdjMi0+cGh5KTsKKwkJCWlmIChyZXQpCisJCQkJZ290byBjbGtfZGlzYWJsZTsKKwor
CQkJcmV0ID0gcGh5X2luaXQoZHdjMi0+cGh5KTsKKwkJCWlmIChyZXQpCisJCQkJZ290byBwaHlf
cG93ZXJfb2ZmOworCQl9CiAJfQogCi0JcmV0ID0gcGh5X3Bvd2VyX29uKGR3YzItPnBoeSk7Ci0J
aWYgKHJldCkKLQkJZ290byBjbGtfZGlzYWJsZTsKLQotCXJldCA9IHBoeV9pbml0KGR3YzItPnBo
eSk7Ci0JaWYgKHJldCkKLQkJZ290byBwaHlfcG93ZXJfb2ZmOwotCiAJcmV0ID0gZHdjMl9jaGVj
a19jb3JlX3ZlcnNpb24oZHdjMik7CiAJaWYgKHJldCkKIAkJZ290byBlcnJvcjsKQEAgLTEyMCw5
ICsxMjIsMTEgQEAgc3RhdGljIGludCBkd2MyX3Byb2JlKHN0cnVjdCBkZXZpY2VfZCAqZGV2KQog
CiAJcmV0dXJuIDA7CiBlcnJvcjoKLQlwaHlfZXhpdChkd2MyLT5waHkpOworCWlmIChkd2MyLT5w
aHkpCisJCXBoeV9leGl0KGR3YzItPnBoeSk7CiBwaHlfcG93ZXJfb2ZmOgotCXBoeV9wb3dlcl9v
ZmYoZHdjMi0+cGh5KTsKKwlpZiAoZHdjMi0+cGh5KQorCQlwaHlfcG93ZXJfb2ZmKGR3YzItPnBo
eSk7CiBjbGtfZGlzYWJsZToKIAljbGtfZGlzYWJsZShkd2MyLT5jbGspOwogY2xrX3B1dDoKQEAg
LTE0MCw4ICsxNDQsMTAgQEAgc3RhdGljIHZvaWQgZHdjMl9yZW1vdmUoc3RydWN0IGRldmljZV9k
ICpkZXYpCiAJZHdjMl9ob3N0X3VuaW5pdChkd2MyKTsKIAlkd2MyX2dhZGdldF91bmluaXQoZHdj
Mik7CiAKLQlwaHlfZXhpdChkd2MyLT5waHkpOwotCXBoeV9wb3dlcl9vZmYoZHdjMi0+cGh5KTsK
KwlpZiAoZHdjMi0+cGh5KSB7CisJCXBoeV9leGl0KGR3YzItPnBoeSk7CisJCXBoeV9wb3dlcl9v
ZmYoZHdjMi0+cGh5KTsKKwl9CiB9CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lk
IGR3YzJfcGxhdGZvcm1fZHRfaWRzW10gPSB7Ci0tIAoyLjE3LjEKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJl
Ym94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9iYXJlYm94Cg==

