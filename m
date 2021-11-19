Delivery-date: Fri, 19 Nov 2021 10:30:53 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mo0EP-0008UJ-HN
	for lore@lore.pengutronix.de; Fri, 19 Nov 2021 10:30:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mo0EO-0003XX-Hv
	for lore@pengutronix.de; Fri, 19 Nov 2021 10:30:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NQe8uRTLwWwMnLsC4hLPyS4mbbJbqRhTsJHYonGA1Uo=; b=V55IruMufdZ3Sn
	TgE/3gG70llWb3LowBOah4KT26HbigICDyY4fHvAKJJ4Dd5SsXfMollDlhZ7a868/HW4JNKIg9jgF
	OriB0lu7s2vzEfV7oDR+TSFfrwKDHrPnPmjbNSHpa9hvaQjcFGFTClSQB5S0DTvOmw2wqi137lVNJ
	VuMKrFTKK1m95KgTt8k386zTXDIt8rUqa/hPPGZpnSp1z18hB14QtXs45Z19oiCmt8bqbDep8jLJh
	OLLTdMgiu1DYx/Lq4fAhmCsZwlU4T+LSv0rBUO9fPFa6HkT7q68U7Mp24katdlgNZh+4xrWGJI2FC
	JAPF4XvjPBUIoeeJRTnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mo0D0-009z0y-Kl; Fri, 19 Nov 2021 09:29:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mo0Cu-009yzS-HU
 for barebox@lists.infradead.org; Fri, 19 Nov 2021 09:29:22 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mol@pengutronix.de>)
 id 1mo0Cr-0003Ej-BE; Fri, 19 Nov 2021 10:29:17 +0100
Received: from mol by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mol@pengutronix.de>)
 id 1mo0Cq-0001EY-To; Fri, 19 Nov 2021 10:29:16 +0100
