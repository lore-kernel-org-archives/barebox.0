Delivery-date: Thu, 05 May 2022 10:03:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWSm-002UTA-DF
	for lore@lore.pengutronix.de; Thu, 05 May 2022 10:03:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWSj-0007tC-Ni
	for lore@pengutronix.de; Thu, 05 May 2022 10:03:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LydznqHGEEMXSi5P51JJDx77HUox5JIXhzwyaKjo7/8=; b=H+ttJJ76EQUg7s
	lSOZ50Mrj8zCqag9Vm1rTpDIHovPTV88naIvUANwb8N/a4fELh8YYnWqMRWlitO8l04qv8MQEsL5B
	2EqO/jQU6Q5+GmgWPD78AWVp8nn1StaUEcbagmsIGSUVmu4eM73/PRV5//Lmif6sIiwx+evuWlIPM
	hSic+n9Z3BYbukchpAMt9iYm7+CqU12L4TyDuXH2GQ+3Tq1lY9XOdq+tK7gcr4UVkuefFORbSTRKR
	EdZr+VTI71zdryGqB4kl7K0qwtJux4jozUk3vbdlknbFJBGA+++SojeAuNu946F3ZlfpGQlaKHPws
	1mkFDLEVv5ACv2FkfoUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmWRM-00EWny-H5; Thu, 05 May 2022 08:02:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmWR2-00EWbC-Re
 for barebox@lists.infradead.org; Thu, 05 May 2022 08:02:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQx-0006sv-Uy; Thu, 05 May 2022 10:01:59 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQy-000TOE-Gb; Thu, 05 May 2022 10:01:59 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQv-004hai-AM; Thu, 05 May 2022 10:01:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ukl@pengutronix.de, =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>,
 ore@pengutronix.de, Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 May 2022 10:01:39 +0200
Message-Id: <20220505080152.1068424-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220505080152.1068424-1-a.fatoum@pengutronix.de>
References: <20220505080152.1068424-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_010205_071372_B62D7BDB 
X-CRM114-Status: GOOD (  10.35  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 02/15] of: address: fix printing of OF node name in error
 message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

RnJvbTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4K
CmJhcmVib3ggaGFzIG5vICVwT0YuIE9wZW4gY29kZSB0aGlzIGluc3RhbmNlIHRvIHlpZWxkIGEg
YmV0dGVyIGVycm9yCm1lc3NhZ2UuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8
dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgpTaWduZWQtb2ZmLWJ5OiBBaG1hZCBGYXRv
dW0gPGEuZmF0b3VtQHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvb2YvYWRkcmVzcy5jIHwg
NCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvb2YvYWRkcmVzcy5jIGIvZHJpdmVycy9vZi9hZGRyZXNzLmMK
aW5kZXggNjdlODA2MmY1ZDE3Li5iY2VlN2Q1ZDliYzIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvb2Yv
YWRkcmVzcy5jCisrKyBiL2RyaXZlcnMvb2YvYWRkcmVzcy5jCkBAIC02NzAsOCArNjcwLDggQEAg
aW50IG9mX2RtYV9nZXRfcmFuZ2Uoc3RydWN0IGRldmljZV9ub2RlICpucCwgdTY0ICpkbWFfYWRk
ciwgdTY0ICpwYWRkciwgdTY0ICpzaXoKIAlkbWFhZGRyID0gb2ZfcmVhZF9udW1iZXIocmFuZ2Vz
LCBuYWRkcik7CiAJKnBhZGRyID0gb2ZfdHJhbnNsYXRlX2RtYV9hZGRyZXNzKG5vZGUsIHJhbmdl
cyArIG5hZGRyKTsKIAlpZiAoKnBhZGRyID09IE9GX0JBRF9BRERSKSB7Ci0JCXByX2VycigidHJh
bnNsYXRpb24gb2YgRE1BIGFkZHJlc3MoJWxseCkgdG8gQ1BVIGFkZHJlc3MgZmFpbGVkIG5vZGUo
JXBPRilcbiIsCi0JCSAgICAgICBkbWFhZGRyLCBucCk7CisJCXByX2VycigidHJhbnNsYXRpb24g
b2YgRE1BIGFkZHJlc3MoJWxseCkgdG8gQ1BVIGFkZHJlc3MgZmFpbGVkIG5vZGUoJXMpXG4iLAor
CQkgICAgICAgZG1hYWRkciwgbnAtPm5hbWUpOwogCQlyZXQgPSAtRUlOVkFMOwogCQlnb3RvIG91
dDsKIAl9Ci0tIAoyLjMwLjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

