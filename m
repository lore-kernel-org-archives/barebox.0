Delivery-date: Fri, 10 Jun 2022 09:36:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzZBr-009n1W-6I
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 09:36:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzZBq-0007QP-0P
	for lore@pengutronix.de; Fri, 10 Jun 2022 09:36:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=o+JzcQCCuVNvxZo7jsnTxo9L9rk4W54FRm4IkUAOEmA=; b=OFGa5dlFfpSvxxnfaHAlYVeAF7
	Du+1BLJay/H83m6Koe+ptdPSIFWhPhJvc5yLHmG0Rg9NbR6BOjYpbmOjc6Pj7l4UpVyQeMvR2w8DW
	rchHcMAPD905GUSvt1o0GgRvVKWTN+OYlCoKKcYu877QYPLtMfsujB1SVNDk22ODVAOZytCcXFZHV
	p3qaRHMJHczSTeKSir19cnZpAZmRYOIGvZBjdYZh+QoGP7PISP4KpJOhSnUCfyoYPbVjqOHodq9+8
	MY5OkH3KXu7bvByKArcl3kku3MTOKMvfx4mr/DjTkTPyUPsRmXivfu7gN6bcxWaPq8uHBYQ4j+7iU
	NN986ZAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzZAU-006Sf6-6k; Fri, 10 Jun 2022 07:34:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzZ8H-006Rde-TC
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 07:32:39 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzZ8D-0006hB-Io; Fri, 10 Jun 2022 09:32:33 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzZ8C-000759-TD; Fri, 10 Jun 2022 09:32:32 +0200
Date: Fri, 10 Jun 2022 09:32:32 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Michael Riesch <michael.riesch@wolfvision.net>,
	Barebox List <barebox@lists.infradead.org>
Message-ID: <20220610073232.GB1615@pengutronix.de>
References: <20220608051244.2318-1-eagle.alexander923@gmail.com>
 <aee6c95a-a4c1-19cc-7cf0-c156cbdc31ce@wolfvision.net>
 <CAP1tNvRBme69Te+u8NOn1wC7Jc8ztqX0jgJ1E+y=g+2VD=E7GA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAP1tNvRBme69Te+u8NOn1wC7Jc8ztqX0jgJ1E+y=g+2VD=E7GA@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_003237_978144_59A34CDA 
X-CRM114-Status: GOOD (  25.36  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: reset_source: Remove
 of_get_reset_source_priority()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gRnJpLCBKdW4gMTAsIDIwMjIgYXQgMDg6MDc6NThBTSArMDMwMCwgQWxleGFuZGVyIFNoaXlh
biB3cm90ZToKPiDRh9GCLCA5INC40Y7QvS4gMjAyMiDQsy4g0LIgMjM6MDgsIE1pY2hhZWwgUmll
c2NoIDxtaWNoYWVsLnJpZXNjaEB3b2xmdmlzaW9uLm5ldD46Cj4gPgo+ID4gSGkgQWxleGFuZGVy
LAo+ID4gT24gNi84LzIyIDA3OjEyLCBBbGV4YW5kZXIgU2hpeWFuIHdyb3RlOgo+ID4gPiBvZl9n
ZXRfcmVzZXRfc291cmNlX3ByaW9yaXR5KCkgaGFzIG5vIHVzZXJzLAo+ID4gPiBzbyBpdCBjYW4g
YmUgc2FmZWx5IHJlbW92ZWQuCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEFsZXhhbmRlciBT
aGl5YW4gPGVhZ2xlLmFsZXhhbmRlcjkyM0BnbWFpbC5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgY29t
bW9uL3Jlc2V0X3NvdXJjZS5jICB8IDIwICsrKy0tLS0tLS0tLS0tLS0tLS0tCj4gPiA+ICBpbmNs
dWRlL3Jlc2V0X3NvdXJjZS5oIHwgIDcgLS0tLS0tLQo+ID4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAz
IGluc2VydGlvbnMoKyksIDI0IGRlbGV0aW9ucygtKQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEv
Y29tbW9uL3Jlc2V0X3NvdXJjZS5jIGIvY29tbW9uL3Jlc2V0X3NvdXJjZS5jCj4gPiA+IGluZGV4
IDM1NTRjYmQwZmIuLmRjY2I2ODMyMzEgMTAwNjQ0Cj4gPiA+IC0tLSBhL2NvbW1vbi9yZXNldF9z
b3VyY2UuYwo+ID4gPiArKysgYi9jb21tb24vcmVzZXRfc291cmNlLmMKPiA+ID4gQEAgLTc2LDcg
Kzc2LDkgQEAgRVhQT1JUX1NZTUJPTChyZXNldF9zb3VyY2Vfc2V0X3ByaW5zdCk7Cj4gPiA+Cj4g
PiA+ICB2b2lkIHJlc2V0X3NvdXJjZV9zZXRfZGV2aWNlKHN0cnVjdCBkZXZpY2VfZCAqZGV2LCBl
bnVtIHJlc2V0X3NyY190eXBlIHN0KQo+ID4gPiAgewo+ID4gPiAtICAgICBpbnQgcHJpb3JpdHkg
PSBvZl9nZXRfcmVzZXRfc291cmNlX3ByaW9yaXR5KGRldi0+ZGV2aWNlX25vZGUpOwo+ID4gPiAr
ICAgICB1bnNpZ25lZCBpbnQgcHJpb3JpdHkgPSBSRVNFVF9TT1VSQ0VfREVGQVVMVF9QUklPUklU
WTsKPiA+ID4gKwo+ID4gPiArICAgICBvZl9wcm9wZXJ0eV9yZWFkX3UzMihub2RlLCAicmVzZXQt
c291cmNlLXByaW9yaXR5IiwgJnByaW9yaXR5KTsKPiA+Cj4gPiBUaGlzIHNlZW1zIHRvIGJyZWFr
IG15IGJ1aWxkOgo+ID4gYmFyZWJveC9jb21tb24vcmVzZXRfc291cmNlLmM6ODE6MzA6IGVycm9y
OiAnbm9kZScgdW5kZWNsYXJlZCAoZmlyc3QgdXNlCj4gPiBpbiB0aGlzIGZ1bmN0aW9uKQo+ID4g
ICAgODEgfCAgICAgICAgIG9mX3Byb3BlcnR5X3JlYWRfdTMyKG5vZGUsICJyZXNldC1zb3VyY2Ut
cHJpb3JpdHkiLAo+ID4gJnByaW9yaXR5KTsKPiA+ICAgICAgIHwgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBefn5+Cj4gPgo+ID4gU2hvdWxkICJub2RlIiBiZSByZXBsYWNlZCBieSAiZGV2
LT5kZXZpY2Vfbm9kZSI/Cj4gCj4gSGVsbG8uCj4gCj4gWW91J3JlIHJpZ2h0Lgo+IFVuZm9ydHVu
YXRlbHksIEkgZG8gbm90IHlldCBzZWUgdGhpcyBwYXRjaCBpbiB0aGUgbmV4dCBicmFuY2ggdG8g
Y3JlYXRlIGEgZml4dXAuCgpJIGZpeGVkIGl0IHVwLiBDaGVjayBsYXRlc3QgbmV4dCBicmFuY2gK
ClNhc2NoYQoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ClN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAg
ICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8CjMxMTM3IEhp
bGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAgICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5
MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZh
eDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9i
YXJlYm94Cg==

