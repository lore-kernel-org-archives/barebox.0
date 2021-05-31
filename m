Delivery-date: Mon, 31 May 2021 21:32:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnneg-0006Wt-AE
	for lore@lore.pengutronix.de; Mon, 31 May 2021 21:32:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnnef-0003Xs-29
	for lore@pengutronix.de; Mon, 31 May 2021 21:32:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JP6Ty89waNarPy4etbImalrBCLSA0y/nJsEXgQfz2HY=; b=E3OJT49kn9p8X/
	Uz+jg7QM5VISl6G0Bj99VG7tNKYKCD9QiqmGy/8FHRzy/utR5ext1ZGPDvyXbGfosiS8sa3zkXfpJ
	bT3HtGb2TQ95bTyTrE/Q1yaMaBEUflTYj+mRB5X315SvDbQ6BQhaDx2PhVIl2UEb90VEcOdOOnJIB
	DkrjtJEbvEziWhB2gWOVw/oi4j3rqj/1DpZFMDAqx6Ya5NU6WLx5PwbfEL2XuxHH+S2xYCNP+wEeK
	4MXOWLHuPu33zbgmXZvmPvklFcnAlAbIixdjUkFg99LlLj0UAv6aP9fAzgyOsUcn6myXhyhMtRO+c
	Q47leCDJUBld4d5riGyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnncz-00DEyB-7L; Mon, 31 May 2021 19:31:09 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnncv-00DEy5-So
 for barebox@bombadil.infradead.org; Mon, 31 May 2021 19:31:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=Yo3jttjEau8X4bWM1VXDGzHiZc2/1Mw11I/28pRKLmA=; b=PCaf5S+ii3+cDpGh5XFFXShl35
 udcsmmS2xpK+3zETpPpNk+s56mIqG5z0Cno/iHYS2apXy7sxoMxPJ8Xa8P5LXcKoYH5R60ekRgS+v
 nV5RX2NxP4WWbGSDMAaU2wpyVkLggrIm/J+gR9Zo1ZFHWeBqaWpwNHInvRRmLJHTMw7G2XQslobrM
 9B9eFHK3Bwxu+pvD6ldjqllUmv5i3owXJhKfURMkp28v909cSnNUb/HcKbvaPh0RsckNWYoGH1qVu
 Yieq5jm8fY3GZF5RWL6jV86UUwuq1li8Kz826VSGx6TtkMy0+ug/y1FuH5gil4//kYkazgIzQeJJW
 7yGO8c+g==;
Received: from lifc.univ-fcomte.fr ([194.57.88.66] helo=mail.femto-st.fr)
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lnnck-009LBk-MS
 for barebox@lists.infradead.org; Mon, 31 May 2021 19:30:59 +0000
Received: from x230_1.trabucayre.com ([78.252.129.8]) (authenticated bits=0)
 by mail.femto-st.fr (8.15.2/8.15.2/Debian-8) with ESMTPSA id 14VJUREl017173
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 31 May 2021 21:30:28 +0200
Date: Mon, 31 May 2021 21:29:21 +0200
From: Gwenhael Goavec-Merou <gwenj@trabucayre.com>
To: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20210531212921.2c261467@x230_1.trabucayre.com>
In-Reply-To: <20210531114256.3iusr5xywntp6aoy@pengutronix.de>
References: <20210527193600.20879-1-gwenj@trabucayre.com>
 <20210528122951.1c0a7b928097c984f500bab5@gmail.com>
 <20210531114256.3iusr5xywntp6aoy@pengutronix.de>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 194.57.88.66
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_203057_999920_8F615D23 
X-CRM114-Status: GOOD (  29.19  )
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
Cc: barebox@lists.infradead.org,
 Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>,
 Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH] ARM: SoCFPGA: add Terasic DE10-Nano board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gTW9uLCAzMSBNYXkgMjAyMSAxMzo0Mjo1NiArMDIwMApSb2xhbmQgSGllYmVyIDxyaGlAcGVu
