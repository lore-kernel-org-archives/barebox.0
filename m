Delivery-date: Mon, 31 May 2021 13:44:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lngLX-0004M8-S3
	for lore@lore.pengutronix.de; Mon, 31 May 2021 13:44:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lngLW-00083p-Lo
	for lore@pengutronix.de; Mon, 31 May 2021 13:44:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3pyuvBOm1SJEaNj5sxozqqvC6sgy+ObH4hnuuVBKWQk=; b=HbsmTKe4V/FMpJ
	jFW0mfeR4+JmllSrkG+5aVKUuwhAolCuS4yR5CZADZb9ixa9duGbtDTblDsG0lz70vfI7oOtx9YaU
	Gupy5p1Wu/f/REgTOxC5E1O0vdPbuVfSn/scYWzjpM9CfHRk7Veb+RQNp4MPV576eth2wZRMOm7GG
	6mvL1xLnAqBxCyQEEy05UQgq9lwKFgbQSkSDVmNqy7MhZ5w4lqhc05GEVhtORqfjtnMcAHdTQk6DN
	PcHVMI01zmFyPz2spygC49SQEuptIqTfX2cS6L8dBiu9ErWrQxSczyat43nZWmTIA3bKAvFQXay28
	D78wXyM+bodQLkt7CcJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lngK3-00C1yF-CJ; Mon, 31 May 2021 11:43:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lngJy-00C1xp-7m
 for barebox@lists.infradead.org; Mon, 31 May 2021 11:43:03 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1lngJt-0007y3-9n; Mon, 31 May 2021 13:42:57 +0200
Received: from rhi by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1lngJs-0004Dn-Q5; Mon, 31 May 2021 13:42:56 +0200
Date: Mon, 31 May 2021 13:42:56 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Message-ID: <20210531114256.3iusr5xywntp6aoy@pengutronix.de>
References: <20210527193600.20879-1-gwenj@trabucayre.com>
 <20210528122951.1c0a7b928097c984f500bab5@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210528122951.1c0a7b928097c984f500bab5@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_044302_305369_EC15DB15 
