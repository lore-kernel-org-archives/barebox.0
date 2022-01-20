Delivery-date: Thu, 20 Jan 2022 12:49:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nAVw6-007bru-MM
	for lore@lore.pengutronix.de; Thu, 20 Jan 2022 12:49:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nAVw5-0005JJ-K6
	for lore@pengutronix.de; Thu, 20 Jan 2022 12:49:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=elqeMNZP1SqrromWxV/rZOBjL6eIDPoqz1o2jJOQEas=; b=a0GWN/UP1Ma8nG
	UYrUCcdNn/1/LRe6pE0UBi85JVCSkBzzKZOj1gndBjDas9kMXYJWatGC/gu52OVovSsuyJ9805/M9
	S58VQIpMTKSz4y7ic3zLps5jZDgXHo/YGjJxVR12TFZU38XoCfiy8xAq/xynrBa6fX28o+qOQ6YXk
	AGIZ+hG1w+UofTbT+kTtO6DftdY6/1Ta90YfrH200nMUMvCmslma2fhxWKphbZFxCY3h7EKbtRM+R
	xyTqlzi7/dUg8pULj8qiinGP6622fWbyS2XupQky8+7VCoPMmr6zZkpryflG3z4b5G5LvKRnbap65
	1q+ryKEYjHDyQxlUvQrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nAVui-00B7Ok-K4; Thu, 20 Jan 2022 11:47:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nAVub-00B7O1-V2
 for barebox@lists.infradead.org; Thu, 20 Jan 2022 11:47:31 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <uol@pengutronix.de>)
 id 1nAVuZ-000566-Oj; Thu, 20 Jan 2022 12:47:27 +0100
Received: from uol by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <uol@pengutronix.de>)
 id 1nAVuZ-00ApSy-8M; Thu, 20 Jan 2022 12:47:27 +0100
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 20 Jan 2022 12:47:25 +0100
Message-Id: <20220120114725.2580392-2-u.oelmann@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220120114725.2580392-1-u.oelmann@pengutronix.de>
References: <20220120114725.2580392-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220120_034730_027994_6B761876 
X-CRM114-Status: GOOD (  10.92  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] Documentation: reboot-mode: mention that
 system.reboot_mode.next is initially set to 'normal'
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

U2lnbmVkLW9mZi1ieTogVWxyaWNoIMOWbG1hbm4gPHUub2VsbWFubkBwZW5ndXRyb25peC5kZT4K
LS0tCiBEb2N1bWVudGF0aW9uL3VzZXIvcmVib290LW1vZGUucnN0IHwgMyArKy0KIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL3VzZXIvcmVib290LW1vZGUucnN0IGIvRG9jdW1lbnRhdGlvbi91c2VyL3JlYm9v
dC1tb2RlLnJzdAppbmRleCAyNGRlYWU3ODcyN2UuLjgzZDQxMzZiODU5MiAxMDA2NDQKLS0tIGEv
RG9jdW1lbnRhdGlvbi91c2VyL3JlYm9vdC1tb2RlLnJzdAorKysgYi9Eb2N1bWVudGF0aW9uL3Vz
ZXIvcmVib290LW1vZGUucnN0CkBAIC0zMSw3ICszMSw4IEBAIERldmljZXMgcmVnaXN0ZXJlZCB3
aXRoIHRoZSByZWJvb3QgbW9kZSBBUEkgZ2FpbiB0d28gcGFyYW1ldGVyczoKICAtIGBgJGRldl9v
Zl9yZWJvb3RfbW9kZS5wcmV2YGAgKHJlYWQtb25seSk6IFRoZSByZWJvb3QgbW9kZSB0aGF0IHdh
cwogICAgc2V0IHByZXZpb3VzbHkgdG8gYmFyZWJveCBzdGFydHVwLgogIC0gYGAkZGV2X29mX3Jl
Ym9vdF9tb2RlLm5leHRgYDogVGhlIG5leHQgcmVib290IG1vZGUsIGZvciB3aGVuIHRoZQotICAg
c3lzdGVtIGlzIHJlc2V0LgorICAgc3lzdGVtIGlzIHJlc2V0LiBJdHMgaW5pdGlhbCB2YWx1ZSBh
ZnRlciBzdGFydHVwIGlzIDAgd2hpY2ggY29ycmVzcG9uZHMKKyAgIHRvIGBgbm9ybWFsYGAgYnkg
ZGVmYXVsdC4KIAogVGhlIHJlYm9vdCBtb2RlIGRyaXZlciBjb3JlIHVzZSB0aGUgYWxpYXMgbmFt
ZSBpZiBhdmFpbGFibGUgdG8gbmFtZQogdGhlIGRldmljZS4gQnkgY29udmVudGlvbiwgdGhpcyBz
aG91bGQgZW5kIHdpdGggYGAucmVib290X21vZGVgYCwgZS5nLjo6Ci0tIAoyLjMwLjIKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxp
bmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

