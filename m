Delivery-date: Mon, 21 Jun 2021 06:03:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvBA8-0007yC-BO
	for lore@lore.pengutronix.de; Mon, 21 Jun 2021 06:03:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvBA7-0005al-9i
	for lore@pengutronix.de; Mon, 21 Jun 2021 06:03:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qx7JLTo74Cxm9curXOEnZs63PN8P8hkCpSczwdK8peI=; b=Gx+UHZKv/0uxT2
	VfQCBiwGtssTUiHiC6EFZB3nXnOmYAe3UerZucuW4iZmZT6pegy65YJfKl8eziCsV/yeXX1rwFWuH
	F4al4vThNnz/UdCYFcjZE2Czur4h4dqJUw08r6LRduuuo2BFCCZNN0ErP2GHOOambtFRuEMnezko8
	+zStm6k95TK88oZbs+uSH3e6jUQQMTFjOdiOAYqcGPf829oPYIRIhSq4Q2qHZW2aJy9DcyeTaIbj3
	UPgvrKuBF89Xqsz3Hr2d8rcohj8box5y5GZNGBPBNed9c4szIbH2pU8nBBizaqShaf5XWNmslnRxG
	Ec4p1kmSsTtttKkCp1sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvB8Q-0021C3-Vx; Mon, 21 Jun 2021 04:02:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvB8K-0021BZ-5a
 for barebox@lists.infradead.org; Mon, 21 Jun 2021 04:02:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvB8G-0005Wm-CI; Mon, 21 Jun 2021 06:01:56 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvB8F-0005FC-QW; Mon, 21 Jun 2021 06:01:55 +0200
