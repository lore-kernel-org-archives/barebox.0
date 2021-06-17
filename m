Delivery-date: Thu, 17 Jun 2021 08:43:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltlkL-0003bP-Dt
	for lore@lore.pengutronix.de; Thu, 17 Jun 2021 08:43:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltlkK-0001DB-9v
	for lore@pengutronix.de; Thu, 17 Jun 2021 08:43:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cmDLEz+9CfDYJZmATNKQt1cMIgYStJx6ZVhMvhMpln0=; b=Oq1K1wqfm779kG
	g2SuIBeDH9I3h407N53G+omVPkczN2oSTc34TrQW58IcFiXXU73zJlgzt53WdQigrAZh3nhSec8lP
	TU1GnBniyR2ud4HiCwQ71KIVkNRO6EyNmSyp4tnsymsXNDUDxXu+LjKZBnoPULE5CWkMfImKypUYG
	HTMzW+18TLLCKe0UTUFla9vFVP6I6yR+RW1cNg7F0t7dJhrubgmpHvqfmOyWmNbLaNpQ8PiN7A4eA
	C4NRXjmDDuCUCSAM/UK1uulOYiXmk+fbh9fYOa/blBAAkK4JFy1TdY/d6XTChqo3Xa+dsPjZ/31/j
	2imfjrxjVWuP0qahdrGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltliq-0099fN-5r; Thu, 17 Jun 2021 06:41:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltlik-0099eI-Ii
 for barebox@lists.infradead.org; Thu, 17 Jun 2021 06:41:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ltlii-00018w-Qf; Thu, 17 Jun 2021 08:41:44 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ltlii-0000nx-FE; Thu, 17 Jun 2021 08:41:44 +0200
Date: Thu, 17 Jun 2021 08:41:44 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210617064144.GZ9782@pengutronix.de>
References: <FA60DA2B-8C76-4460-8009-88EAB94A0F2C@inside-m2m.de>
 <20210616123403.GW9782@pengutronix.de>
 <D8E37CF9-C7A1-40AE-B747-69E000D1B727@inside-m2m.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <D8E37CF9-C7A1-40AE-B747-69E000D1B727@inside-m2m.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:23:55 up 119 days,  9:47, 100 users,  load average: 0.26, 0.15,
 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210616_234146_662996_A0943225 
