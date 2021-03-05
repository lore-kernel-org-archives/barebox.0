Delivery-date: Fri, 05 Mar 2021 10:01:48 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lI6LE-0002Sj-Ai
	for lore@lore.pengutronix.de; Fri, 05 Mar 2021 10:01:48 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lI6LD-0002Gg-Ic
	for lore@pengutronix.de; Fri, 05 Mar 2021 10:01:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=M5qGryekC+taiEl+jl9bl9HbeeRj6kacVr50nrqyb/I=; b=rbbJBGPnC9wE0a7/EJJWjSzrfs
	S+qGLchyHu35UcOXyhtNgcr439Rcd7BpHNMslN3vRjgxFrJaE9zuUckri+Ah6NTy0flSeAsHS1zST
	uBsvUbOZKzvX/XPNWi3aU33nkT+8+splV+k7dV1YOUw7KSUKHNv3PoHV2eSMCnmDjljc0f0SA6TkP
	LEZL8v+hm64y+EbjEbMNCPVksgldUOiVd1WqrsD885ErCuBBSNinCXrAOtefWsSQupcDef6yHIbkv
	wm0GBTFa0Mm80WZ8yHYxRxbdLaq31xjFudw9mzhaYg4h/HZHZiSihQqFBUhTPqgslc0kpBcljhX64
	Ijf7huAA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lI6Jg-00E7yi-RV; Fri, 05 Mar 2021 09:00:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lI6JZ-00E7xD-WB
 for barebox@lists.infradead.org; Fri, 05 Mar 2021 09:00:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1lI6JW-0001yK-VD; Fri, 05 Mar 2021 10:00:02 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1lI6JW-0001At-CE; Fri, 05 Mar 2021 10:00:02 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  5 Mar 2021 10:00:01 +0100
Message-Id: <20210305090001.3619780-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_090007_390487_42961AE4 
X-CRM114-Status: GOOD (  15.08  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2] usb: i.MX: warn if vbus regulator isn't available
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SW5zdGVhZCBvZiBqdXN0IGlnbm9yaW5nIGVycm9ycyByZWxhdGVkIHRvIGdldHRpbmcgdGhlIHZi
dXMgcmVndWxhdG9yCnlpZWxkIGF0IGxlYXN0IGEgd2FybmluZyBtZXNzYWdlLiBUaGlzIHdvdWxk
IGhhdmUgc2F2ZWQgbWUgc29tZQpkZWJ1Z2dpbmcgdGltZSB3aGVuIHRyeWluZyB0byB1bmRlcnN0
YW5kIHdoeSBVU0IgZG9lc24ndCB3b3JrIHdpdGhvdXQKdGhlIHJpZ2h0IHJlZ3VsYXRvciBkcml2
ZXIgZW5hYmxlZC4KCk5vdGUgdGhhdCBtYWNoaW5lcyB0aGF0IGRvbid0IGRlZmluZSBhIHJlZ3Vs
YXRvciBpbiB0aGVpciBkZXZpY2UgdHJlZQpkb24ndCBpc3N1ZSB0aGlzIHdhcm5pbmcgYXMgcmVn
dWxhdG9yX2dldCgpIHJldHVybnMgdGhlIGR1bW15IHJlZ3VsYXRvcgppbiB0aGlzIGNhc2UuCgpU
aGUgYWx0ZXJuYXRpdmUgdG8gZXJyb3Igb3V0IHdhc24ndCBhY2NlcHRlZCBiZWNhdXNlIHRoaXMg
cHJvYmFibHkKY3JlYXRlcyByZWdyZXNzaW9ucyBmb3IgcmVndWxhdG9ycyB0aGF0IGFyZSBkZWZh
dWx0LW9uIGJ1dCB3aXRob3V0IGEKZHJpdmVyIGluIGJhcmVib3guCgpTaWduZWQtb2ZmLWJ5OiBV
d2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KSGVs
bG8sCgooaW1wbGljaXQpIHYxIHdhcyBzZW50IHNvbWUgdGltZSBhZ28gd2l0aCBNZXNzYWdlLUlE
Ogo8MTQ4NWQzNWEtZDU1Yi0yNDQwLTQ4NTItMTczN2U3OGY4YWExQHBlbmd1dHJvbml4LmRlPi4g
QWhtYWQgc3VnZ2VzdGVkCnRvIHVzZSAlcGUgaW5zdGVhZCBvZiBzdHJlcnJvcigtcmV0KS4gVGhp
cyBpcyBhbHNvIHRoZSBvbmx5IGNoYW5nZQpjb21wYXJlZCB0byB0aGUgZmlyc3Qgc3VibWlzc2lv
bi4KCkJlc3QgcmVnYXJkcwpVd2UKCiBkcml2ZXJzL3VzYi9pbXgvY2hpcGlkZWEtaW14LmMgfCA1
ICsrKystCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy91c2IvaW14L2NoaXBpZGVhLWlteC5jIGIvZHJpdmVycy91c2Iv
aW14L2NoaXBpZGVhLWlteC5jCmluZGV4IDdiODdmMzAyYTkyMS4uYWEyNzk0MWM4YzY2IDEwMDY0
NAotLS0gYS9kcml2ZXJzL3VzYi9pbXgvY2hpcGlkZWEtaW14LmMKKysrIGIvZHJpdmVycy91c2Iv
aW14L2NoaXBpZGVhLWlteC5jCkBAIC0yNTYsOCArMjU2LDExIEBAIHN0YXRpYyBpbnQgaW14X2No
aXBpZGVhX3Byb2JlKHN0cnVjdCBkZXZpY2VfZCAqZGV2KQogCX0KIAogCWNpLT52YnVzID0gcmVn
dWxhdG9yX2dldChkZXYsICJ2YnVzIik7Ci0JaWYgKElTX0VSUihjaS0+dmJ1cykpCisJaWYgKElT
X0VSUihjaS0+dmJ1cykpIHsKKwkJZGV2X3dhcm4oZGV2LCAiQ2Fubm90IGdldCB2YnVzIHJlZ3Vs
YXRvcjogJXBlIChpZ25vcmluZylcbiIsCisJCQkgY2ktPnZidXMpOwogCQljaS0+dmJ1cyA9IE5V
TEw7CisJfQogCiAJLyoKIAkgKiBTb21lIGRldmljZXMgaGF2ZSBtb3JlIHRoYW4gb25lIGNsb2Nr
LCBpbiB0aGlzIGNhc2UgdGhleSBhcmUgZW5hYmxlZAotLSAKMi4zMC4wCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QK
YmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