Date: Mon, 21 Jun 2021 06:01:55 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210621040155.GD9782@pengutronix.de>
References: <FA60DA2B-8C76-4460-8009-88EAB94A0F2C@inside-m2m.de>
 <20210616123403.GW9782@pengutronix.de>
 <D8E37CF9-C7A1-40AE-B747-69E000D1B727@inside-m2m.de>
 <20210617064144.GZ9782@pengutronix.de>
 <A4554499-51AF-4180-9D58-625A8CA58C97@inside-m2m.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <A4554499-51AF-4180-9D58-625A8CA58C97@inside-m2m.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 05:56:59 up 123 days,  7:20, 88 users,  load average: 0.00, 0.02,
 0.05
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210620_210200_262308_E99E641F 
X-CRM114-Status: GOOD (  34.01  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Compiled in boot environment and dtbo files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gRnJpLCBKdW4gMTgsIDIwMjEgYXQgMDM6MTU6MzJQTSArMDIwMCwgS29uc3RhbnRpbiBLbGV0
c2Noa2Ugd3JvdGU6Cj4gCj4gCj4gPiBJbiB0aGUgZW5kIGl0IGdvZXMgZG93biB0byBwdXR0aW5n
IGFuIGVudHJ5IGxpa2UgdGhpcyBpbnRvCj4gPiBsb2FkZXIvZW50cmllcy9mb28uY29uZiBpbnRv
IHlvdXIgcm9vdGZzOgo+IAo+IEkgd2lsbCBpbnZlc3RpZ2F0ZSB0aGlzIGRlZmluaXRlbHkgY2Fy
ZWZ1bGx5IHNpbmNlIHRoaXMgaGFzIG5pY2UgYWR2YW50YWdlcwo+IGNvbnRyb2xsaW5nIHRoZSBi
b290IGZyb20gdXNlcnNwYWNlLCBlc3BlY2lhbGx5IGluIG9yZGVyIHRvIGdhaW4gYSBwcm9wZXIK
PiBmYWlsb3ZlciBlbnZpcm9ubWVudC4KPiAKPiBNZWFud2hpbGUgSSByZWFsaXplZCBJIG1vc3Qg
cHJvYmFibHkgaGF2ZSBubyBwcm9ibGVtIHdpdGggYmFyZWJveCBhbmQKPiBkdGIvZHRibyBoYW5k
bGluZy4gQXQgbGVhc3QgaXQgX2lzXyBwcmVwYXJpbmcg4oCcbXnigJ0gZHRibyBmaWxlcyBhbmQg
dHJ5aW5nIHRvIAo+IGhhbmRsZSB0aGVtLgo+IAo+IEluIG15IGluaXRpYWwgbWFpbCByZWdhcmRp
bmcgdGhpcyB0aHJlYWQgSSBtZW50aW9uZWQgaG93IHRoaXMgd29ya3Mgb24gbXkgCj4gQmVhZ2xl
Ym9uZXMgd2hlbiBJIGtlcHQgdGhlIGRlbGl2ZXJlZCBkZWJpYW4gZW52aXJvbm1lbnQgd2l0aCB1
LWJvb3QuCj4gVGhlIGdvYWwgaXMgdG8gaGF2ZSB0aGUgc2VyaWFsIGxpbmVzIGVuYWJsZWQgYXMg
c2VyaWFsIGFmdGVyIGJvb3R1cCBvbiB0aGUKPiBwaW5oZWFkZXJzIGFuZCB0aGVyZQo+IHRoaXMg
d29ya3Mgd2l0aCB0aG9zZSBkdGJvIGZpbGVzLiBBbHNvIEkgcmVhbGl6ZWQgSSBjYW4gb21pdCB0
aGVtIGFuZCBiaXRiYW5nCj4gaW4gdGhlIEdQSU8gbXVsdGlwbGV4IG1lY2hhbmlzbSBiZWxvdyAv
c3lzL3BsYXRmb3JtLy4uLiB0byBnYWluIHRoZSBzYW1lCj4gZWZmZWN0LiBCZWNhdXNlIHRoZSBk
ZWJpYW4ga2VybmVsIHNldHVwIChpbmNsdWRpbmcgdGhlIGR0YiBmaWxlPykgaXMgZW5hYmxpbmcg
YWxsCj4gZm91ciBzZXJpYWwgbGluZXMgYXQgYm9vdCwgcmVnYXJkbGVzcyB3aGF0IEkgZG86Cj4g
Cj4gWyAgICAwLjk1MjQ4Ml0gNDRlMDkwMDAuc2VyaWFsOiB0dHlTMCBhdCBNTUlPIDB4NDRlMDkw
MDAgKGlycSA9IDMwLCBiYXNlX2JhdWQgPSAzMDAwMDAwKSBpcyBhIDgyNTAKPiBbICAgIDEuNzEz
ODEyXSBjb25zb2xlIFt0dHlTMF0gZW5hYmxlZAo+IFsgICAgMS43MTg0ODJdIDQ4MDIyMDAwLnNl
cmlhbDogdHR5UzEgYXQgTU1JTyAweDQ4MDIyMDAwIChpcnEgPSAzMSwgYmFzZV9iYXVkID0gMzAw
MDAwMCkgaXMgYSA4MjUwCj4gWyAgICAxLjcyODQ5OF0gNDgwMjQwMDAuc2VyaWFsOiB0dHlTMiBh
dCBNTUlPIDB4NDgwMjQwMDAgKGlycSA9IDMyLCBiYXNlX2JhdWQgPSAzMDAwMDAwKSBpcyBhIDgy
NTAKPiBbICAgIDEuNzM4Mzg3XSA0ODFhNjAwMC5zZXJpYWw6IHR0eVMzIGF0IE1NSU8gMHg0ODFh
NjAwMCAoaXJxID0gMzMsIGJhc2VfYmF1ZCA9IDMwMDAwMDApIGlzIGEgODI1MAo+IFsgICAgMS43
NDgzNTFdIDQ4MWE4MDAwLnNlcmlhbDogdHR5UzQgYXQgTU1JTyAweDQ4MWE4MDAwIChpcnEgPSAz
NCwgYmFzZV9iYXVkID0gMzAwMDAwMCkgaXMgYSA4MjUwCj4gWyAgICAxLjc1ODE4OF0gNDgxYWEw
MDAuc2VyaWFsOiB0dHlTNSBhdCBNTUlPIDB4NDgxYWEwMDAgKGlycSA9IDM1LCBiYXNlX2JhdWQg
PSAzMDAwMDAwKSBpcyBhIDgyNTAKPiAKPiBUaGUgZHRibyBmaWxlcyBvbmx5IGRvIHNvbWUgR1BJ
TyBtdWx0aXBsZXhpbmcgKEkgcmVhbGl6ZWQgeWVzdGVyZGF5KS4KPiAKPiBJbiBteSBrZXJuZWwg
c2V0dXAgb25seSB0aGUgZmlyc3Qgc2VyaWFsIGludGVyZmFjZSBnZXRzIGVuYWJsZWQ6Cj4gCj4g
WyAgICAwLjczNDY0NF0gNDRlMDkwMDAuc2VyaWFsOiB0dHlPMCBhdCBNTUlPIDB4NDRlMDkwMDAg
KGlycSA9IDI5LCBiYXNlX2JhdWQgPSAzMDAwMDAwKSBpcyBhIE9NQVAgVUFSVDAKPiBbICAgIDEu
MzAzMTU0XSBwcmludGs6IGNvbnNvbGUgW3R0eU8wXSBlbmFibGVkCj4gCj4gTWF5YmUgdGhlIG92
ZXJsYXlzIGFyZSBub3Qgd29ya2luZyBzaW5jZSB0aGVyZSBhcmUgcmVmZXJyaW5nIHRvIG5vdCBl
bmFibGVkIHNlcmlhbCBpbnRlcmZhY2VzLCAKPiBsaWtlICJ0YXJnZXQgPSA8JnVhcnQxPjvigJ0g
Zm9yIGV4YW1wbGU/IEkgYW0gc3RpbGwgaW52ZXN0aWdhdGluZyB3aGVyZSBkaWZmZXJlbmNlcyBi
ZXR3ZWVuIG15IAo+IHJhdGhlciB2YW5pbGxhIHNldHVwIGFuZCB0aGUgZGViaWFuIGNoYW5nZXMg
YXJlLi4uCj4gCj4gCj4gPj4gTG9hZGluZyBBUk0gTGludXggekltYWdlICcvYm9vdC91SW1hZ2Un
Cj4gPj4gTG9hZGluZyBkZXZpY2V0cmVlIGZyb20gJy9ib290L2FtMzM1eC1ib25lYmxhY2suZHRi
Jwo+ID4+IEVSUk9SOiBvZl9yZXNvbHZlcjogX19zeW1ib2xzX18gbWlzc2luZyBmcm9tIGJhc2Ug
ZGV2aWNldHJlZQo+ID4+IFdBUk5JTkc6IEZhaWxlZCB0byBmaXh1cCBub2RlIGluIG9mX292ZXJs
YXlfZml4dXArMHgxLzB4NDogSW52YWxpZCBhcmd1bWVudAo+ID4+IEVSUk9SOiBvZl9yZXNvbHZl
cjogX19zeW1ib2xzX18gbWlzc2luZyBmcm9tIGJhc2UgZGV2aWNldHJlZQo+ID4+IFdBUk5JTkc6
IEZhaWxlZCB0byBmaXh1cCBub2RlIGluIG9mX292ZXJsYXlfZml4dXArMHgxLzB4NDogSW52YWxp
ZCBhcmd1bWVudAo+ID4gCj4gPiBZb3UgaGF2ZSB0byBjb21waWxlIHRoZSBkZXZpY2UgdHJlZSB3
aXRoIC1AIHBhc3NlZCB0byBkdGMuIElmIHlvdSBhcmUKPiA+IGJ1aWxkaW5nIHRoZSBkZXZpY2Ug
dHJlZSBpbiB0aGUgS2VybmVsIHRoaXMgZG9lcyB0aGUgdHJpY2s6Cj4gPiAKPiA+IG1ha2UgZHRi
cyBEVENfRkxBR1M9LUAKPiAKPiBJIHByZXBhcmVkIGEga2VybmVsICh1c3VhbGx5IEkgdXNlIHlv
Y3RvLCBJIGRpZCBub3QgZm91bmQgd2hlcmUgdG8gYXBwbHkgZmxhZ3MgZm9yIOKAnG1ha2UgZHRi
c+KAnSBzbyBJCj4gcHJlcGFyZWQgYSB0ZXN0IHNldHVwKSBhbmQgZHRibyBmaWxlcyB0aGlzIHdh
eS4gVGhlIGNvbXBpbGUgcHJvY2VzcyBzcGl0cyBtYW55IHdhcm5pbmdzIGFuZCB0aGUgCj4gcmVz
dWx0aW5nIGJpbmFyeSBzaXplIGluY3JlYXNlcywgYnV0IHRoZSBlcnJvciDigJxb4oCmXSBJbnZh
bGlkIGFyZ3VtZW50IiBpcyBpZGVudGljYWwuCgpIYXZlIGEgbG9vayBhdCB0aGUgZ2VuZXJhdGVk
IGR0YiBmaWxlIHdpdGggJ2R0YyAtSSBkdGIgLU8gZHRzIDxmaWxlPicuCkl0IHNob3VsZCBjb250
YWluIGEgX19zeW1ib2xzX18gbm9kZS4KCkJUVyBkbyB5b3UgaGF2ZSBhIGdvb2QgcmVhc29uIHRv
IHVzZSBvdmVybGF5cz8gT3ZlcmxheXMgb25seSBoYXZlIGEKdmFsdWUgd2hlbiB5b3UgaGF2ZSBk
aWZmZXJlbnQgaGFyZHdhcmUgdmFyaWFudHMgaW4gd2hpY2ggZGlmZmVyZW50Cm92ZXJsYXlzIGFy
ZSBsb2FkZWQuIElmIHRoYXQncyBub3QgdGhlIGNhc2UgSSdkIGp1c3QgZ28gd2l0aCBhIHN0YXRp
YwpkZXZpY2V0cmVlIGFuZCBiZSBkb25lIHdpdGggaXQuCgpTYXNjaGEKCgotLSAKUGVuZ3V0cm9u
aXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwKU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAgICAgICAgICAgICAgIHwgaHR0
cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSAgICAg
ICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10c2dlcmljaHQg
SGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01
NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJh
cmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

