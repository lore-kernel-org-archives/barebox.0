Delivery-date: Fri, 14 Jan 2022 18:26:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8QLU-002F0D-02
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 18:26:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8QLR-0000Ir-9x
	for lore@pengutronix.de; Fri, 14 Jan 2022 18:26:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1vQrokxte1nOrXFY++3U4WKTihgDIQPzYEJ+cfMD80c=; b=aBY1mqfAU9CnCK
	7X7GMXI1b0CDBKLHaBxALIKHIFyFAqT+mGOA5rRyoPJEpKEhFzHfhrG2A0qB1ZDhFYpOW784d4Nk5
	fVyKz2mzTyxaW1rVqcyFgZgrSx9rYqFBAXyaA7oSuoL9luDdjh6FbrYWzLdgR7PXfxGI4aO8N03Vg
	l9Arjn/7Nk6z/WEzB1c/qH5EnWgtIz4iJ6kXXe9l6Wr0eCZsI0MYcEsGcoBlESgA7CHmVMtYEaOOU
	X+nQEBUvPRdhQCoIz5j6FwncuQvrprlMaM5X+tDluHVtWwg+inMdmrOK2mPhwLGtzqQ/3+vF47I41
	GbpFBEB4T5AXe1GYpmbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8QK8-009vPx-6P; Fri, 14 Jan 2022 17:25:12 +0000
