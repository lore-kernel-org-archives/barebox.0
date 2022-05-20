Delivery-date: Fri, 20 May 2022 16:34:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ns3iT-003AFF-PX
	for lore@lore.pengutronix.de; Fri, 20 May 2022 16:34:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ns3iS-0001pW-Ia
	for lore@pengutronix.de; Fri, 20 May 2022 16:34:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qx8P+o4heBkBh1scj9pYeFyjJ0RmHmXMAxtwQePo+JY=; b=PRg5AZOg9aI3na
	jo3lwJSoqIJDw6UZKgp/GQH0z8lp6CKoL04ZybkRYstjdfYaRh9SdRQ2JBvkpyHJq3EyKrGbBx8iu
	wdcyeSpbD4Xu6r/WV+jD5ojXfTmjlfrp5BOyM30mtJzwqo56PQOi3FR5fivTQ/dRWjU/MpzaQ2XD5
	JZwauMl0NNhadYRVogeZiCmItybVHxO6XdwqSJEGKb0kZpBLlj/hHKE+EMt61VCW8bWYgH8oZwoTK
	RWRJuZ5cxaEZTAB7ss7PNggytL96vAVzps90+2DapGqx83S0LnEboA+hTUZVFUde10QvEVnbOXGLn
	rvrjM2oOyF5JYK3t4kKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ns3h1-00Cw2F-8p; Fri, 20 May 2022 14:33:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ns3gv-00Cvzk-Mo
 for barebox@lists.infradead.org; Fri, 20 May 2022 14:33:23 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1ns3gp-0001aR-1W; Fri, 20 May 2022 16:33:15 +0200
Message-ID: <9b80b387dfdf2a64304eed26b378538419e8f10b.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Teresa Remmet <T.Remmet@phytec.de>, "barebox@lists.infradead.org"
 <barebox@lists.infradead.org>
Date: Fri, 20 May 2022 16:33:14 +0200
In-Reply-To: <a1ec13152a5ae7b4a32fcc2a63e40be36335aa06.camel@phytec.de>
References: <20220513141625.1411217-1-l.stach@pengutronix.de>
 <a1ec13152a5ae7b4a32fcc2a63e40be36335aa06.camel@phytec.de>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220520_073321_779897_9CCADC16 
