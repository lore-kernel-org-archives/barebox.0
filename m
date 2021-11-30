Delivery-date: Tue, 30 Nov 2021 17:04:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ms5ci-0001Bi-FY
	for lore@lore.pengutronix.de; Tue, 30 Nov 2021 17:04:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ms5ch-0005BL-JO
	for lore@pengutronix.de; Tue, 30 Nov 2021 17:04:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LemOeJr3IlI73ZpKBtsYmx7LAeThAIBdDr09bFd5JQs=; b=IJmKnHM1SXdpmm
	xqAoowVd1pDmt/ZDPgn9JnfBxWArtn6+mvgtU8rNBjz8qV03rWZII/lmA1G2tS2iZ9x1GXHCf3ulc
	u/657wuuBA0WGR/CZZzBqWbVLbP/MNwOb3AI5J62nTLl7fuP8whHT/n8HR+cFnI3EBv935v0DU/R5
	TyydaRHU/vAX9sMSIc05qxDb0oRpbPHG475HLU20WZ+mBXHPp+5zxPTfel8abw6HYTTCWHjhHKRZV
	kZwSc6+aCWykhZAPKoPUydbtndwMD5zbJ70ggYfjBHhkmxOkftSBmGzwYzxBtGDDNYkvM2PtYao8/
	Y1hRWE46aWA79YnBMLMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ms5bD-0061kY-1a; Tue, 30 Nov 2021 16:03:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ms5b8-0061ja-A1
 for barebox@lists.infradead.org; Tue, 30 Nov 2021 16:03:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1ms5b6-00056j-H0; Tue, 30 Nov 2021 17:03:12 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1ms5b4-001wq3-PX; Tue, 30 Nov 2021 17:03:10 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1ms5b3-0008CB-R1; Tue, 30 Nov 2021 17:03:09 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 30 Nov 2021 17:03:08 +0100
Message-Id: <20211130160308.316863-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; i=UFGHkP8UA0tz1iC/I1vYNp0SPusaLfc6YCh3kiUS0Qg=;
 m=CpNAjkylLd29xP/MvjXKbsSpi3L0qoglmJ3yP7OQL7s=;
 p=QuTrmMVOLxvVaXdpvaFpc7SMAGcCTsX5LRVGNIM4aKM=;
 g=0f5b58ec51a7c62574b4959d8eacb4a71584ce43
X-Patch-Sig: m=pgp; i=u.kleine-koenig@pengutronix.de;
 s=0x0D2511F322BFAB1C1580266BE2DCDD9132669BD6;
 b=iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmGmSy4ACgkQwfwUeK3K7AmjDAf/fXX
 CvskR9KLBj4ZaLepOZLxHvty42Lfc4kCFa2WJg3lFPjq/hQ2ylQM6ubYynvNKXOD6UGcndtk5rGHw
 Kb4JB8cy7WeOqvmiXhqznwk61WJtS6GMzXsBsymzyWAefHQ/L7ofhntC786niKZjM7exw/KdVSZsL
 KarAvkePN+Wn2mWtXf/D31Wx0C+3xTPfSQLTlbwIMqimp8otzjMaxNbCbtdeNM/BjlbAnm3Tut+Mh
 LXcNNXiirhk8cwFYGEYKJ/Yjz3fEU6+exhXRVsXPiBGjaIcf7aFYM+5JpM2VpKVrUjX721SlLi7Kl
 Qm26HQT243R4GBoYdZ0RLKGn+7RJnvQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_080314_383122_C65E50B1 
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] scripts/kwboot: Fix normalizing timeval
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SWYgdHYudHZfdXNlYyBpcyAxMDAwMDAwIHRoZSBzdHJ1Y3R1cmUgbmVlZHMgbm9ybWFsaXppbmcs
IHRvby4gU28gdGhlCnJpZ2h0IGNoZWNrIHdvdWxkIGJlOgoKCWlmICh0di50dl91c2VjID49IDEw
MDAwMDApIHsKCQkuLi4KCkJ1dCBhcyBub3JtYWxpemluZyBkb2Vzbid0IGRlc3Ryb3kgYW55dGhp
bmcgZXZlbiBmb3Igc21hbGxlciB2YWx1ZXMsCmp1c3QgZG8gaXQgdW5jb25kaXRpb25hbGx5IHRv
IHNpbXBsaWZ5IGEgYml0LgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xl
aW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBzY3JpcHRzL2t3Ym9vdC5jIHwgOSArKysr
LS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvc2NyaXB0cy9rd2Jvb3QuYyBiL3NjcmlwdHMva3dib290LmMKaW5kZXggNjBl
OGE2OWQxODdkLi4xY2JiNDU2OTM1ZjIgMTAwNjQ0Ci0tLSBhL3NjcmlwdHMva3dib290LmMKKysr
IGIvc2NyaXB0cy9rd2Jvb3QuYwpAQCAtMTQ3LDEyICsxNDcsMTEgQEAga3dib290X3R0eV9yZWN2
KGludCBmZCwgdm9pZCAqYnVmLCBzaXplX3QgbGVuLCBpbnQgdGltZW8pCiAJRkRfWkVSTygmcmZk
cyk7CiAJRkRfU0VUKGZkLCAmcmZkcyk7CiAKLQl0di50dl9zZWMgPSAwOwogCXR2LnR2X3VzZWMg
PSB0aW1lbyAqIDEwMDA7Ci0JaWYgKHR2LnR2X3VzZWMgPiAxMDAwMDAwKSB7Ci0JCXR2LnR2X3Nl
YyArPSB0di50dl91c2VjIC8gMTAwMDAwMDsKLQkJdHYudHZfdXNlYyAlPSAxMDAwMDAwOwotCX0K
KworCS8qIG5vcm1hbGl6ZSB0aW1ldmFsICovCisJdHYudHZfc2VjID0gdHYudHZfdXNlYyAvIDEw
MDAwMDA7CisJdHYudHZfdXNlYyAlPSAxMDAwMDAwOwogCiAJZG8gewogCQluZmRzID0gc2VsZWN0
KGZkICsgMSwgJnJmZHMsIE5VTEwsIE5VTEwsICZ0dik7CgpiYXNlLWNvbW1pdDogZjJkZDg4OTY4
NDY3NTc4MjlmYjMwMzNmNDFiODliZTNmYzAzN2Q3OAotLSAKMi4zMC4yCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QK
YmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

