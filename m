Delivery-date: Fri, 11 Jun 2021 09:15:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrbO4-0000KE-NH
	for lore@lore.pengutronix.de; Fri, 11 Jun 2021 09:15:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrbO3-0000uh-TU
	for lore@pengutronix.de; Fri, 11 Jun 2021 09:15:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rFTBsNzxXS7CYcmPYsxv0oovw6ddvsqezxspgmY0JoE=; b=ZnJ/xnoQTfRWhO
	U3yoDFl3A8KgoZkleNpoN2BBaQNLsLFy0QHkLRpCSwvnoC89VzU2mF+j1sQKZv7Mzj/YwawIk5ovo
	6cGzU8f9/sjy72TM0fb3WMkDq9cE+AUDiw+5NKXXE8rpSjkBREYKb/5jh5YP7bSrVZ4jcrpe+tkuQ
	EApFrwHWZFTgUNH+ytM+SXattk9gtml9cCkrQhalbxJVhv/aqygJq6BPVUAxTgMvcK4dd37RJ6Uqi
	V2pHvSRtyuYID+p6CB0UrCqqtXrf4hDu6GO8Gtl79oBynzWF3Bcvy3Rz/kAtxx6dH7OxPua6EUBv0
	LaqQSIH7UFCU/8iByrGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrbMj-0046Ja-Tm; Fri, 11 Jun 2021 07:14:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrbMe-0046IS-Ch
 for barebox@lists.infradead.org; Fri, 11 Jun 2021 07:14:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1lrbMa-0000gC-Kl; Fri, 11 Jun 2021 09:13:56 +0200
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1lrbMa-00055s-6v; Fri, 11 Jun 2021 09:13:56 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 11 Jun 2021 09:13:51 +0200
Message-Id: <20210611071351.1445370-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_001400_456833_55B09799 
X-CRM114-Status: GOOD (  11.59  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] fs: nfs: Start earlier to resend requests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gYSBjdXN0b21lciBzaXRlIHdlJ3JlIGV4cGVyaWVuY2UgYSBiaXQgb3ZlciAxJSBVRFAgcGFj
a2V0IGxvc3MuIFdoZW4Kd2lyZXNoYXJraW5nIGFuIE5GUyB0cmFuc2ZlciBvZiBhIGtlcm5lbCBp
bWFnZSAod2l0aCB0aGUgZ29hbCB0byBib290CnZpYSBORlMpIEkgc2F3IDY0IG9mIDI1NTUgUlBD
IGNhbGxzIHN0YXlpbmcgdW5hbnN3ZXJlZC4gV2l0aCB0aGUgY3VycmVudAp0aW1lb3V0IHNldHRp
bmcgZWFjaCBvZiB0aGVtIGludHJvZHVjZXMgYSBkZWxheSBvZiAyIHNlY29uZHMgYW5kIHRoZQp3
aG9sZSB0cmFuc2ZlciB0YWtlcyAxMzdzLiBXaXRoIHRoZSB0aW1lb3V0IHJlZHVjZWQgdG8gMC4x
cyB0aGUgdHJhbnNmZXIKdGltZSBpcyBub3Qgb3B0aW1hbCAoZ29pbmcgZG93biB0byBhcHByb3gg
MTUgc2Vjb25kcykgYnV0IGF0IGxlYXN0IGl0CmJlY29tZXMgYmVhcmFibGUuCgpUbyBzdGlsbCBj
b3BlIHdpdGggYSBzbG93IG5ldHdvcmsgKGluIGNvbnRyYXN0IHRvIGFuIHVucmVsaWFibGUgYXMK
cGljdHVyZWQgYWJvdmUpIGluY3JlYXNlIE5GU19NQVhfUkVTRU5EIHRvIGtlZXAgTkZTX1RJTUVP
VVQgKgpORlNfTUFYX1JFU0VORCAod2hpY2ggZGVmaW5lcyB0aGUgb3ZlcmFsbCB0aW1lb3V0IGJl
Zm9yZSBhYm9ydGluZyB0aGUKdHJhbnNmZXIpIGNvbnN0YW50LgoKU2lnbmVkLW9mZi1ieTogVXdl
IEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBmcy9u
ZnMuYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9mcy9uZnMuYyBiL2ZzL25mcy5jCmluZGV4IDExMzA2MzJlYjNl
Yi4uMDU3NjQxZWRjOGMzIDEwMDY0NAotLS0gYS9mcy9uZnMuYworKysgYi9mcy9uZnMuYwpAQCAt
MTE5LDggKzExOSw4IEBAIHN0cnVjdCBycGNfcmVwbHkgewogCXVpbnQzMl90IGRhdGFbMF07CiB9
OwogCi0jZGVmaW5lIE5GU19USU1FT1VUCSgyICogU0VDT05EKQotI2RlZmluZSBORlNfTUFYX1JF
U0VORAk1CisjZGVmaW5lIE5GU19USU1FT1VUCSgxMDAgKiBNU0VDT05EKQorI2RlZmluZSBORlNf
TUFYX1JFU0VORAkxMDAKIAogc3RydWN0IG5mc19maCB7CiAJdW5zaWduZWQgc2hvcnQgc2l6ZTsK
LS0gCjIuMzAuMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