X-CRM114-Status: GOOD (  22.85  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: imx: esdctl: fix LPDDR4 size calculation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGkgVGVyZXNhLAoKQW0gRnJlaXRhZywgZGVtIDIwLjA1LjIwMjIgdW0gMTQ6MTYgKzAwMDAgc2No
cmllYiBUZXJlc2EgUmVtbWV0Ogo+IEhlbGxvIEx1Y2FzLAo+IAo+IEFtIEZyZWl0YWcsIGRlbSAx
My4wNS4yMDIyIHVtIDE2OjE2ICswMjAwIHNjaHJpZWIgTHVjYXMgU3RhY2g6Cj4gPiBUaGUgRERS
QyBvbmx5IHVzZXMgdGhlIERFVklDRV9DT05GSUcgZmllbGQgZm9yIG1lbW9yeSB0eXBlcyBvdGhl
cgo+ID4gdGhhbgo+ID4gTFBERFI0LiBXaGlsZSBMUEREUjQgYWx3YXlzIGhhcyBhIGJ1cyB3aWR0
aCBvZiB4MzIsIHRoZSBzY3JpcHQgYWlkCj4gCj4gdGhpcyBpcyBub3QgdHJ1ZSBmb3IgaS5NWDhN
IE5hbm8uIFRoaXMgU29DIGhhcyBvbmx5IHgxNi4gVGhpcyBpcwo+IHByb2JhYmx5IHdoeSByZWFk
aW5nIHRoZSByZWdpc3RlciB3b3JrZWQgZm9yIEpvYWNpbSBvbiBpbXg4bW4uCj4gU28gdGhlcmUg
aXMgc29tZSBtb3JlIGNoZWNraW5nIG5lZWRlZC4KPiAKRG9lcyB0aGUgOE1OIHJlYWxseSB1c2Ug
dGhlIERFVklDRV9DT05GSUcgdG8gY29uZmlndXJlIHRoZSBMUEREUjQgYnVzCnRvIDE2Yml0IHdp
ZHRoLCBvciBkb2VzIGl0IHVzZSB0aGUgREFUQV9CVVNfV0lEVEggY29udHJvbCB0byBsaW1pdCB0
aGUKYnVzIHRvIDE2Yml0PwoKVGhlIHJlZ2lzdGVyIHByb2dyYW1taW5nIGFpZCBzcHJlYWRzaGVl
dCBmb3IgdGhlIDhNTiBjbGFpbXMgdGhhdApERVZJQ0VfQ09ORklHIGhhcyBubyBlZmZlY3Qgb24g
TFBERFI0IG1lbW9yeSwgc2FtZSBhcyBmb3IgYWxsIG90aGVyCmkuTThNKiB2YXJpYW50cy4gQnV0
IHRoZW4gdGhlIHNwcmVhZHNoZWV0IG1heSBoYXZlIGNvcHktYW5kLXBhc3RlCmlzc3Vlcy4gU28g
bWF5YmUgd2UgZG8gaW4gZmFjdCBuZWVkIHRvIGtub3cgdGhhdCBuYXRpdmUgYnVzIHdpZHRoIG9m
CmNvbnRyb2xsZXIgaW1wbGVtZW50YXRpb24gb24gdGhlIHNwZWNpZmljIFNvQyB0byBnZXQgdGhp
bmdzIHJpZ2h0IGZvcgpMUEREUjQ/CgpSZWdhcmRzLApMdWNhcwoKPiBSZWdhcmRzLAo+IFRlcmVz
YQo+IAo+ID4gZ2VuZXJhdGVzIHRoZSB2YWx1ZSBmb3IgYSB4MTYgYnVzLCBhcyB0aGlzIHdhcyBh
cHBhcmVudGx5IHVzZWQgZm9yCj4gPiB0aGUKPiA+IGNvbnRyb2xsZXIgdmFsaWRhdGlvbi4gVGhp
cyByZXN1bHRlZCBpbiB0aGUgY2FsY3VsYXRlZCBEUkFNIHNpemUgdG8KPiA+IGJlCj4gPiBoYWx2
ZWQgb24gYm9hcmRzIHdpdGggTFBERFI0IG1lbW9yeS4KPiA+IAo+ID4gRml4ZXM6IGQ4ZDU3Nzhl
ZThjMiAoIkFSTTogaW14OiBDb3JyZWN0IG1lbSBzaXplIGNhbGN1bGF0aW9uIGZvcgo+ID4gNC84
LzE2LzMyIGJpdCBidXMgd2lkdGgiKQo+ID4gU2lnbmVkLW9mZi1ieTogTHVjYXMgU3RhY2ggPGwu
c3RhY2hAcGVuZ3V0cm9uaXguZGU+Cj4gPiAtLS0KPiA+ICBhcmNoL2FybS9tYWNoLWlteC9lc2Rj
dGwuYyB8IDIgKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtaW14L2VzZGN0bC5jIGIv
YXJjaC9hcm0vbWFjaC1pbXgvZXNkY3RsLmMKPiA+IGluZGV4IGQzZGJmZmY0MjNkYS4uNGM4NzY1
YzE5M2QwIDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm0vbWFjaC1pbXgvZXNkY3RsLmMKPiA+ICsr
KyBiL2FyY2gvYXJtL21hY2gtaW14L2VzZGN0bC5jCj4gPiBAQCAtMzkyLDcgKzM5Miw3IEBAIGlt
eF9kZHJjX3NkcmFtX3NpemUodm9pZCBfX2lvbWVtICpkZHJjLCBjb25zdCB1MzIKPiA+IGFkZHJt
YXBbXSwKPiA+ICAJfQo+ID4gIAo+ID4gIAkvKiBCdXMgd2lkdGggaW4gYnl0ZXMsIDAgbWVhbnMg
aGFsZiBieXRlIG9yIDQtYml0IG1vZGUgKi8KPiA+IC0JaWYgKGlzX2lteDgpCj4gPiArCWlmIChp
c19pbXg4ICYmICEobXN0ciAmIEREUkNfTVNUUl9MUEREUjQpKQo+ID4gIAkJd2lkdGggPSAoMSA8
PCBGSUVMRF9HRVQoRERSQ19NU1RSX0RFVklDRV9DT05GSUcsIG1zdHIpKQo+ID4gPiA+IDE7Cj4g
PiAgCWVsc2UKPiA+ICAJCXdpZHRoID0gNDsKPiAtLSAKPiBQSFlURUMgTWVzc3RlY2huaWsgR21i
SCB8IFJvYmVydC1Lb2NoLVN0ci4gMzkgfCA1NTEyOSBNYWlueiwgR2VybWFueQo+IAo+IEdlc2No
w6RmdHNmw7xocmVyOiBEaXBsLi1JbmcuIE1pY2hhZWwgTWl0ZXpraSwgRGlwbC4tSW5nLiBCb2Rv
IEh1YmVyIHwKPiBIYW5kZWxzcmVnaXN0ZXIgTWFpbnogSFJCIDQ2NTYgfCBGaW5hbnphbXQgTWFp
bnogfCBTdC5Oci4gMjY2NTAwNjA4LCBERQo+IDE0OTA1OTg1NQoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJl
Ym94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9iYXJlYm94Cg==

