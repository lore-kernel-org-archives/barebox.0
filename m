Delivery-date: Thu, 16 Sep 2021 11:38:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQnqQ-0006gL-Rr
	for lore@lore.pengutronix.de; Thu, 16 Sep 2021 11:38:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQnqQ-0007at-0i
	for lore@pengutronix.de; Thu, 16 Sep 2021 11:38:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+2fCvNvelwXNL5PC1jN48SBVn6B0Drg6FpIoEbUsuto=; b=CPruYInPUj5W7C
	6lxgD2O9QSjFYTmjJQxMdIejwYIIEXu6mU6iJUSRWcc9u+1V3xg1xCQQKrq4ZzcopxOwe28umapGJ
	qcLsaxfaxRzjeQ+XquynZdptSzGUHHqz4po0c3snnWQCpXa/JQ+BM/eUobe+xGDMelQKz5qoB2FwO
	MTL7LpEQqWZj4MlSAeyOcVmUt4U51HMe4OF0L+zqFH2ECm9KGSl16Oh2vriOHu+DblD0tIJV3uWLd
	6/C0m76/J77CrZTwd535anMtVKMiaGQ4Fs4Y3CMoDGzr6bXDR93DtPj+FZ0qXZMsxEK21QyVcfQ/b
	gPolJEFOTtY29m7l9nyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQnpE-00AjKT-CL; Thu, 16 Sep 2021 09:37:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQnp9-00AjJE-Qr
 for barebox@lists.infradead.org; Thu, 16 Sep 2021 09:36:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mQnp8-0007Nl-Hy; Thu, 16 Sep 2021 11:36:54 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mQnp8-0003gf-0z; Thu, 16 Sep 2021 11:36:54 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mQnp7-0007zZ-Vx; Thu, 16 Sep 2021 11:36:53 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 16 Sep 2021 11:36:27 +0200
Message-Id: <20210916093627.173566-2-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210916093627.173566-1-u.kleine-koenig@pengutronix.de>
References: <20210916093627.173566-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; i=leWk03Es1Q8jgMg3zoDCCoMI/1YQQMzS0Th9Wjx0JC4=;
 m=zBGxhhBnHBKwq++Ober5JOzxDVatq3+JD3YaTcUR/TY=;
 p=sz70t8rIZZ9yH160ZJdzGHAFXT3rXXswZPYUtnKGUgk=;
 g=e90e805e9914d8fe12c46ad3020e7550971dc38f
X-Patch-Sig: m=pgp; i=u.kleine-koenig@pengutronix.de;
 s=0x0D2511F322BFAB1C1580266BE2DCDD9132669BD6;
 b=iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmFDEBgACgkQwfwUeK3K7AmyRwf/R38
 Yf6+ILPrHMrxHP6gInDRsDNTTUKTMzZ8pVa7tJwFkeZ8iOeXn7M735c19kBahD6Pwas55ZOL0/w8K
 fDy/k2tlmZIsq8B68ye9pknm5gT3RLiVLZJ+sCpfqpkryy96oNOfKGU88CeEfii/oByz+gdznF1rZ
 NV095ppMcFKlBab05ZJvD0J4QFFE+1uu33TusacF+qGbA+S7yRTqAufsq3lyMytClNi51jdn2lEof
 osuWRz8Qzt55s4x/lYsRMWIcPfHqvN6y5vyUprpV54bup/KJB2E8qCFmBMhg650p9iFWgsfGJXd+C
 Fm9big7vH2vq5EI3dfpYZlfZHw14k0g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210916_023655_915772_A5EBA746 
X-CRM114-Status: GOOD (  14.48  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] mci-bcm2835: Fix return type handling of
 bcm2835_mci_wait_command_done()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

VGhlIGZ1bmN0aW9uIHJldHVybnMgYSBuZWdhdGl2ZSB2YWx1ZSBpbiBhIGNvZGUgcGF0aCBhbmQg
dGhlIHJldHVybiB2YWx1ZQppcyB1c2VkIGFzIGEgcmV0dXJuIHZhbHVlIGZvciBhbm90aGVyIGZ1
bmN0aW9ucyByZXR1cm5pbmcgaW50LCB0b28uIFNvCmNoYW5nZSB0aGUgdmFsdWUgdG8gaW50IChh
bmQgdGhlIHZhcmlhYmxlIGhvbGRpbmcgdGhlIHJldHVybiB2YWx1ZSwgdG9vKS4KClNpZ25lZC1v
ZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+
Ci0tLQogZHJpdmVycy9tY2kvbWNpLWJjbTI4MzUuYyB8IDUgKysrLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9t
Y2kvbWNpLWJjbTI4MzUuYyBiL2RyaXZlcnMvbWNpL21jaS1iY20yODM1LmMKaW5kZXggMTJmN2Ni
NmVhMzk4Li5mMmNiNjUyMzFlOTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWNpL21jaS1iY20yODM1
LmMKKysrIGIvZHJpdmVycy9tY2kvbWNpLWJjbTI4MzUuYwpAQCAtODQsNyArODQsNyBAQCBzdGF0
aWMgdTMyIGJjbTI4MzVfc2RoY2lfcmVhZDMyKHN0cnVjdCBzZGhjaSAqc2RoY2ksIGludCByZWcp
CiAJcmV0dXJuIHJlYWRsKGhvc3QtPnJlZ3MgKyByZWcpOwogfQogCi1zdGF0aWMgdTMyIGJjbTI4
MzVfbWNpX3dhaXRfY29tbWFuZF9kb25lKHN0cnVjdCBiY20yODM1X21jaV9ob3N0ICpob3N0KQor
c3RhdGljIGludCBiY20yODM1X21jaV93YWl0X2NvbW1hbmRfZG9uZShzdHJ1Y3QgYmNtMjgzNV9t
Y2lfaG9zdCAqaG9zdCkKIHsKIAl1MzIgaW50ZXJydXB0ID0gMDsKIAl1aW50NjRfdCBzdGFydDsK
QEAgLTEzMSw3ICsxMzEsOCBAQCBzdGF0aWMgdm9pZCBiY20yODM1X21jaV9yZXNldF9lbW1jKHN0
cnVjdCBiY20yODM1X21jaV9ob3N0ICpob3N0LCB1MzIgcmVzZXQsCiAgKi8KIHN0YXRpYyBpbnQg
YmNtMjgzNV9tY2lfcmVxdWVzdChzdHJ1Y3QgbWNpX2hvc3QgKm1jaSwgc3RydWN0IG1jaV9jbWQg
KmNtZCwKIAkJc3RydWN0IG1jaV9kYXRhICpkYXRhKSB7Ci0JdTMyIGNvbW1hbmQsIGJsb2NrX2Rh
dGEgPSAwLCByZXQgPSAwLCB0cmFuc2Zlcl9tb2RlID0gMDsKKwl1MzIgY29tbWFuZCwgYmxvY2tf
ZGF0YSA9IDAsIHRyYW5zZmVyX21vZGUgPSAwOworCWludCByZXQ7CiAJdTMyIHdhaXRfaW5oaWJp
dF9tYXNrID0gU0RIQ0lfQ01EX0lOSElCSVRfQ01EIHwgU0RIQ0lfQ01EX0lOSElCSVRfREFUQTsK
IAlzdHJ1Y3QgYmNtMjgzNV9tY2lfaG9zdCAqaG9zdCA9IHRvX2JjbTI4MzVfaG9zdChtY2kpOwog
Ci0tIAoyLjMwLjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