X-CRM114-Status: GOOD (  27.89  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Compiled in boot environment and dtbo files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gV2VkLCBKdW4gMTYsIDIwMjEgYXQgMDU6NTc6MDlQTSArMDIwMCwgS29uc3RhbnRpbiBLbGV0
c2Noa2Ugd3JvdGU6Cj4gCj4gPiBkZWZhdWx0ZW52L2RlZmF1bHRlbnYtMi1iYXNlL2Jvb3QgaXMg
dGhlIGdlbmVyaWMgcGxhY2UgdXNlZCBmb3IgYWxsCj4gPiBib2FyZHMuIEFzIHlvdSBhcmUgdXNp
bmcgdGhlIGJlYWdsZWJvbmUgeW91IHNob3VsZCByYXRoZXIgbWFuaXB1bGF0ZQo+ID4gYXJjaC9h
cm0vYm9hcmRzL2JlYWdsZWJvbmUvZGVmYXVsdGVudi1iZWFnbGVib25lLy4gVGhpcyBkaXJlY3Rv
cnkgaXMKPiA+IGFkZGVkIHdpdGggZGVmYXVsdGVudl9hcHBlbmRfZGlyZWN0b3J5KGRlZmF1bHRl
bnZfYmVhZ2xlYm9uZSkgdG8gdGhlCj4gPiBlbnZpcm9ubWVudCBvbmNlIHdlIGFjdHVhbGx5IGtu
b3cgd2UgYXJlIHJ1bm5pbmcgb24gdGhlIGJlYWdsZWJvbmUuCj4gCj4gSSBtb3ZlZCBteSBjdXN0
b21pc2F0aW9ucyB0byB0aGUgYm9hcmQgc3BlY2lmaWMgcGFydCBvZiB0aGUgdHJlZSwgd29ya3MK
PiBsaWtlIGEgY2hhcm0uIFRoYW5rcyBmb3IgdGhlIGNsYXJpZmljYXRpb24gYWJvdXQgaXRzIHJv
bGUuCj4gCj4gPiBodHRwczovL3N5c3RlbWQuaW8vQk9PVF9MT0FERVJfU1BFQ0lGSUNBVElPTi8u
IFdpdGggdGhhdCB5b3UgY2FuIHB1dAo+ID4gS2VybmVsIGFuZCBkZXZpY2UgdHJlZSBpbnRvIHRo
ZSByb290ZnMgYW5kIHN0YXJ0IHRoZSB3aG9sZSB0aGluZyB3aXRoCj4gPiAiYm9vdCBlbW1jIi4K
PiAKPiBXZWxsLCBJIGFtIHJhdGhlciBvcGVuIG1pbmRlZCB0byBkbyB0aGF0LCBldmVuIGlmIEkg
Y2FuIGNvbmZpZ3VyZSB0aGUga2VybmVsIGFuZAo+IGRldmljZSB0cmVlIGZyb20gcm9vdGZzLiBC
dXQgSSBuZWVkIHRvIGludmVzdGlnYXRlIG9uIGhvdyB0aGlzIGlzIGRvbmUgcHJvcGVybHnigKYK
CkluIHRoZSBlbmQgaXQgZ29lcyBkb3duIHRvIHB1dHRpbmcgYW4gZW50cnkgbGlrZSB0aGlzIGlu
dG8KbG9hZGVyL2VudHJpZXMvZm9vLmNvbmYgaW50byB5b3VyIHJvb3RmczoKCnRpdGxlICAgICAg
YnJhbmQgbmV3IHN0dWZmCnZlcnNpb24gICAgNS4xMy1yYzYKbWFjaGluZS1pZCA2YTk4NTdhMzkz
NzI0YjdhOTgxZWJiNWI4NDk1YjllYQpsaW51eCAgICAgIC9ib290L3NoYS1saW51eC1waHlGTEVY
LWkuTVg2CmRldmljZXRyZWUgL2Jvb3Qvc2hhLW9mdHJlZS1waHlGTEVYLWkuTVg2CmxpbnV4LWFw
cGVuZHJvb3QgdHJ1ZQoKTGludXggYW5kIGRldmljZSB0cmVlIHBhdGhzIGFyZSByZWxhdGl2ZSB0
byB0aGUgdG9wIG9mIHRoZSByb290ZnMuClRoZSBnb29kIHRoaW5nIGFib3V0IGl0IGlzIHRoYXQg
bm93IHlvdSBjYW4gZXhjaGFuZ2UgS2VybmVsIGFuZCBkZXZpY2UKdHJlZSBhcyBwYXJ0IG9mIHlv
dXIgcm9vdGZzIG9yIGV2ZW4gd2l0aCB5b3VyIGRpc3Ryb3MgcGFja2FnZQptYW5hZ2VtZW50LiBU
aGUgbGludXgtYXBwZW5kcm9vdCBwcm9wZXJ0eSBpcyBiYXJlYm94IHNwZWNpZmljLiBXaGVuIHRo
aXMKaXMgZm91bmQgdGhlbiBiYXJlYm94IHdpbGwgYWRkIGEgc3VpdGFibGUgcm9vdD0gb3B0aW9u
IHRvIHRoZSBLZXJuZWwKY29tbWFuZGxpbmUsIHNvIHlvdSBkb24ndCBoYXZlIHRvIGNhcmUgYWJv
dXQgdGhhdCBhbnltb3JlLgoKPiAKPiBJbiBib3RoIGNhc2VzIEkgZ2V0IGFuIGVycm9yK3dhcm5p
bmc6Cj4gCj4gQm9vdGluZyBlbnRyeSAnaW5zaWRlbTJtJwo+IG1vdW50ZWQgL2Rldi9tbWMxLjEg
b24gL21udC9tbWMxLjEKPiAKPiBMb2FkaW5nIEFSTSBMaW51eCB6SW1hZ2UgJy9ib290L3VJbWFn
ZScKPiBMb2FkaW5nIGRldmljZXRyZWUgZnJvbSAnL2Jvb3QvYW0zMzV4LWJvbmVibGFjay5kdGIn
Cj4gRVJST1I6IG9mX3Jlc29sdmVyOiBfX3N5bWJvbHNfXyBtaXNzaW5nIGZyb20gYmFzZSBkZXZp
Y2V0cmVlCj4gV0FSTklORzogRmFpbGVkIHRvIGZpeHVwIG5vZGUgaW4gb2Zfb3ZlcmxheV9maXh1
cCsweDEvMHg0OiBJbnZhbGlkIGFyZ3VtZW50Cj4gRVJST1I6IG9mX3Jlc29sdmVyOiBfX3N5bWJv
bHNfXyBtaXNzaW5nIGZyb20gYmFzZSBkZXZpY2V0cmVlCj4gV0FSTklORzogRmFpbGVkIHRvIGZp
eHVwIG5vZGUgaW4gb2Zfb3ZlcmxheV9maXh1cCsweDEvMHg0OiBJbnZhbGlkIGFyZ3VtZW50CgpZ
b3UgaGF2ZSB0byBjb21waWxlIHRoZSBkZXZpY2UgdHJlZSB3aXRoIC1AIHBhc3NlZCB0byBkdGMu
IElmIHlvdSBhcmUKYnVpbGRpbmcgdGhlIGRldmljZSB0cmVlIGluIHRoZSBLZXJuZWwgdGhpcyBk
b2VzIHRoZSB0cmljazoKCm1ha2UgZHRicyBEVENfRkxBR1M9LUAKClNhc2NoYQoKLS0gClBlbmd1
dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB8ClN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAgICAgICAgICAgICB8
IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8CjMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkg
ICAgICAgICAgICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8CkFtdHNnZXJp
Y2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5
MTctNTU1NSB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