Date: Fri, 19 Nov 2021 10:29:16 +0100
From: Michael Olbrich <m.olbrich@pengutronix.de>
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org
Message-ID: <20211119092916.GD5253@pengutronix.de>
Mail-Followup-To: Ian Abbott <abbotti@mev.co.uk>, barebox@lists.infradead.org
References: <62b76c10-a376-a2f5-5b21-fdda86db4a03@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <62b76c10-a376-a2f5-5b21-fdda86db4a03@mev.co.uk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:26:29 up 274 days, 12:50, 146 users,  load average: 0.16, 0.27,
 0.26
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211119_012920_621614_3D475B17 
X-CRM114-Status: GOOD (  28.39  )
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
Subject: Re: Build failures with CC=arm-linux-gnueabihf-gcc-11
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gVGh1LCBOb3YgMTgsIDIwMjEgYXQgMDM6MzI6MDRQTSArMDAwMCwgSWFuIEFiYm90dCB3cm90
ZToKPiBIaSwKPiAKPiBNeSBEZWJpYW4gInRlc3RpbmciIGJ1aWxkIHN5c3RlbSB1cGRhdGVkIHRo
ZSBkZWZhdWx0IHZlcnNpb24gb2YKPiBhcm0tbGludXgtZ251ZWFiaWhmLWdjYyBmcm9tIDEwLngg
dG8gMTEueC4gIEJ1aWxkaW5nIGJhcmVib3ggaW4gdGh1bWItMiBtb2RlCj4gZm9yIGFuIEFSTXY3
IChpdCdzIGEgU29DRlBHQSkgd2l0aCB0aGlzIGNvbXBpbGVyIGZhaWxzIHdpdGggYXNzZW1ibGVy
IGVycm9ycwo+IHN1Y2ggYXM6Cj4gCj4gICBDQyAgICAgIGNvbW1vbi9zdGF0ZS9zdGF0ZV92YXJp
YWJsZXMubwo+IHtzdGFuZGFyZCBpbnB1dH06IEFzc2VtYmxlciBtZXNzYWdlczoKPiB7c3RhbmRh
cmQgaW5wdXR9OjE1MzU6IEVycm9yOiBzZWxlY3RlZCBwcm9jZXNzb3IgZG9lcyBub3Qgc3VwcG9y
dCBgcmV2Cj4gcjMscjMnIGluIFRodW1iIG1vZGUKPiB7c3RhbmRhcmQgaW5wdXR9OjE1NzY6IEVy
cm9yOiBzZWxlY3RlZCBwcm9jZXNzb3IgZG9lcyBub3Qgc3VwcG9ydCBgcmV2Cj4gcjMscjMnIGlu
IFRodW1iIG1vZGUKPiAKPiBCdWlsZGluZyBpbiB2ZXJib3NlIG1vZGUgKFY9MSkgc2hvd3MgdGhh
dCAibWFrZSIgaGFzIHNlbGVjdGVkIHRoZSBjb21waWxlCj4gZmxhZ3MgYC1tYXJjaD1hcm12NXQg
LVdhLC1tYXJjaD1hcm12Ny1hYCBpbnN0ZWFkIG9mIHRoZSB1c3VhbAo+IGAtbWFyY2g9YXJtdjct
YWAuCj4gCj4gTG9va2luZyBhIGxpdHRsZSBkZWVwZXIsIGFsbCBvZiB0aGUgZm9sbG93aW5nIGxp
bmVzIGluICJhcmNoL2FybS9NYWtlZmlsZSIKPiBhcmUgZmFpbGluZyB0byBzZWxlY3QgdGhlIGZp
cnN0IG9wdGlvbiBhbmQgZGVmYXVsdGluZyB0byB0aGUgc2Vjb25kIG9wdGlvbgo+IChpZiBhbnkp
OgoKSXQgcHJvYmFibHkgaXMgYWRkZWQgZnJvbSBoZXJlOgoKYXJjaC0kKENPTkZJR19DUFVfMzJ2
NykJCTo9LURfX0xJTlVYX0FSTV9BUkNIX189NyAkKGNhbGwgY2Mtb3B0aW9uLC1tYXJjaD1hcm12
Ny1hLC1tYXJjaD1hcm12NXQgLVdhJChjb21tYSktbWFyY2g9YXJtdjctYSkKClRoZSBjaGVjayBm
b3IgLW1hcmNoPWFybXY3LWEgZmFpbHMgZm9yIHNvbWUgcmVhc29uIHNvIHRoZSBmYWxsYmFjayBp
cyB1c2VkLgoKSSd2ZSBzZWVuIHRoaXMgd2hlbiBDQyBpcyBhIHdyYXBwZXIgYW5kIGFscmVhZHkg
YWRkcyAtbWNwdT0uLi4gdG8gdGhlCmNvbW1hbmRsaW5lLiBJbiB0aGF0IGNhc2UgZ2NjIG5vdyBj
b21wbGFpbnMgYWJvdXQgdGhlIGNvbWJpbmF0aW9uIGFuZCB0aGUKY2hlY2sgZmFpbHMuCgpNaWNo
YWVsCgo+IGFyY2gtJChDT05GSUdfQ1BVXzY0djgpCQk6PSAtRF9fTElOVVhfQVJNX0FSQ0hfXz04
ICQoY2FsbAo+IGNjLW9wdGlvbiwtbWFyY2g9YXJtdjgtYSkKPiBhcmNoLSQoQ09ORklHX0NQVV8z
MnY3KQkJOj0tRF9fTElOVVhfQVJNX0FSQ0hfXz03ICQoY2FsbAo+IGNjLW9wdGlvbiwtbWFyY2g9
YXJtdjctYSwtbWFyY2g9YXJtdjV0IC1XYSQoY29tbWEpLW1hcmNoPWFybXY3LWEpCj4gYXJjaC0k
KENPTkZJR19DUFVfMzJ2NikJCTo9LURfX0xJTlVYX0FSTV9BUkNIX189NiAkKGNhbGwKPiBjYy1v
cHRpb24sLW1hcmNoPWFybXY2LC1tYXJjaD1hcm12NXQgLVdhJChjb21tYSktbWFyY2g9YXJtdjYp
Cj4gYXJjaC0kKENPTkZJR19DUFVfMzJ2NSkJCTo9LURfX0xJTlVYX0FSTV9BUkNIX189NSAkKGNh
bGwKPiBjYy1vcHRpb24sLW1hcmNoPWFybXY1dGUsLW1hcmNoPWFybXY0dCkKPiAKPiBUaGUgZXJy
b3IgZnJvbSB0aGUgY29tcGlsZXIgaXM6Cj4gCj4gY2MxOiBlcnJvcjog4oCYLW1mbG9hdC1hYmk9
aGFyZOKAmTogc2VsZWN0ZWQgYXJjaGl0ZWN0dXJlIGxhY2tzIGFuIEZQVQo+IAo+IChOb3RlOiB0
aGUgZXJyb3IgaXMgb25seSBzaG93biBhZnRlciB0d2Vha2luZyB0aGUgYHRyeS1ydW5gIGNvbW1h
bmQgaW4KPiAic2NyaXB0cy9LYnVpbGQuaW5jbHVkZSIgc28gdGhhdCBpdCBkb2VzIG5vdCBzZW5k
IGVycm9yIG91dHB1dCB0bwo+ICIvZGV2L251bGwiLikKPiAKPiBUaGF0IGVycm9yIHNlZW1zIHRv
IGJlIGEgY2hhbmdlIGluIGJlaGF2aW91ciBiZXR3ZWVuIEdDQyAxMC54IGFuZCBHQ0MgMTEueC4K
PiAKPiBBdCB0aGUgcG9pbnQgaW4gdGhlIE1ha2VmaWxlIHRoYXQgdGhlIGVycm9yIG9jY3Vycywg
dGhlIGAtbXNvZnQtZmxvYXRgCj4gb3B0aW9uIGhhcyBub3QgYmVlbiBhZGRlZCB0byBgS0JVSUxE
X0NQUEZMQUdTYCB5ZXQuIFRoYXQgaXMgZG9uZSBmdXJ0aGVyCj4gZG93biB0aGUgTWFrZWZpbGUg
ZXhjZXB0IGZvciBgQ09ORklHX0NQVV9WOGAuICBJIGd1ZXNzIGl0IG5lZWRzIHRvIGJlIGFkZGVk
Cj4gc29tZXdoZXJlIGJlZm9yZSBwcm9ibGVtYXRpYyBsaW5lcyBpbiB0aGUgTWFrZWZpbGUuICBJ
J20gbm90IHN1cmUgaWYKPiBgLW1zb2Z0LWZsb2F0YCBpcyBhbHNvIG5lZWRlZCBmb3IgNjQtYml0
IEFSTXY4LCBidXQgdGhlIGVycm9yIHN1Z2dlc3RzIGl0IGlzCj4gcmVxdWlyZWQgdGhlcmUgdG9v
LgoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB8ClN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAg
ICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8CjMxMTM3IEhpbGRlc2hl
aW0sIEdlcm1hbnkgICAgICAgICAgICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAg
ICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICAr
NDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94
Cg==