X-CRM114-Status: GOOD (  33.20  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: SoCFPGA: add Terasic DE10-Nano board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gRnJpLCBNYXkgMjgsIDIwMjEgYXQgMTI6Mjk6NTFQTSArMDMwMCwgQW50b255IFBhdmxvdiB3
cm90ZToKPiBPbiBUaHUsIDI3IE1heSAyMDIxIDIxOjM2OjAwICswMjAwCj4gR3dlbmhhZWwgR29h
dmVjLU1lcm91IDxnd2VuakB0cmFidWNheXJlLmNvbT4gd3JvdGU6Cj4gCj4gPiBGcm9tOiBHd2Vu
aGFlbCBHb2F2ZWMtTWVyb3UgPGd3ZW5oYWVsLmdvYXZlYy1tZXJvdUB0cmFidWNheXJlLmNvbT4K
PiA+IAo+ID4gVGhlIFRlcmFzaWMgREUxMC1OYW5vIGJvYXJkIGlzIGJhc2VkIG9uIEN5Y2xvbmVW
IFNvQ0ZQR0EgKDVDU0VCQTYpIHdpdGgKPiA+IAo+ID4gV2hhdCBoYXMgYmVlbiB0ZXN0ZWQgdG8g
d29yazoKPiA+IC0gU0QgY2FyZAo+ID4gLSBHaWdhYml0IG5ldHdvcmsKPiAKPiBXaGF0IGlzIHRo
ZSBzdGF0dXMgb2YgRlBHQSBiaXRzdHJlYW0gbG9hZGluZz8KPiAKPiAuLi4KPiAKPiA+IGRpZmYg
LS1naXQgYS9hcmNoL2FybS9ib2FyZHMvdGVyYXNpYy1kZTEwLW5hbm8vaW9jc3JfY29uZmlnX2N5
Y2xvbmU1LmMgYi9hcmNoL2FybS9ib2FyZHMvdGVyYXNpYy1kZTEwLW5hbm8vaW9jc3JfY29uZmln
X2N5Y2xvbmU1LmMKPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAwMDAu
LmMxMjkxZGVhNAo+ID4gLS0tIC9kZXYvbnVsbAo+ID4gKysrIGIvYXJjaC9hcm0vYm9hcmRzL3Rl
cmFzaWMtZGUxMC1uYW5vL2lvY3NyX2NvbmZpZ19jeWNsb25lNS5jCj4gPiBAQCAtMCwwICsxLDY3
OCBAQAo+ID4gKy8qIEdFTkVSQVRFRCBGSUxFIC0gRE8gTk9UIEVESVQgKi8KCkJ5IHRoZSB3YXks
IHdoYXQgd2VyZSB0aGUgc291cmNlcyBmcm9tIHdoaWNoIHRoYXQgZmlsZSB3YXMgZ2VuZXJhdGVk
PwooSSBhc3N1bWUgdGhlIHNvdXJjZXMgd2VyZSB1bmRlciBCU0QtMy1DbGF1c2XigKY/KQoKIC0g
Um9sYW5kCgo+ID4gKy8qCj4gPiArICogQ29weXJpZ2h0IEFsdGVyYSBDb3Jwb3JhdGlvbiAoQykg
MjAxMi0yMDE0LiBBbGwgcmlnaHRzIHJlc2VydmVkCj4gPiArICoKPiA+ICsgKiBTUERYLUxpY2Vu
c2UtSWRlbnRpZmllcjogICAgQlNELTMtQ2xhdXNlCj4gCj4gVG86IFNhc2NoYQo+IENhbiB3ZSBh
ZGQgQlNELTMtQ2xhdXNlLWxpY2Vuc2VkIGZpbGUgaW50byBiYXJlYm94Pwo+IAo+IC4uLgo+IAo+
ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9zb2NmcGdhX2N5Y2xvbmU1X2RlMTBfbmFuby5k
dHMgYi9hcmNoL2FybS9kdHMvc29jZnBnYV9jeWNsb25lNV9kZTEwX25hbm8uZHRzCj4gPiBuZXcg
ZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwLi42OTY1ZTM4MjAKPiA+IC0tLSAv
ZGV2L251bGwKPiA+ICsrKyBiL2FyY2gvYXJtL2R0cy9zb2NmcGdhX2N5Y2xvbmU1X2RlMTBfbmFu
by5kdHMKPiA+IEBAIC0wLDAgKzEsMzQgQEAKPiA+ICsvKgo+ID4gKyAqICBDb3B5cmlnaHQgKEMp
IDIwMjEgR3dlbmhhZWwgR29hdmVjLU1lcm91IDxnd2VuaGFlbC5nb2F2ZWMtbWVyb3VAdHJhYnVj
YXlyZS5jb20+Cj4gPiArICoKPiA+ICsgKiBUaGlzIHByb2dyYW0gaXMgZnJlZSBzb2Z0d2FyZTsg
eW91IGNhbiByZWRpc3RyaWJ1dGUgaXQgYW5kL29yIG1vZGlmeQo+ID4gKyAqIGl0IHVuZGVyIHRo
ZSB0ZXJtcyBvZiB0aGUgR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UgYXMgcHVibGlzaGVkIGJ5
Cj4gPiArICogdGhlIEZyZWUgU29mdHdhcmUgRm91bmRhdGlvbjsgZWl0aGVyIHZlcnNpb24gMiBv
ZiB0aGUgTGljZW5zZSwgb3IKPiA+ICsgKiAoYXQgeW91ciBvcHRpb24pIGFueSBsYXRlciB2ZXJz
aW9uLgo+IAo+IEp1c3QgdXNlIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIGhlcmUuCj4gCj4gPiAr
ICogVGhpcyBwcm9ncmFtIGlzIGRpc3RyaWJ1dGVkIGluIHRoZSBob3BlIHRoYXQgaXQgd2lsbCBi
ZSB1c2VmdWwsCj4gPiArICogYnV0IFdJVEhPVVQgQU5ZIFdBUlJBTlRZOyB3aXRob3V0IGV2ZW4g
dGhlIGltcGxpZWQgd2FycmFudHkgb2YKPiA+ICsgKiBNRVJDSEFOVEFCSUxJVFkgb3IgRklUTkVT
UyBGT1IgQSBQQVJUSUNVTEFSIFBVUlBPU0UuICBTZWUgdGhlCj4gPiArICogR05VIEdlbmVyYWwg
UHVibGljIExpY2Vuc2UgZm9yIG1vcmUgZGV0YWlscy4KPiA+ICsgKgo+ID4gKyAqIFlvdSBzaG91
bGQgaGF2ZSByZWNlaXZlZCBhIGNvcHkgb2YgdGhlIEdOVSBHZW5lcmFsIFB1YmxpYyBMaWNlbnNl
Cj4gPiArICogYWxvbmcgd2l0aCB0aGlzIHByb2dyYW0uICBJZiBub3QsIHNlZSA8aHR0cDovL3d3
dy5nbnUub3JnL2xpY2Vuc2VzLz4uCj4gPiArICovCj4gPiArCj4gCj4gLS0gCj4gQmVzdCByZWdh
cmRzLAo+IMKgIEFudG9ueSBQYXZsb3YKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IGJhcmVib3ggbWFpbGluZyBsaXN0Cj4gYmFyZWJveEBsaXN0
cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9iYXJlYm94Cj4gCgotLSAKUm9sYW5kIEhpZWJlciwgUGVuZ3V0cm9uaXggZS5LLiAgICAg
ICAgICB8IHIuaGllYmVyQHBlbmd1dHJvbml4LmRlICAgICB8ClN0ZXVlcndhbGRlciBTdHIuIDIx
ICAgICAgICAgICAgICAgICAgICAgfCBodHRwczovL3d3dy5wZW5ndXRyb25peC5kZS8gfAozMTEz
NyBIaWxkZXNoZWltLCBHZXJtYW55ICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIw
NjkxNy0wICAgIHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICB8IEZh
eDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9i
YXJlYm94Cg==

