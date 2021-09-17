Delivery-date: Fri, 17 Sep 2021 11:43:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mRAPO-00043u-KW
	for lore@lore.pengutronix.de; Fri, 17 Sep 2021 11:43:50 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mRAPN-0003UC-KK
	for lore@pengutronix.de; Fri, 17 Sep 2021 11:43:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1jdDVqwMd9pC4hmXwAHhTuajmLGDyAJRQRra4mOVFI0=; b=v8v0cOq03iWJ/3
	eun2gy2+Dn8qrX++Zw5LEcJrfzYVgnjDfo/P1mqDXiTtIxCjN/inPyu/D/nS+2SPD1XToh1WIuIaD
	CE3UZRPM+Fwt5J84PQAC2AZZYVY3vaod7aS0xOAovbLYNI+RR0FJupoYh7BAg1uLH6/di4XsIcMKT
	AKT9dHHVTTsGtkH8seE/fXy4NTZXVKzo1/1jYAniJx5pApgnk7P/BW2yjbxISbH4sGlfLRe/b2h8X
	LZNbDzXV3OcjjWYFjU99jeThAxzZaOOZ125bPImamc6OffKwtI+MRmUxiyXEMP1hlU3a8xICEQRMF
	h38K5sVwdWyMMM1gHRnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRANp-00DeaU-DO; Fri, 17 Sep 2021 09:42:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRANh-00DeYe-Gh
 for barebox@lists.infradead.org; Fri, 17 Sep 2021 09:42:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mRANb-0003GI-6Y; Fri, 17 Sep 2021 11:41:59 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mRANZ-0006ni-AT; Fri, 17 Sep 2021 11:41:57 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mRANZ-0005K5-9Y; Fri, 17 Sep 2021 11:41:57 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 17 Sep 2021 11:41:52 +0200
Message-Id: <20210917094152.210494-2-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210917094152.210494-1-u.kleine-koenig@pengutronix.de>
References: <20210917094152.210494-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; i=VgXm2nR2Y9sBrzxiEpd+eBknZZbjHPutupDag3e0Gz0=;
 m=NPKSFfJ2mcsYp9VoNaizD+JNjGN960oz26vY1inRfmg=;
 p=Qd/SLIo6HP90xvwGOMRI+mLTNfF/sddbkzhfVObkcRA=;
 g=fd48c0a514574035bbf52fe14e37c9266c19837a
X-Patch-Sig: m=pgp; i=u.kleine-koenig@pengutronix.de;
 s=0x0D2511F322BFAB1C1580266BE2DCDD9132669BD6;
 b=iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmFEYt0ACgkQwfwUeK3K7AmqTAgAkI2
 Q1vAsBlRvNf88dD8vYp2xDiFfv94vKLEqJAZCLrDlWTWVwf/8jlelRWnT782EeHraKE8If0O5aVyR
 SsTF9B8TbJFU63kuIhPsRAA6G4/oV4XryVH9ox3t7PmyGD1eTRkYYaW8HsAioNiNuG2o7sENLpvWI
 2y47yMasbEEs6wAL4qXcunx9opsPMvRLf48IstYQ693PO1ztA8qPixGAeErNt0PTvOtl2F7mn7nSH
 BV5qQyaJodvb0oWB3/XBnwTs44vv9j/Vu0upa4ap2PpzgC/fXGcQOVbwO8HK7eHuyjWBnstzdyjbi
 pphHOfzlJRNDJyiM5vpWmRxwAsNQSxQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210917_024205_601544_CE159171 
X-CRM114-Status: GOOD (  13.88  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] pinctrl: bcm2835: Add support for bcm2711
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