Received: from smtpout30.security-mail.net ([85.31.212.36]
 helo=fx301.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8QK2-009vPc-SS
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 17:25:09 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx301.security-mail.net (Postfix) with ESMTP id 4E4F524BD016
 for <barebox@lists.infradead.org>; Fri, 14 Jan 2022 18:25:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1642181101;
 bh=gm94ruZwjVSg94eyn3I0Che9NqhCM2SYRcZbZY65GRE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=RrgXOucXd7EVfTXU+vBVgIYcMyPN/K8rtOQRZGlqA0pflvcsQJYbVczlmGbosGpPA
 fLVjZW9N7cwvyGoKkanDf6QmTS1A3p6U6GMrTPaBEF95650HOSKiB2TE8ek4fRO9ou
 /L+gDVvpaiSIM8/6z0UBdgcDmfQDmmJ8UCJX/IQM=
Received: from fx301 (localhost [127.0.0.1]) by fx301.security-mail.net
 (Postfix) with ESMTP id 0576B24BD00A; Fri, 14 Jan 2022 18:25:01 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx301.security-mail.net (Postfix) with ESMTPS id 9FAB624BD030; Fri, 14 Jan
 2022 18:25:00 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 82DEB27E0341; Fri, 14 Jan 2022
 18:25:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id 6ABAB27E034A; Fri, 14 Jan 2022 18:25:00 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 Qz449oADTe28; Fri, 14 Jan 2022 18:25:00 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id 563F927E0341; Fri, 14 Jan 2022
 18:25:00 +0100 (CET)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <601a.61e1b1ec.9ef4e.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 6ABAB27E034A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642181100;
 bh=zwjZw4aa/K1RwvKgUNo16T0LK5ZzCZ5HxclI+5Wzclk=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=Kzgi4I0wLgctQO7eX9lqIDnCtxjLhJ7/2xccsjVvVVl2EdL50ugGMRoaS6VIgi5P0
 TEsz0+1+6ewvDWrGX4BRU2bQn+obKxvLMY7P2qqdyzGclMnIFDDk07HT7WQrPk3xv1
 ueKvk9AsE26ECpWdyDCnQlK95O9PSBTcf14H+orU=
Date: Fri, 14 Jan 2022 18:24:59 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: =?utf-8?b?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@bootlin.com>
Cc: barebox@lists.infradead.org, Louis Morhet <lmorhet@kalray.eu>, Luc
 Michel <lmichel@kalray.eu>, Yann Sionneau <ysionneau@kalray.eu>, Clement
 Leger <cleger@kalray.eu>
Message-ID: <20220114172459.GD29876@tellis.lin.mbt.kalray.eu>
References: <20220114165208.9980-1-jmaselbas@kalray.eu>
 <20220114165208.9980-5-jmaselbas@kalray.eu>
 <20220114182109.6dfe1836@fixe.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220114182109.6dfe1836@fixe.home>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_092507_249396_43B50690 
X-CRM114-Status: GOOD (  24.68  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 04/13] common: elf: add elf_load_binary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gRnJpLCBKYW4gMTQsIDIwMjIgYXQgMDY6MjE6MDlQTSArMDEwMCwgQ2zDqW1lbnQgTMOpZ2Vy
IHdyb3RlOgo+IExlIEZyaSwgMTQgSmFuIDIwMjIgMTc6NTI6MDMgKzAxMDAsCj4gSnVsZXMgTWFz
ZWxiYXMgPGptYXNlbGJhc0BrYWxyYXkuZXU+IGEgw6ljcml0IDoKPiAKPiA+IEZyb206IENsZW1l
bnQgTGVnZXIgPGNsZWdlckBrYWxyYXkuZXU+Cj4gPiAKPiA+IEluIG9yZGVyIHRvIGxvYWQgZWxm
IGZyb20gYSBiaW5hcnkgYnVmZmVyLCBhZGQgZWxmX2xvYWRfYmluYXJ5LiBUaGlzCj4gPiB3aWxs
IGJlIHVzZWQgYnkgRklUIHN1cHBvcnQgdG8gYWxsb3cgbG9hZGluZyBhbiBlbGYgZnJvbSBGSVQu
Cj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IENsZW1lbnQgTGVnZXIgPGNsZWdlckBrYWxyYXkuZXU+
Cj4gCj4gSGkgSnVsZXMsCj4gCj4gVGhpcyBpcyBub3QgbXkgbWFpbCBhZGRyZXNzIGFueW1vcmUs
IGNvdWxkIHlvdSB1cGRhdGUgaXQgd2l0aAo+IGNsZW1lbnQubGVnZXJAYm9vdGxpbi5jb20gPwpT
dXJlIGNhbiwgSSB3YXNuJ3Qgc3VyZSB3aGljaCBlbWFpbCBJIHNob3VsZCBoYXZlIHVzZWQuIEkn
bGwgc2VuZCBhIHYyLgoKPiAKPiBUaGFua3MuCj4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBKdWxlcyBN
YXNlbGJhcyA8am1hc2VsYmFzQGthbHJheS5ldT4KPiA+IC0tLQo+ID4gIGNvbW1vbi9lbGYuYyAg
fCA4MyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0K
PiA+ICBpbmNsdWRlL2VsZi5oIHwgIDEgKwo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgNjIgaW5zZXJ0
aW9ucygrKSwgMjIgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9jb21tb24vZWxm
LmMgYi9jb21tb24vZWxmLmMKPiA+IGluZGV4IGFmMjJiZTM3ZTYuLmYxMGZiNzc5NTMgMTAwNjQ0
Cj4gPiAtLS0gYS9jb21tb24vZWxmLmMKPiA+ICsrKyBiL2NvbW1vbi9lbGYuYwo+ID4gQEAgLTEw
MSwxNSArMTAxLDE3IEBAIHN0YXRpYyBpbnQgZWxmX3NlY3Rpb25fY21wKHZvaWQgKnByaXYsIHN0
cnVjdCBsaXN0X2hlYWQgKmEsIHN0cnVjdCBsaXN0X2hlYWQgKmIpCj4gPiAgc3RhdGljIGludCBs
b2FkX2VsZl90b19tZW1vcnkoc3RydWN0IGVsZl9pbWFnZSAqZWxmKQo+ID4gIHsKPiA+ICAJdm9p
ZCAqZHN0Owo+ID4gLQlpbnQgcmV0LCBmZDsKPiA+ICsJaW50IHJldCwgZmQgPSAtMTsKPiA+ICAJ
dTY0IHBfZmlsZXN6LCBwX21lbXN6LCBwX29mZnNldDsKPiA+ICAJc3RydWN0IGVsZl9zZWN0aW9u
ICpyOwo+ID4gIAlzdHJ1Y3QgbGlzdF9oZWFkICpsaXN0ID0gJmVsZi0+bGlzdDsKPiA+ICAKPiA+
IC0JZmQgPSBvcGVuKGVsZi0+ZmlsZW5hbWUsIE9fUkRPTkxZKTsKPiA+IC0JaWYgKGZkIDwgMCkg
ewo+ID4gLQkJcHJfZXJyKCJjb3VsZCBub3Qgb3BlbjogJXNcbiIsIGVycm5vX3N0cigpKTsKPiA+
IC0JCXJldHVybiAtZXJybm87Cj4gPiArCWlmIChlbGYtPmZpbGVuYW1lKSB7Cj4gPiArCQlmZCA9
IG9wZW4oZWxmLT5maWxlbmFtZSwgT19SRE9OTFkpOwo+ID4gKwkJaWYgKGZkIDwgMCkgewo+ID4g
KwkJCXByX2VycigiY291bGQgbm90IG9wZW46ICVzXG4iLCBlcnJub19zdHIoKSk7Cj4gPiArCQkJ
cmV0dXJuIC1lcnJubzsKPiA+ICsJCX0KPiA+ICAJfQo+ID4gIAo+ID4gIAlsaXN0X2Zvcl9lYWNo
X2VudHJ5KHIsIGxpc3QsIGxpc3QpIHsKPiA+IEBAIC0xMTgsMjEgKzEyMCwyNiBAQCBzdGF0aWMg
aW50IGxvYWRfZWxmX3RvX21lbW9yeShzdHJ1Y3QgZWxmX2ltYWdlICplbGYpCj4gPiAgCQlwX21l
bXN6ID0gZWxmX3BoZHJfcF9tZW1zeihlbGYsIHItPnBoZHIpOwo+ID4gIAkJZHN0ID0gKHZvaWQg
KikgKHBoeXNfYWRkcl90KSBlbGZfcGhkcl9wX3BhZGRyKGVsZiwgci0+cGhkcik7Cj4gPiAgCj4g
PiAtCQlyZXQgPSBsc2VlayhmZCwgcF9vZmZzZXQsIFNFRUtfU0VUKTsKPiA+IC0JCWlmIChyZXQg
PT0gLTEpIHsKPiA+IC0JCQlwcl9lcnIoImxzZWVrIGF0IG9mZnNldCAweCVsbHggZmFpbGVkXG4i
LCBwX29mZnNldCk7Cj4gPiAtCQkJY2xvc2UoZmQpOwo+ID4gLQkJCXJldHVybiByZXQ7Cj4gPiAt
CQl9Cj4gPiAtCj4gPiAgCQlwcl9kZWJ1ZygiTG9hZGluZyBwaGRyIG9mZnNldCAweCVsbHggdG8g
MHglcCAoJWxsdSBieXRlcylcbiIsCj4gPiAgCQkJIHBfb2Zmc2V0LCBkc3QsIHBfZmlsZXN6KTsK
PiA+ICAKPiA+IC0JCWlmIChyZWFkX2Z1bGwoZmQsIGRzdCwgcF9maWxlc3opIDwgMCkgewo+ID4g
LQkJCXByX2VycigiY291bGQgbm90IHJlYWQgZWxmIHNlZ21lbnQ6ICVzXG4iLAo+ID4gLQkJCSAg
ICAgICBlcnJub19zdHIoKSk7Cj4gPiAtCQkJY2xvc2UoZmQpOwo+ID4gLQkJCXJldHVybiAtZXJy
bm87Cj4gPiArCQlpZiAoZmQgPj0gMCkgewo+ID4gKwkJCXJldCA9IGxzZWVrKGZkLCBwX29mZnNl
dCwgU0VFS19TRVQpOwo+ID4gKwkJCWlmIChyZXQgPT0gLTEpIHsKPiA+ICsJCQkJcHJfZXJyKCJs
c2VlayBhdCBvZmZzZXQgMHglbGx4IGZhaWxlZFxuIiwKPiA+ICsJCQkJICAgICAgIHBfb2Zmc2V0
KTsKPiA+ICsJCQkJY2xvc2UoZmQpOwo+ID4gKwkJCQlyZXR1cm4gcmV0Owo+ID4gKwkJCX0KPiA+
ICsKPiA+ICsJCQlpZiAocmVhZF9mdWxsKGZkLCBkc3QsIHBfZmlsZXN6KSA8IDApIHsKPiA+ICsJ
CQkJcHJfZXJyKCJjb3VsZCBub3QgcmVhZCBlbGYgc2VnbWVudDogJXNcbiIsCj4gPiArCQkJCSAg
ICAgICBlcnJub19zdHIoKSk7Cj4gPiArCQkJCWNsb3NlKGZkKTsKPiA+ICsJCQkJcmV0dXJuIC1l
cnJubzsKPiA+ICsJCQl9Cj4gPiArCQl9IGVsc2Ugewo+ID4gKwkJCW1lbWNweShkc3QsIGVsZi0+
aGRyX2J1ZiArIHBfb2Zmc2V0LCBwX2ZpbGVzeik7Cj4gPiAgCQl9Cj4gPiAgCj4gPiAgCQlpZiAo
cF9maWxlc3ogPCBwX21lbXN6KQo+ID4gQEAgLTIwMiw2ICsyMDksMzcgQEAgc3RhdGljIGludCBl
bGZfY2hlY2tfaW1hZ2Uoc3RydWN0IGVsZl9pbWFnZSAqZWxmLCB2b2lkICpidWYpCj4gPiAgCXJl
dHVybiAwOwo+ID4gIH0KPiA+ICAKPiA+ICtzdGF0aWMgdm9pZCBlbGZfaW5pdF9zdHJ1Y3Qoc3Ry
dWN0IGVsZl9pbWFnZSAqZWxmKQo+ID4gK3sKPiA+ICsJSU5JVF9MSVNUX0hFQUQoJmVsZi0+bGlz
dCk7Cj4gPiArCWVsZi0+bG93X2FkZHIgPSAodm9pZCAqKSAodW5zaWduZWQgbG9uZykgLTE7Cj4g
PiArCWVsZi0+aGlnaF9hZGRyID0gMDsKPiA+ICsJZWxmLT5maWxlbmFtZSA9IE5VTEw7Cj4gPiAr
fQo+ID4gKwo+ID4gK3N0cnVjdCBlbGZfaW1hZ2UgKmVsZl9vcGVuX2JpbmFyeSh2b2lkICpidWYp
Cj4gPiArewo+ID4gKwlpbnQgcmV0Owo+ID4gKwlzdHJ1Y3QgZWxmX2ltYWdlICplbGY7Cj4gPiAr
Cj4gPiArCWVsZiA9IGNhbGxvYygxLCBzaXplb2YoKmVsZikpOwo+ID4gKwlpZiAoIWVsZikKPiA+
ICsJCXJldHVybiBFUlJfUFRSKC1FTk9NRU0pOwo+ID4gKwo+ID4gKwllbGZfaW5pdF9zdHJ1Y3Qo
ZWxmKTsKPiA+ICsKPiA+ICsJZWxmLT5oZHJfYnVmID0gYnVmOwo+ID4gKwlyZXQgPSBlbGZfY2hl
Y2tfaW1hZ2UoZWxmLCBidWYpOwo+ID4gKwlpZiAocmV0KSB7Cj4gPiArCQlmcmVlKGVsZik7Cj4g
PiArCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKPiA+ICsJfQo+ID4gKwo+ID4gKwllbGYtPmVu
dHJ5ID0gZWxmX2hkcl9lX2VudHJ5KGVsZiwgZWxmLT5oZHJfYnVmKTsKPiA+ICsKPiA+ICsJcmV0
dXJuIGVsZjsKPiA+ICt9Cj4gPiArCj4gPiAgc3RhdGljIHN0cnVjdCBlbGZfaW1hZ2UgKmVsZl9j
aGVja19pbml0KGNvbnN0IGNoYXIgKmZpbGVuYW1lKQo+ID4gIHsKPiA+ICAJaW50IHJldCwgZmQ7
Cj4gPiBAQCAtMjEzLDkgKzI1MSw3IEBAIHN0YXRpYyBzdHJ1Y3QgZWxmX2ltYWdlICplbGZfY2hl
Y2tfaW5pdChjb25zdCBjaGFyICpmaWxlbmFtZSkKPiA+ICAJaWYgKCFlbGYpCj4gPiAgCQlyZXR1
cm4gRVJSX1BUUigtRU5PTUVNKTsKPiA+ICAKPiA+IC0JSU5JVF9MSVNUX0hFQUQoJmVsZi0+bGlz
dCk7Cj4gPiAtCWVsZi0+bG93X2FkZHIgPSAodm9pZCAqKSAodW5zaWduZWQgbG9uZykgLTE7Cj4g
PiAtCWVsZi0+aGlnaF9hZGRyID0gMDsKPiA+ICsJZWxmX2luaXRfc3RydWN0KGVsZik7Cj4gPiAg
Cj4gPiAgCS8qIEZpcnN0IHBhc3MgaXMgdG8gcmVhZCBlbGYgaGVhZGVyIG9ubHkgKi8KPiA+ICAJ
ZmQgPSBvcGVuKGZpbGVuYW1lLCBPX1JET05MWSk7Cj4gPiBAQCAtMjk5LDcgKzMzNSwxMCBAQCB2
b2lkIGVsZl9jbG9zZShzdHJ1Y3QgZWxmX2ltYWdlICplbGYpCj4gPiAgewo+ID4gIAllbGZfcmVs
ZWFzZV9yZWdpb25zKGVsZik7Cj4gPiAgCj4gPiAtCWZyZWUoZWxmLT5oZHJfYnVmKTsKPiA+IC0J
ZnJlZShlbGYtPmZpbGVuYW1lKTsKPiA+ICsJaWYgKGVsZi0+ZmlsZW5hbWUpIHsKPiA+ICsJCWZy
ZWUoZWxmLT5oZHJfYnVmKTsKPiA+ICsJCWZyZWUoZWxmLT5maWxlbmFtZSk7Cj4gPiArCX0KPiA+
ICsKPiA+ICAJZnJlZShlbGYpOwo+ID4gIH0KPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2VsZi5o
IGIvaW5jbHVkZS9lbGYuaAo+ID4gaW5kZXggNzk3MGZkMmM5NS4uMTI2NzNlOTNlZCAxMDA2NDQK
PiA+IC0tLSBhL2luY2x1ZGUvZWxmLmgKPiA+ICsrKyBiL2luY2x1ZGUvZWxmLmgKPiA+IEBAIC00
MTQsNiArNDE0LDcgQEAgc3RhdGljIGlubGluZSBzaXplX3QgZWxmX2dldF9tZW1fc2l6ZShzdHJ1
Y3QgZWxmX2ltYWdlICplbGYpCj4gPiAgCXJldHVybiBlbGYtPmhpZ2hfYWRkciAtIGVsZi0+bG93
X2FkZHI7Cj4gPiAgfQo+ID4gIAo+ID4gK3N0cnVjdCBlbGZfaW1hZ2UgKmVsZl9vcGVuX2JpbmFy
eSh2b2lkICpidWYpOwo+ID4gIHN0cnVjdCBlbGZfaW1hZ2UgKmVsZl9vcGVuKGNvbnN0IGNoYXIg
KmZpbGVuYW1lKTsKPiA+ICB2b2lkIGVsZl9jbG9zZShzdHJ1Y3QgZWxmX2ltYWdlICplbGYpOwo+
ID4gIGludCBlbGZfbG9hZChzdHJ1Y3QgZWxmX2ltYWdlICplbGYpOwo+IAo+IAo+IAo+IC0tIAo+
IENsw6ltZW50IEzDqWdlciwKPiBFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVuZ2luZWVyIGF0
IEJvb3RsaW4KPiBodHRwczovL2Jvb3RsaW4uY29tCj4gCj4gCj4gVG8gZGVjbGFyZSBhIGZpbHRl
cmluZyBlcnJvciwgcGxlYXNlIHVzZSB0aGUgZm9sbG93aW5nIGxpbmsgOiBodHRwczovL3d3dy5z
ZWN1cml0eS1tYWlsLm5ldC9yZXBvcnRlci5waHA/bWlkPTRhYzIuNjFlMWIxNDAuNWNjYWEuMCZy
PWptYXNlbGJhcyU0MGthbHJheS5ldSZzPWNsZW1lbnQubGVnZXIlNDBib290bGluLmNvbSZvPVJl
JTNBKyU1QlBBVENIKzA0JTJGMTMlNUQrY29tbW9uJTNBK2VsZiUzQSthZGQrZWxmX2xvYWRfYmlu
YXJ5JnZlcmRpY3Q9QyZjPTA0YzY2OTQwOThiZmU0MGZjZjkxN2Q1M2RiMzBkMTg3YzUxOWJmNjIK
PiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpi
YXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

