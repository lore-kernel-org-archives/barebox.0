Delivery-date: Tue, 19 Oct 2021 18:19:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mcrpN-0004lC-0G
	for lore@lore.pengutronix.de; Tue, 19 Oct 2021 18:19:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mcrpM-0006il-0h
	for lore@pengutronix.de; Tue, 19 Oct 2021 18:19:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nFlq2gGMg10s5seF1nqlkFIdEBVg8XT4TqJgspshhDg=; b=aUBPulQYcdt+yO
	L/KOdQ3Q/nvaieN+KA/v1g5WOdGAbgg3GPqPDD5VS/tdDKmP9BigLFuLCOkeCJR052M6kC5AZe5Kg
	yFX7eIpsy7EFwryTPnknQSRDzQ8Owp8OiTxQxsSJC3FSNe6XobOHNn99/xI23HwdTIJnUgBJWlt3q
	iw0HhibdaIHZZtj/aeGj7gTRmkRKOjwID1B7jLP27mhiDIacgh6PpwQiGs0YnDgDO9lzX3jITNQrd
	G0HcWP+XLxGkk0fD0ybGsVwlrU0rze07eO08xyfbSIRx8JQb4GFppouvl/qUpr1zwRoBGFKYdC0cy
	feHb21RHpuO4JmR3JqVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcrnc-001tXI-Ap; Tue, 19 Oct 2021 16:17:12 +0000