RnJvbTogQWhtYWQgRmF0b3VtIDxhaG1hZEBhM2YuYXQ+CgpiY20yNzExLXJwaS00LWIuZHRzIGxp
c3RzIDU4IGdwaW8gbmFtZXMgYW5kIHRoZSBsaW51eCBkcml2ZXIgYWxzbyB1c2VzCjU4IEdQSU9z
IGZvciBiY20yNzExLgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5l
LWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2ZXJzL3BpbmN0cmwvcGluY3RybC1iY20y
ODM1LmMgfCAyMiArKysrKysrKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMjEgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGluY3RybC9w
aW5jdHJsLWJjbTI4MzUuYyBiL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLWJjbTI4MzUuYwppbmRl
eCAzOGM3ODhjODI5NDUuLjY4NGVhZDJmOGU1ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9waW5jdHJs
L3BpbmN0cmwtYmNtMjgzNS5jCisrKyBiL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLWJjbTI4MzUu
YwpAQCAtNTIsNiArNTIsMTAgQEAgc3RydWN0IGJjbTI4MzVfZ3Bpb19jaGlwIHsKIAlzdHJ1Y3Qg
cGluY3RybF9kZXZpY2UgcGN0bDsKIH07CiAKK3N0cnVjdCBwbGF0X2RhdGEgeworCXVuc2lnbmVk
IG5ncGlvczsKK307CisKIHN0YXRpYyBpbnQgYmNtMjgzNV9zZXRfZnVuY3Rpb24oc3RydWN0IGdw
aW9fY2hpcCAqY2hpcCwgdW5zaWduZWQgZ3BpbywgaW50IGZ1bmN0aW9uKQogewogCXN0cnVjdCBi
Y20yODM1X2dwaW9fY2hpcCAqYmNtZ3BpbyA9IGNvbnRhaW5lcl9vZihjaGlwLCBzdHJ1Y3QgYmNt
MjgzNV9ncGlvX2NoaXAsIGNoaXApOwpAQCAtMTQ5LDEwICsxNTMsMTMgQEAgc3RhdGljIHN0cnVj
dCBwaW5jdHJsX29wcyBiY20yODM1X3BpbmN0cmxfb3BzID0gewogCiBzdGF0aWMgaW50IGJjbTI4
MzVfZ3Bpb19wcm9iZShzdHJ1Y3QgZGV2aWNlX2QgKmRldikKIHsKKwljb25zdCBzdHJ1Y3QgcGxh
dF9kYXRhICpwbGF0X2RhdGE7CiAJc3RydWN0IHJlc291cmNlICppb3JlczsKIAlzdHJ1Y3QgYmNt
MjgzNV9ncGlvX2NoaXAgKmJjbWdwaW87CiAJaW50IHJldDsKIAorCXBsYXRfZGF0YSA9IGRldmlj
ZV9nZXRfbWF0Y2hfZGF0YShkZXYpOworCiAJYmNtZ3BpbyA9IHh6YWxsb2Moc2l6ZW9mKCpiY21n
cGlvKSk7CiAJaW9yZXMgPSBkZXZfcmVxdWVzdF9tZW1fcmVzb3VyY2UoZGV2LCAwKTsKIAlpZiAo
SVNfRVJSKGlvcmVzKSkKQEAgLTE2MCw3ICsxNjcsOCBAQCBzdGF0aWMgaW50IGJjbTI4MzVfZ3Bp
b19wcm9iZShzdHJ1Y3QgZGV2aWNlX2QgKmRldikKIAliY21ncGlvLT5iYXNlID0gSU9NRU0oaW9y
ZXMtPnN0YXJ0KTsKIAliY21ncGlvLT5jaGlwLm9wcyA9ICZiY20yODM1X2dwaW9fb3BzOwogCWJj
bWdwaW8tPmNoaXAuYmFzZSA9IDA7Ci0JYmNtZ3Bpby0+Y2hpcC5uZ3BpbyA9IDU0OworCWJjbWdw
aW8tPmNoaXAubmdwaW8gPSBwbGF0X2RhdGEtPm5ncGlvczsKKwogCWJjbWdwaW8tPmNoaXAuZGV2
ID0gZGV2OwogCWJjbWdwaW8tPnBjdGwub3BzID0gJmJjbTI4MzVfcGluY3RybF9vcHM7CiAJYmNt
Z3Bpby0+cGN0bC5kZXYgPSBkZXY7CkBAIC0xOTEsOSArMTk5LDIxIEBAIGVycjoKIAlyZXR1cm4g
cmV0OwogfQogCitzdGF0aWMgY29uc3Qgc3RydWN0IHBsYXRfZGF0YSBiY20yODM1X3BsYXRfZGF0
YSA9IHsKKwkubmdwaW9zID0gNTQsCit9OworCitzdGF0aWMgY29uc3Qgc3RydWN0IHBsYXRfZGF0
YSBiY20yNzExX3BsYXRfZGF0YSA9IHsKKwkubmdwaW9zID0gNTgsCit9OworCiBzdGF0aWMgX19t
YXliZV91bnVzZWQgc3RydWN0IG9mX2RldmljZV9pZCBiY20yODM1X2dwaW9fZHRfaWRzW10gPSB7
CiAJewogCQkuY29tcGF0aWJsZSA9ICJicmNtLGJjbTI4MzUtZ3BpbyIsCisJCS5kYXRhID0gJmJj
bTI4MzVfcGxhdF9kYXRhLAorCX0sIHsKKwkJLmNvbXBhdGlibGUgPSAiYnJjbSxiY20yNzExLWdw
aW8iLAorCQkuZGF0YSA9ICZiY20yNzExX3BsYXRfZGF0YSwKIAl9LCB7CiAJCS8qIHNlbnRpbmVs
ICovCiAJfQotLSAKMi4zMC4yCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