Z3V0cm9uaXguZGU+IHdyb3RlOgoKPiBPbiBGcmksIE1heSAyOCwgMjAyMSBhdCAxMjoyOTo1MVBN
ICswMzAwLCBBbnRvbnkgUGF2bG92IHdyb3RlOgo+ID4gT24gVGh1LCAyNyBNYXkgMjAyMSAyMToz
NjowMCArMDIwMAo+ID4gR3dlbmhhZWwgR29hdmVjLU1lcm91IDxnd2VuakB0cmFidWNheXJlLmNv
bT4gd3JvdGU6Cj4gPiAgIAo+ID4gPiBGcm9tOiBHd2VuaGFlbCBHb2F2ZWMtTWVyb3UgPGd3ZW5o
YWVsLmdvYXZlYy1tZXJvdUB0cmFidWNheXJlLmNvbT4KPiA+ID4gCj4gPiA+IFRoZSBUZXJhc2lj
IERFMTAtTmFubyBib2FyZCBpcyBiYXNlZCBvbiBDeWNsb25lViBTb0NGUEdBICg1Q1NFQkE2KSB3
aXRoCj4gPiA+IAo+ID4gPiBXaGF0IGhhcyBiZWVuIHRlc3RlZCB0byB3b3JrOgo+ID4gPiAtIFNE
IGNhcmQKPiA+ID4gLSBHaWdhYml0IG5ldHdvcmsgIAo+ID4gCj4gPiBXaGF0IGlzIHRoZSBzdGF0
dXMgb2YgRlBHQSBiaXRzdHJlYW0gbG9hZGluZz8KPiA+IAo+ID4gLi4uCj4gPiAgIAo+ID4gPiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9hcmRzL3RlcmFzaWMtZGUxMC1uYW5vL2lvY3NyX2NvbmZp
Z19jeWNsb25lNS5jCj4gPiA+IGIvYXJjaC9hcm0vYm9hcmRzL3RlcmFzaWMtZGUxMC1uYW5vL2lv
Y3NyX2NvbmZpZ19jeWNsb25lNS5jIG5ldyBmaWxlIG1vZGUKPiA+ID4gMTAwNjQ0IGluZGV4IDAw
MDAwMDAwMC4uYzEyOTFkZWE0Cj4gPiA+IC0tLSAvZGV2L251bGwKPiA+ID4gKysrIGIvYXJjaC9h
cm0vYm9hcmRzL3RlcmFzaWMtZGUxMC1uYW5vL2lvY3NyX2NvbmZpZ19jeWNsb25lNS5jCj4gPiA+
IEBAIC0wLDAgKzEsNjc4IEBACj4gPiA+ICsvKiBHRU5FUkFURUQgRklMRSAtIERPIE5PVCBFRElU
ICovICAKPiAKPiBCeSB0aGUgd2F5LCB3aGF0IHdlcmUgdGhlIHNvdXJjZXMgZnJvbSB3aGljaCB0
aGF0IGZpbGUgd2FzIGdlbmVyYXRlZD8KPiAoSSBhc3N1bWUgdGhlIHNvdXJjZXMgd2VyZSB1bmRl
ciBCU0QtMy1DbGF1c2XigKY/KQo+CkZpbGVzIGFyZSBjb3BpZWQvYWRhcHRlZCBieSAgc2NyaXB0
cy9zb2NmcGdhX2ltcG9ydF9wcmVsb2FkZXIuIEZpbGVzIHVzZWQKcHJvZHVjZXMgYnkgcXVhcnR1
cyBhbmQgYnNwLWVkaXRvciBhcyBleHBsYWluZWQgaW4KRG9jdW1lbnRhdGlvbi9ib2FyZHMvc29j
ZnBnYS5yc3QgT3JpZ2luYWwgZmlsZXMgYXJlIEJTRC0zLUNsYXVzZQo+Cj4gIC0gUm9sYW5kCgpH
d2VuaGFlbAoKPiAKPiA+ID4gKy8qCj4gPiA+ICsgKiBDb3B5cmlnaHQgQWx0ZXJhIENvcnBvcmF0
aW9uIChDKSAyMDEyLTIwMTQuIEFsbCByaWdodHMgcmVzZXJ2ZWQKPiA+ID4gKyAqCj4gPiA+ICsg
KiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogICAgQlNELTMtQ2xhdXNlICAKPiA+IAo+ID4gVG86
IFNhc2NoYQo+ID4gQ2FuIHdlIGFkZCBCU0QtMy1DbGF1c2UtbGljZW5zZWQgZmlsZSBpbnRvIGJh
cmVib3g/Cj4gPiAKPiA+IC4uLgo+ID4gICAKPiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0
cy9zb2NmcGdhX2N5Y2xvbmU1X2RlMTBfbmFuby5kdHMKPiA+ID4gYi9hcmNoL2FybS9kdHMvc29j
ZnBnYV9jeWNsb25lNV9kZTEwX25hbm8uZHRzIG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiA+IGlu
ZGV4IDAwMDAwMDAwMC4uNjk2NWUzODIwCj4gPiA+IC0tLSAvZGV2L251bGwKPiA+ID4gKysrIGIv
YXJjaC9hcm0vZHRzL3NvY2ZwZ2FfY3ljbG9uZTVfZGUxMF9uYW5vLmR0cwo+ID4gPiBAQCAtMCww
ICsxLDM0IEBACj4gPiA+ICsvKgo+ID4gPiArICogIENvcHlyaWdodCAoQykgMjAyMSBHd2VuaGFl
bCBHb2F2ZWMtTWVyb3UKPiA+ID4gPGd3ZW5oYWVsLmdvYXZlYy1tZXJvdUB0cmFidWNheXJlLmNv
bT4KPiA+ID4gKyAqCj4gPiA+ICsgKiBUaGlzIHByb2dyYW0gaXMgZnJlZSBzb2Z0d2FyZTsgeW91
IGNhbiByZWRpc3RyaWJ1dGUgaXQgYW5kL29yIG1vZGlmeQo+ID4gPiArICogaXQgdW5kZXIgdGhl
IHRlcm1zIG9mIHRoZSBHTlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSBhcyBwdWJsaXNoZWQgYnkK
PiA+ID4gKyAqIHRoZSBGcmVlIFNvZnR3YXJlIEZvdW5kYXRpb247IGVpdGhlciB2ZXJzaW9uIDIg
b2YgdGhlIExpY2Vuc2UsIG9yCj4gPiA+ICsgKiAoYXQgeW91ciBvcHRpb24pIGFueSBsYXRlciB2
ZXJzaW9uLiAgCj4gPiAKPiA+IEp1c3QgdXNlIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIGhlcmUu
Cj4gPiAgIAo+ID4gPiArICogVGhpcyBwcm9ncmFtIGlzIGRpc3RyaWJ1dGVkIGluIHRoZSBob3Bl
IHRoYXQgaXQgd2lsbCBiZSB1c2VmdWwsCj4gPiA+ICsgKiBidXQgV0lUSE9VVCBBTlkgV0FSUkFO
VFk7IHdpdGhvdXQgZXZlbiB0aGUgaW1wbGllZCB3YXJyYW50eSBvZgo+ID4gPiArICogTUVSQ0hB
TlRBQklMSVRZIG9yIEZJVE5FU1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLiAgU2VlIHRoZQo+
ID4gPiArICogR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UgZm9yIG1vcmUgZGV0YWlscy4KPiA+
ID4gKyAqCj4gPiA+ICsgKiBZb3Ugc2hvdWxkIGhhdmUgcmVjZWl2ZWQgYSBjb3B5IG9mIHRoZSBH
TlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZQo+ID4gPiArICogYWxvbmcgd2l0aCB0aGlzIHByb2dy
YW0uICBJZiBub3QsIHNlZSA8aHR0cDovL3d3dy5nbnUub3JnL2xpY2Vuc2VzLz4uCj4gPiA+ICsg
Ki8KPiA+ID4gKyAgCj4gPiAKPiA+IC0tIAo+ID4gQmVzdCByZWdhcmRzLAo+ID4gwqAgQW50b255
IFBhdmxvdgo+ID4gCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+ID4gYmFyZWJveCBtYWlsaW5nIGxpc3QKPiA+IGJhcmVib3hAbGlzdHMuaW5mcmFk
ZWFkLm9yZwo+ID4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9i
YXJlYm94Cj4gPiAgIAo+IAo+IC0tIAo+IFJvbGFuZCBIaWViZXIsIFBlbmd1dHJvbml4IGUuSy4g
ICAgICAgICAgfCByLmhpZWJlckBwZW5ndXRyb25peC5kZSAgICAgfAo+IFN0ZXVlcndhbGRlciBT
dHIuIDIxICAgICAgICAgICAgICAgICAgICAgfCBodHRwczovL3d3dy5wZW5ndXRyb25peC5kZS8g
fAo+IDMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5
LTUxMjEtMjA2OTE3LTAgICAgfAo+IEFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAg
ICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJv
eEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vYmFyZWJveAo=