Received: from smtpout140.security-mail.net ([85.31.212.149]
 helo=fx409.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcrnW-001tVy-9s
 for barebox@lists.infradead.org; Tue, 19 Oct 2021 16:17:08 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx409.security-mail.net (Postfix) with ESMTP id 1FF1532380C
 for <barebox@lists.infradead.org>; Tue, 19 Oct 2021 18:17:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1634660221;
 bh=HKM9ZQ7i//wrJbDQjhz8qBmcLSi2euHhDkH+B+gifCQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=xU6LdaIT5zq9r7nsEZYbkdkFpQd/BOyNR9xkjzyGT7I+sgX0eWpGINtnC/PAkR/Au
 r6t00YMJ6L3joV7Ynm7YS76xxAth7ojVRjPJNHcveBZ7kkW/fXudev4uwP5JUepnuG
 qOrq36GWy/jxr42JD6VM4SiD9D5oju2fwfXmA/R4=
Received: from fx409 (localhost [127.0.0.1]) by fx409.security-mail.net
 (Postfix) with ESMTP id 8CBB9323776; Tue, 19 Oct 2021 18:17:00 +0200 (CEST)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx409.security-mail.net (Postfix) with ESMTPS id 0A466323679; Tue, 19 Oct
 2021 18:17:00 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id DF49427E033E; Tue, 19 Oct 2021
 18:16:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id C856B27E037F; Tue, 19 Oct 2021 18:16:59 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 5xDUH490l1zJ; Tue, 19 Oct 2021 18:16:59 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id B72FC27E033E; Tue, 19 Oct 2021
 18:16:59 +0200 (CEST)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <a906.616eef7c.91de.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu C856B27E037F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1634660219;
 bh=lAyG/0zLmKv+fVHe9g3Pgquh6547Xu9v2tbCa/0Ihk4=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=C/Tt13le0i0M+IMDGbb/MGWUamYTsF4OhCUYQ6dsSq82ZdRBkUenO+szxlsY2qqgF
 G4lnu/Yx7wxhfh0JIL2oJTr45rU5doZoRS/8z9csL+hWKPnM7N8hRgfm4LFBhmF9BU
 1Rx69ZMCyJ8QOI6Gt02jShCb85fCT4fNQcHU3a/I=
Date: Tue, 19 Oct 2021 18:16:54 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Daniel =?utf-8?b?QnLDoXQ=?= <danek.brat@gmail.com>
Cc: barebox@lists.infradead.org, Sascha Hauer <sha@pengutronix.de>
Message-ID: <20211019161654.GA26849@tellis.lin.mbt.kalray.eu>
References: <20210908085019.GB8023@tellis.lin.mbt.kalray.eu>
 <20210908125853.3353-1-danek.brat@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210908125853.3353-1-danek.brat@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211019_091706_815509_53A3513E 
X-CRM114-Status: GOOD (  20.44  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2 v2] usb: dwc2: Make having a phy optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGkgRGFuaWVsLAoKT24gV2VkLCBTZXAgMDgsIDIwMjEgYXQgMDI6NTg6NTNQTSArMDIwMCwgRGFu
aWVsIEJyw6F0IHdyb3RlOgo+IERlc3BpdGUgdXNpbmcgJ3BoeV9vcHRpb25hbF9nZXQnIHRvIGdl
dCBhICd1c2IyLXBoeScgaW5zaWRlIGl0cyBwcm9iZSwKPiB0aGUgZHJpdmVyIHdvdWxkIGZhaWwg
aWYgaXQgZGlkbnQgZmluZCBpdC4gQWxzbywgdGhlcmUgaXMgbm8gS2NvbmZpZwo+IGRlcGVuZGVu
Y3kgb24gJ0NPTkZJR19HRU5FUklDX1BIWScsIHNvIHdpdGhvdXQgaXQgZGVmaW5lZCB0aGUgcGh5
Cj4gZnVuY3Rpb25zIGFyZSB1bmltcGxlbWVudGVkIGFuZCBhbHdheXMgcmV0dXJuIC1FTk9TWVMg
bWFraW5nIGR3YzIgcHJvYmUKPiBhbHdheXMgZmFpbCB0b28uCj4gVGhlIGhlYWRlciBzdHViIG9m
ICdwaHlfb3B0aW9uYWxfZ2V0JyB3YXMgY2hhbmdlZCB0byByZXR1cm4gTlVMTCBhbmQKPiB0aGUg
ZHdjMiBkcml2ZXIgd2FzIG1vZGlmaWVkIGFjY29yZGluZ2x5Lgo+IAo+IFNpZ25lZC1vZmYtYnk6
IERhbmllbCBCcsOhdCA8ZGFuZWsuYnJhdEBnbWFpbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvdXNi
L2R3YzIvZHdjMi5jIHwgMjcgKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tCj4gIGluY2x1ZGUv
bGludXgvcGh5L3BoeS5oIHwgIDIgKy0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxNiBpbnNlcnRpb25z
KCspLCAxMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91c2IvZHdjMi9k
d2MyLmMgYi9kcml2ZXJzL3VzYi9kd2MyL2R3YzIuYwo+IGluZGV4IDk4OTM5NzdiOC4uNDcyYTBi
N2Q5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdXNiL2R3YzIvZHdjMi5jCj4gKysrIGIvZHJpdmVy
cy91c2IvZHdjMi9kd2MyLmMKPiBAQCAtNzMsMTkgKzczLDIyIEBAIHN0YXRpYyBpbnQgZHdjMl9w
cm9iZShzdHJ1Y3QgZGV2aWNlX2QgKmRldikKPiAgCQlnb3RvIGNsa19kaXNhYmxlOwo+ICAKPiAg
CWR3YzItPnBoeSA9IHBoeV9vcHRpb25hbF9nZXQoZGV2LCAidXNiMi1waHkiKTsKPiAtCWlmIChJ
U19FUlIoZHdjMi0+cGh5KSkgewo+IC0JCXJldCA9IFBUUl9FUlIoZHdjMi0+cGh5KTsKPiAtCQln
b3RvIGNsa19kaXNhYmxlOwo+ICsJaWYgKGR3YzItPnBoeSkgewo+ICsJCWlmIChJU19FUlIoZHdj
Mi0+cGh5KSkgewo+ICsJCQlkZXZfd2FybihkZXYsICJDb3VsZG50IGdldCAndXNiMi1waHknOiAl
c1xuIiwKPiArCQkJCQlzdHJlcnJvcihQVFJfRVJSKGR3YzItPnBoeSkpKTsKPiArCQkJZ290byBw
aHlfYnlwYXNzOwo+ICsJCX0KPiArCj4gKwkJcmV0ID0gcGh5X3Bvd2VyX29uKGR3YzItPnBoeSk7
Cj4gKwkJaWYgKHJldCkKPiArCQkJZ290byBjbGtfZGlzYWJsZTsKPiArCj4gKwkJcmV0ID0gcGh5
X2luaXQoZHdjMi0+cGh5KTsKPiArCQlpZiAocmV0KQo+ICsJCQlnb3RvIHBoeV9wb3dlcl9vZmY7
Cj4gIAl9Cj4gLQo+IC0JcmV0ID0gcGh5X3Bvd2VyX29uKGR3YzItPnBoeSk7Cj4gLQlpZiAocmV0
KQo+IC0JCWdvdG8gY2xrX2Rpc2FibGU7Cj4gLQo+IC0JcmV0ID0gcGh5X2luaXQoZHdjMi0+cGh5
KTsKPiAtCWlmIChyZXQpCj4gLQkJZ290byBwaHlfcG93ZXJfb2ZmOwo+IC0KPiArcGh5X2J5cGFz
czoKPiAgCXJldCA9IGR3YzJfY2hlY2tfY29yZV92ZXJzaW9uKGR3YzIpOwo+ICAJaWYgKHJldCkK
PiAgCQlnb3RvIGVycm9yOwo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L3BoeS9waHkuaCBi
L2luY2x1ZGUvbGludXgvcGh5L3BoeS5oCj4gaW5kZXggNjc5Y2U2ZTQyLi4zMjFlNTQ2ZjkgMTAw
NjQ0Cj4gLS0tIGEvaW5jbHVkZS9saW51eC9waHkvcGh5LmgKPiArKysgYi9pbmNsdWRlL2xpbnV4
L3BoeS9waHkuaAo+IEBAIC0xOTUsNyArMTk1LDcgQEAgc3RhdGljIGlubGluZSBzdHJ1Y3QgcGh5
ICpwaHlfZ2V0KHN0cnVjdCBkZXZpY2VfZCAqZGV2LCBjb25zdCBjaGFyICpzdHJpbmcpCj4gIHN0
YXRpYyBpbmxpbmUgc3RydWN0IHBoeSAqcGh5X29wdGlvbmFsX2dldChzdHJ1Y3QgZGV2aWNlX2Qg
KmRldiwKPiAgCQkJCQkgICBjb25zdCBjaGFyICpzdHJpbmcpCj4gIHsKPiAtCXJldHVybiBFUlJf
UFRSKC1FTk9TWVMpOwo+ICsJcmV0dXJuIE5VTEw7Cj4gIH0KSSBhbSBpbnRlcmVzdGVkIGluIGdl
dHRpbmcgdGhpcyBtb2RpZmljYXRpb24gbWVyZ2VkLiBCZXNpZGUgSSBkb24ndAp0aGluayB0aGUg
ZHdjMiBkcml2ZXIgbW9kaWZpY2F0aW9uIGlzIG5lZWRlZCwgYXMgcGh5X29wdGlvbmFsX2dldCBp
cwppbnRlbmRlZCB0byByZXR1cm4gTlVMTCB3aGVuIG5vIHBoeSBhcmUgYXZhaWxhYmxlLiBGb3Ig
bWUgaXQgbWFrZXMKc2Vuc2UgdGhhdCBOVUxMIGNvdWxkIGJlIHJldHVybiBieSBwaHlfb3B0aW9u
YWxfZ2V0IHdoZW4gdGhlIHBoeQpzdXBwb3J0IGlzIG5vdCBjb21waWxlZCBpbi4KCkRvIHlvdSBo
YXZlIHRoZSB0aW1lIHRvIHNlbmQgYSBuZXcgcGF0Y2ggd2l0aCBvbmx5IHRoaXMgbW9kaWZpY2F0
aW9uID8KClRoYW5rcywKSnVsZXMKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJl
Ym94Cg==

