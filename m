Delivery-date: Mon, 07 Feb 2022 08:57:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGyuD-0083V5-Km
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 08:57:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGyuB-0002Zk-L3
	for lore@pengutronix.de; Mon, 07 Feb 2022 08:57:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RO7AtMF2uhIKNTchtOG2gl1mUYgRlxzmXmYE8bK8sKQ=; b=A2EFfiv1ellYTp
	ohF7I6+VFSa7USjClfyPIldMNfmB4gW6NiBuV1i76F7CN3ZoOIuCiYwK129xRqzffCYrkTELab6sn
	AqZGsPfU9sfisYzw5o2YuJNTeKlxKtv8iPstXDsf60qE29wv9dUPGYZgvxtVvyI3Z8f4Z8nazqMnf
	cbbY1btTZ/d3Z7FOVWN90FvpblONJr+OCWotc3L2LIk206y06+AjtKkKZrcwI77xceoRITQvAtk7v
	iLyd2q5m9n9nccVuTgtC4M++cgJFezR1/6Aw/EAUPYK6I+yR/NAovQql7OKg0o8y1uVPW8yoGvu/Q
	zpdcvDo4SWBRd0CxgbKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGysk-009GaZ-4n; Mon, 07 Feb 2022 07:56:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGysc-009GZ1-Pn
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 07:56:12 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nGysZ-000292-T3; Mon, 07 Feb 2022 08:56:07 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nGysZ-004FsZ-DI; Mon, 07 Feb 2022 08:56:07 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  7 Feb 2022 08:56:04 +0100
Message-Id: <20220207075604.1014259-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220207075604.1014259-1-a.fatoum@pengutronix.de>
References: <20220207075604.1014259-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220206_235610_855078_829D217E 
X-CRM114-Status: GOOD (  10.83  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] compiler: fix __attribute__((format(printf,
 sandbox incompatibility
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gc2FuZGJveCwgd2UgZGVmaW5lIHByaW50ZiB0byBiYXJlYm94X3ByaW50ZiBmb3IgdGhlIG5v
bi1zYW5kYm94CnNwZWNpZmljIHBhcnRzIHRvIGF2b2lkIGNsYXNoaW5nIHdpdGggdGhlIGxpYmMt
cHJvdmlkZWQgc3ltYm9sLiBUaGlzIGlzCnN1YnN0aXR1dGVkIGludG8gdGhlIGRlZmluaXRpb24g
b2YgX19wcmludGYsIGxlYWRpbmcgdG8KCiAgdGVzdC9zZWxmL3ByaW50Zi5jOjM3OjE6IHdhcm5p
bmc6IOKAmGJhcmVib3hfcHJpbnRm4oCZIGlzIGFuCgl1bnJlY29nbml6ZWQgZm9ybWF0IGZ1bmN0
aW9uIHR5cGUgWy1XZm9ybWF0PV0KCkF2b2lkIHRoaXMgYnkgdXNpbmcgdGhlIGVxdWl2YWxlbnQg
cmVzZXJ2ZWQga2V5d29yZCwgd2hpY2ggZG9lc24ndApjbGFzaC4gV2hpbGUgYXQgaXQsIGJlIGEg
bGl0dGxlIGZ1dHVyZSBwcm9vZiBhbmQgZG8gdGhlIHNhbWUgZm9yIHNjYW5mCmFzIHdlbGwuCgpT
aWduZWQtb2ZmLWJ5OiBBaG1hZCBGYXRvdW0gPGEuZmF0b3VtQHBlbmd1dHJvbml4LmRlPgotLS0K
IGluY2x1ZGUvbGludXgvY29tcGlsZXJfdHlwZXMuaCB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xp
bnV4L2NvbXBpbGVyX3R5cGVzLmggYi9pbmNsdWRlL2xpbnV4L2NvbXBpbGVyX3R5cGVzLmgKaW5k
ZXggOWE1YTZmMGU4YjE3Li5hYTljYmNhYzc3NDAgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgv
Y29tcGlsZXJfdHlwZXMuaAorKysgYi9pbmNsdWRlL2xpbnV4L2NvbXBpbGVyX3R5cGVzLmgKQEAg
LTIwMSw4ICsyMDEsOCBAQCBzdHJ1Y3QgZnRyYWNlX2xpa2VseV9kYXRhIHsKICNkZWZpbmUgX19w
dXJlCQkJX19hdHRyaWJ1dGVfXygocHVyZSkpCiAjZGVmaW5lIF9fYWxpZ25lZCh4KQkJX19hdHRy
aWJ1dGVfXygoYWxpZ25lZCh4KSkpCiAjZGVmaW5lIF9fYWxpZ25lZF9sYXJnZXN0CV9fYXR0cmli
dXRlX18oKGFsaWduZWQpKQotI2RlZmluZSBfX3ByaW50ZihhLCBiKQkJX19hdHRyaWJ1dGVfXygo
Zm9ybWF0KHByaW50ZiwgYSwgYikpKQotI2RlZmluZSBfX3NjYW5mKGEsIGIpCQlfX2F0dHJpYnV0
ZV9fKChmb3JtYXQoc2NhbmYsIGEsIGIpKSkKKyNkZWZpbmUgX19wcmludGYoYSwgYikJCV9fYXR0
cmlidXRlX18oKGZvcm1hdChfX3ByaW50Zl9fLCBhLCBiKSkpCisjZGVmaW5lIF9fc2NhbmYoYSwg
YikJCV9fYXR0cmlidXRlX18oKGZvcm1hdChfX3NjYW5mX18sIGEsIGIpKSkKICNkZWZpbmUgX19t
YXliZV91bnVzZWQJCV9fYXR0cmlidXRlX18oKHVudXNlZCkpCiAjZGVmaW5lIF9fYWx3YXlzX3Vu
dXNlZAkJX19hdHRyaWJ1dGVfXygodW51c2VkKSkKICNkZWZpbmUgX19tb2RlKHgpCQlfX2F0dHJp
YnV0ZV9fKChtb2RlKHgpKSkKLS0gCjIuMzAuMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2JhcmVib3gK

