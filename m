Delivery-date: Tue, 30 Nov 2021 21:31:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ms9nD-0004iW-AY
	for lore@lore.pengutronix.de; Tue, 30 Nov 2021 21:31:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ms9nC-0000F5-FM
	for lore@pengutronix.de; Tue, 30 Nov 2021 21:31:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3MYKBPPndY9R2mxoMUKPCrFKIilgv5MIJf+4WXvmyp8=; b=NYJOjiDRfjETEX
	6LW5rhgpSrDFb9e7GjGMDKPy1CyeJJC5wFgwkSNbuT29UscoWX/ydEVRybd9ESqUDoKHS4+zBokAe
	fGQSdloLleWM18JNQ+hu9b3MVJvoIlIRf42F5sCEsdEGIAVLdZupFRjse941Os5I1GVmbgpv4u2zI
	e5HjU92RAXppT1ivHIsNDNkJTFUWPwuoFHMwR9f1kivtzongHu/+8TYIUV312swb84z41wIV6N/tk
	pzEMzknwSfp7Yzi96pT0a5stvqr4oGToborTBsecbrJwWKOihiz7NZG8pOkFUM2ObjKCxDJ0jhXGS
	TuR95fCIdUGDAkfEXovA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ms9lz-006eO2-7A; Tue, 30 Nov 2021 20:30:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ms9lt-006eNH-UW
 for barebox@lists.infradead.org; Tue, 30 Nov 2021 20:30:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1ms9ls-0008Mf-Ok; Tue, 30 Nov 2021 21:30:36 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1ms9ls-001z6n-K8; Tue, 30 Nov 2021 21:30:35 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1ms9lr-0005n9-AO; Tue, 30 Nov 2021 21:30:35 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 30 Nov 2021 21:30:26 +0100
Message-Id: <20211130203026.360693-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; i=nQWfeuc9Wv6YAQPMtD7HKtiqIzxIQDxn0mH/ApvwGpc=;
 m=PaMo53BR05Te5cE6ggcvMLmAZSVQ/RgFMyeFQWkruxc=;
 p=JrjDSBc0x/NNCBKmxSaUtVnNbBr3cgNCxZDRtJS5mRI=;
 g=8faa631abbcf48b93cf7618f88599de1ce131519
X-Patch-Sig: m=pgp; i=u.kleine-koenig@pengutronix.de;
 s=0x0D2511F322BFAB1C1580266BE2DCDD9132669BD6;
 b=iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmGmid0ACgkQwfwUeK3K7Anhfwf/ScS
 EcRtA0UjPlbtIg0jT+CZfq41ewsiw2+kVOMSkG/nrTdvK3XqkFMkyq9Naw56OEd0qcTbOnvwo7SoE
 bhijZt1ayEuVmyaiTalWNlTXq/h/jmgKJxgGRDor2WRHY5hAnC2AgCte4cUcazK+YEIHWMpirUg3T
 WgbOtNRdID2WjCC0/7cv/cjOGMSYmiA3GN+YOczypX3R+Y/mASFO/cfzdVscQmCTLJ9g14tPzCwK2
 vphj/9iBwq5jbMHTmW+HDgFnHEDATu0djNNDv9VMTZWUUDcXOucdArYCdXr0+/GhNr0TbqXxHBs7c
 jCRazAuvep+kN/PMfxBWEfbrnyknEDA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_123038_010892_99CFBBAD 
X-CRM114-Status: GOOD (  12.45  )
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
Subject: [PATCH] mci: bcm2835: Don't send MMC_CMD_GO_IDLE_STATE at the end of
 .init()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

VGhlIGNvcmUgc2VuZHMgdGhpcyBjb21tYW5kIGFueWhvdyBzaG9ydGx5IGFmdGVyIGNhbGxpbmcg
LmluaXQoKS4gU28KZG9pbmcgaXQgaW4gYmNtMjgzNV9tY2lfcmVzZXQoKSBpcyBvbmx5IG92ZXJo
ZWFkIGlmIGl0IHN1Y2NlZWRzIGFuZAppZiB0aGVyZSBpcyBhIHByb2JsZW0gaXQgaXMgbm90aWNl
ZCBhIHRhZCBlYXJsaWVyIHdoaWNoIGhhcyBsaXR0bGUKYmVuZWZpdCBjb21wYXJlZCB0byB0aGUg
dGltZW91dCBpbiBiY20yODM1X21jaV93YWl0X2NvbW1hbmRfZG9uZSgpLgoKU28gc2ltcGxpZnkg
YW5kIGRyb3AgdGhlIHRyYW5zZmVyLgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcg
PHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2ZXJzL21jaS9tY2ktYmNt
MjgzNS5jIHwgNSArLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCA0IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWNpL21jaS1iY20yODM1LmMgYi9kcml2ZXJz
L21jaS9tY2ktYmNtMjgzNS5jCmluZGV4IDQ5MTNkYzI3ZjhhMy4uMTBmNTg4OTMwY2RhIDEwMDY0
NAotLS0gYS9kcml2ZXJzL21jaS9tY2ktYmNtMjgzNS5jCisrKyBiL2RyaXZlcnMvbWNpL21jaS1i
Y20yODM1LmMKQEAgLTM1MiwxMCArMzUyLDcgQEAgc3RhdGljIGludCBiY20yODM1X21jaV9yZXNl
dChzdHJ1Y3QgbWNpX2hvc3QgKm1jaSwgc3RydWN0IGRldmljZV9kICptY2lfZGV2KQogCXNkaGNp
X3dyaXRlMzIoJmhvc3QtPnNkaGNpLCBTREhDSV9JTlRfU1RBVFVTLAogCQkJMHhGRkZGRkZGRik7
CiAKLQkvKk5vdyB3cml0ZSBjb21tYW5kIDAgYW5kIHNlZSBpZiB3ZSBnZXQgcmVzcG9uc2UqLwot
CXNkaGNpX3dyaXRlMzIoJmhvc3QtPnNkaGNpLCBTREhDSV9BUkdVTUVOVCwgMHgwKTsKLQlzZGhj
aV93cml0ZTMyKCZob3N0LT5zZGhjaSwgU0RIQ0lfVFJBTlNGRVJfTU9ERV9fQ09NTUFORCwgMHgw
KTsKLQlyZXR1cm4gYmNtMjgzNV9tY2lfd2FpdF9jb21tYW5kX2RvbmUoaG9zdCk7CisJcmV0dXJu
IDA7CiB9CiAKIHN0YXRpYyBpbnQgYmNtMjgzNV9tY2lfcHJvYmUoc3RydWN0IGRldmljZV9kICpo
d19kZXYpCgpiYXNlLWNvbW1pdDogZjJkZDg4OTY4NDY3NTc4MjlmYjMwMzNmNDFiODliZTNmYzAz
N2Q3OAotLSAKMi4zMC4yCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

