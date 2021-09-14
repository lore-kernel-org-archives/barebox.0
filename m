Delivery-date: Tue, 14 Sep 2021 11:03:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQ4Ld-0003az-Hm
	for lore@lore.pengutronix.de; Tue, 14 Sep 2021 11:03:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQ4Lc-0000MC-LO
	for lore@pengutronix.de; Tue, 14 Sep 2021 11:03:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OwAi38c4m6WWdIeHG3eAagIWK39s/GzdN0oIN8NPMvo=; b=OqZ2HvSVPc71x1
	yJaSxF3k17QyycT5YQrR7qs1KeMHw/dGXc8KQVDoEmqi0EJjQw3pef8+1BYRjVovWeMlrCk8PN2oL
	CVsgInAdGr5ECihimmKbp1e2Ckw25EbaiHDqIGm6ozCIRSg3S57DBqdF30EppxDjfKkPtZT4ehY4/
	APlbft4iGTj6xV0otEHtpvgs5ubYXWGxnkFl0+Ht15PZu+KILn0SwODhm24afT8FMipiUZ+1zhPs7
	LKxyYZzbHguVaPcdD4Owyr9+4wiUqQfFIRKEDh8bnoYGv7v8L2sxGRYOsjU4IGQxuf95PGAkPSA+e
	C6Ia0PwAtCPjVA43A1Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQ4Ip-004ooX-Bl; Tue, 14 Sep 2021 09:00:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQ4Ik-004on0-Rq
 for barebox@lists.infradead.org; Tue, 14 Sep 2021 09:00:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mQ4Ih-0008MQ-Qf; Tue, 14 Sep 2021 11:00:23 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mQ4Ig-0005kH-7X; Tue, 14 Sep 2021 11:00:22 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mQ4Ig-00069H-6W; Tue, 14 Sep 2021 11:00:22 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 14 Sep 2021 11:00:17 +0200
Message-Id: <20210914090017.39627-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; i=kS2nXsqFL+IOBRYnMTD6Sun03GLevfXGe7pae4ix/CM=;
 m=Xo3p/83i8DayecSIOI44U4iwB3VhAqA3VZc4XZzdyvs=;
 p=5+bfjUC8nWqf+4EJu7YQqIVoiQlZcX53WV58UFrMzSU=;
 g=ca10543a4f8834fb300e0137bf9e62d85c108d8f
X-Patch-Sig: m=pgp; i=u.kleine-koenig@pengutronix.de;
 s=0x0D2511F322BFAB1C1580266BE2DCDD9132669BD6;
 b=iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmFAZJ4ACgkQwfwUeK3K7AlLdwf6Avt
 /1JwkHsWd07ehvhXz91PPTFIMu8bgywPD6BSugUSHenVU6CnYc1Wzz58ry4IxkCNdwTZEZCcmtYxC
 kGEwOMJ/UZPwW/6TK0Hk/PzSBdiWs8U3pfS5Hh26zFSVb+ws3mSH+GoCU9LABLJXKz0sOKnhO4Q+k
 97YKWaiB+gmbz5/b0nsdv3LlcRwNLOFfT/Hz3H7zV2D3frfIdptpteUOsZXxuumCt3b+kHH3zViIT
 PlXCHd0fr3Y/vzBHM/jvk9lQuGZaQE9Cmtc5itJfJ4iDQa5Xt+lzyQyZ+gCiIV2XCR0gex210u+ZT
 jvJ7lIRuMuXmw93JwIHCde/hVZY5IiQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210914_020026_974998_25B1C1D0 
X-CRM114-Status: GOOD (  11.99  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mci: Improve error message for non-existent vmmc regulator
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

VGhlcmUgYXJlIHRocmVlIGltcHJvdmVtZW50czogYSkgVXNlIGEgYWxyZWFkeSBpbml0aWFsaXpl
ZCBkZXZpY2UgYXMgZmlyc3QKcGFyYW1ldGVyIHRvIGRldl9lcnIoKSBhbmQgYikgaW5kaWNhdGUg
dGhhdCB0aGUgZXJyb3Igd2lsbCBiZSBpZ25vcmVkLCBhbmQKYykgZG93bmdyYWRlIHRvIGEgd2Fy
bmluZy4KClRoaXMgY2hhbmdlcyB0aGUgZXJyb3IgbWVzc2FnZSBmcm9tCgoJRVJST1I6IDxOVUxM
PjogRmFpbGVkIHRvIGdldCAndm1tYycgcmVndWxhdG9yLgoKdG8KCglXQVJOSU5HOiBiY20yODM1
X21jaSBmZTM0MDAwMC5tbWNAN2UzNDAwMDAub2Y6IEZhaWxlZCB0byBnZXQgJ3ZtbWMnIHJlZ3Vs
YXRvciAoaWdub3JlZCkuCgpvbiBhIFJhc3BiZXJyeSBQaSA0LgoKU2lnbmVkLW9mZi1ieTogVXdl
IEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2
ZXJzL21jaS9tY2ktY29yZS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tY2kvbWNpLWNvcmUuYyBiL2Ry
aXZlcnMvbWNpL21jaS1jb3JlLmMKaW5kZXggOTJhNzNjOGYxZGZlLi44MmUyZjgyZjUzNzcgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvbWNpL21jaS1jb3JlLmMKKysrIGIvZHJpdmVycy9tY2kvbWNpLWNv
cmUuYwpAQCAtMTkyMCw3ICsxOTIwLDcgQEAgaW50IG1jaV9yZWdpc3RlcihzdHJ1Y3QgbWNpX2hv
c3QgKmhvc3QpCiAKIAlob3N0LT5zdXBwbHkgPSByZWd1bGF0b3JfZ2V0KGh3X2RldiwgInZtbWMi
KTsKIAlpZiAoSVNfRVJSKGhvc3QtPnN1cHBseSkpIHsKLQkJZGV2X2VycigmbWNpLT5kZXYsICJG
YWlsZWQgdG8gZ2V0ICd2bW1jJyByZWd1bGF0b3IuXG4iKTsKKwkJZGV2X3dhcm4oaHdfZGV2LCAi
RmFpbGVkIHRvIGdldCAndm1tYycgcmVndWxhdG9yIChpZ25vcmVkKS5cbiIpOwogCQlob3N0LT5z
dXBwbHkgPSBOVUxMOwogCX0KIAotLSAKMi4zMC4yCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vYmFyZWJveAo=

