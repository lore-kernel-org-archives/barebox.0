Delivery-date: Fri, 24 Sep 2021 16:22:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mTm6G-0002V7-KX
	for lore@lore.pengutronix.de; Fri, 24 Sep 2021 16:22:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mTm6F-0006w1-Ar
	for lore@pengutronix.de; Fri, 24 Sep 2021 16:22:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W2eORYIc0ayR4srLc29AJC+XjDcxUyMiYUANxOTytPA=; b=12Y/uuEkQ65dU8
	wQrxl27Fs0fzlxgtKZmED9I+E3QaamseEO7dmMG0hKLPN7gO6CJJFSeDFnb3G49BLqEOUrdOELxar
	muV9knvWMumPofVT5M3jFYYMPPGxii92L6M/rTRsf0hQgqVaU74iEBVWEc0L8RSLbD9tDJ/tl3pnr
	G5enx/UdNnVo2ViLEd4o2rZymejiyhrfv2+DdhLq38A/63MreEZTvuVJdIiF9G12EIo8EkKcM8IC1
	VOHn+NIBDW044s4HNwLMz8VvGnn3swqnab57X4uqRq2firJsxkSPFoq/7wXzuTd7yWyHr52JaFa7Y
	cvOshknSj7NT4YvwGgUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTm4g-00EpYc-Sc; Fri, 24 Sep 2021 14:21:15 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTm4b-00EpY9-Hs
 for barebox@lists.infradead.org; Fri, 24 Sep 2021 14:21:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1632493264; x=1635085264;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BzO2wZ/JQZtbqKQz5yxZhvy2cENwo+UD29X/y/xYzAU=;
 b=rkOS/0wzKkyWztBLGXC6A+l4L9yLtPNDdbEZpj7kHXdqsK6lC1STovBglWv0/itc
 INnfUT7WxSd/JKEttl4Nb6ghxbgk3c7nu8W2VkmCzGvSe1IRpMBkW1bl3vaGfRdK
 7w+mVs5OXNJqZ+PlMWOreQxP7XcVyM3AdSYovyA3SM4=;
X-AuditID: c39127d2-c63ec70000001d24-af-614dded0d080
Received: from Diagnostix.phytec.de (Diagnostix.phytec.de [172.16.0.119])
 (using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client did not present a certificate)
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 1C.8E.07460.0DEDD416;
 Fri, 24 Sep 2021 16:21:04 +0200 (CEST)
Received: from Berlix.phytec.de (172.16.0.117) by Diagnostix.phytec.de
 (172.16.0.119) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Fri, 24 Sep
 2021 16:21:03 +0200
Received: from Berlix.phytec.de ([fe80::6d58:38d4:5df2:e4ad]) by
 berlix.phytec.de ([fe80::6d58:38d4:5df2:e4ad%3]) with mapi id 15.01.2308.014; 
 Fri, 24 Sep 2021 16:21:03 +0200
From: Yunus Bas <Y.Bas@phytec.de>
To: "trent.piepho@igorinstitute.com" <trent.piepho@igorinstitute.com>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
 "sha@pengutronix.de" <sha@pengutronix.de>
Thread-Topic: CRC32 verification on NAND flash
Thread-Index: AQHXrvJtEhOkL4prukyQJH6AGgPET6uxQugAgAHce4A=
Date: Fri, 24 Sep 2021 14:21:03 +0000
Message-ID: <16f582d1cb47378e044629f43acde946c0a8bc3d.camel@phytec.de>
References: <3ea5144d940ac48701809c7e28061d76495a66fa.camel@phytec.de>
 <CAMHeXxPsULguR1icV9cEz5v_Vb6pNsuuWiG0PgJ62ONFwFRB+g@mail.gmail.com>
In-Reply-To: <CAMHeXxPsULguR1icV9cEz5v_Vb6pNsuuWiG0PgJ62ONFwFRB+g@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.0.116]
Content-ID: <8060118CEEB31D47899E6B4E559C7D7E@phytec.de>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprKIsWRmVeSWpSXmKPExsWyRoChXPfCPd9Eg8O/xCxOLO5ntni0eRar
 xcS2VUwOzB5N57U9Ni+p9+j/axDAHMVlk5Kak1mWWqRvl8CV8fjWJMaCORoVd+e+Y2xgnKHe
 xcjBISFgInHmj0gXIxeHkMB6JonLty8xQjjPGCVmnL7CCuFsYpSY1TiVDaSDTUBR4sqt/C5G
 Tg4RAVeJ6XdAwpwczAI5Eif2TASzhQV0JXb+2sYCUaMn0Tn/GDOEbSXRdPY3K4jNIqAq0XBy
 PTuIzSvgJnFj0zQWiF19jBIveteAFXEKBEosurIcrIhRQFZiw4bzzBDLxCU2PfsOViMhICCx
 ZA9EXEJAVOLl439QcQWJtp5OJpCbmQU0Jdbv0odotZA40dgPNUZRYkr3Q6gbBCVOznzCMoFR
 fBaSDbMQumch6Z6FpHsWku4FjKyrGIVyM5OzU4sys/UKMipLUpP1UlI3MQKj7vBE9Us7GPvm
 eBxiZOJgPMQowcGsJML7+YZXohBvSmJlVWpRfnxRaU5q8SFGaQ4WJXHe+z1MiUIC6Yklqdmp
 qQWpRTBZJg5OqQZGxeNt79/ZZyRzZGU829/SulexYM3P1UWW36t4H0W7NBmf8f36+n4hy4+2
 wmtf7aMOXHT5qrSSdbXz3zt5zR80znJtzWVd5alx9Z5ce85x619PD9zYOlPz0OnNxz7o1vrV
 Ld02K+NrqRyjCVNVdrBqvZ32gQM7nx/ZtmdTb8kH/fDDn60NLidyKbEUZyQaajEXFScCAFXV
 V0CoAgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210924_072109_946193_3A9958C9 
X-CRM114-Status: GOOD (  36.08  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: CRC32 verification on NAND flash
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

QW0gRG9ubmVyc3RhZywgZGVtIDIzLjA5LjIwMjEgdW0gMDI6NTUgLTA3MDAgc2NocmllYiBUcmVu
dCBQaWVwaG86DQo+IE9uIFR1ZSwgU2VwIDIxLCAyMDIxIGF0IDc6MTEgQU0gWXVudXMgQmFzIDxZ
LkJhc0BwaHl0ZWMuZGU+IHdyb3RlOg0KPiA+IEhlcmUgYW4gZXhhbXBsZToNCj4gPiBUaGUgc3Rh
cnRwYWdlIG9mIHNsb3QxIGlzIDB4MjQwMDAwLiBUaGlzIGlzIHRoZSByZWFsIGFkZHJlc3MsIHdo
ZXJlDQo+ID4gQmFyZWJveCBpcyBmbGFzaGVkIGludG8gYW5kIGNhbiBhbHNvIGJlIGR1bXBlZCB1
c2luZyB0aGUgb3JpZ2luYWwNCj4gPiBuYW5kMC1wYXJ0aXRpb24uIE5vdywgd2hlbiBhIGJhZC1i
bG9jayBvY2N1cnMgcHJpb3IgdG8gdGhlDQo+ID4gc3RhcnRwYWdlIG9mDQo+ID4gc2xvdDEsIGxl
dCdzIHRha2UgZm9yIGV4YW1wbGUgdGhlIGJsb2NrIGF0IDB4MTQwMDAwLCB0aGVuIG9mZnNldCBv
Zg0KPiA+IHNsb3QxIGNoYW5nZXMgYWxzbyBpbiB0aGUgbmFuZDAuYmIgcGFydGl0aW9uLiBJbiB0
aGUgb3JpZ2luYWwNCj4gPiBwYXJ0aXRpb24NCj4gPiBuYW5kMCwgc2xvdDEgaXMgc3RpbGwgYXQg
MHgyNDAwMDAsIGJ1dCBvbiBuYW5kMC5iYiwgc2xvdDEgaGFzIGJlZW4NCj4gPiBtb3ZlZCBvbmUg
YmxvY2sgcHJpb3IgdG8gdGhlIG9yaWdpbmFsIG9mZnNldCBhbmQgY2hhbmdlZCB0bw0KPiA+IDB4
MjIwMDAwLg0KPiANCj4gSWYgeW91IHBhcnRpdGlvbiBuYW5kLCB2aWEgZS5nLiBkZXZpY2UgdHJl
ZSBlbnRyaWVzLCB0aG9zZSBwYXJ0aXRpb24NCj4gc3RhcnQgb2Zmc2V0cyBhcmUgbm9uLUJCIGF3
YXJlLCBzbyBkbyBub3QgbW92ZS4NCj4gDQo+IFNvIGlmIEkgd3JpdGUgWCBwYWdlcyB0byBwYXJ0
aXRpb24gMCBCQiBhbmQgcmVhZCBiYWNrIFggcGFnZXMsIEkgd2lsbA0KPiBrbm93IHRoZSBjcmMu
wqAgQW5kIHRoZSBzYW1lIGZvciBwYXJ0aXRpb24gMSwgZXZlbiBpZiBzb21lIGJsb2NrcyBpbg0K
PiBwYXJ0aXRpb24gMCBhcmUgYmFkLg0KPiANCj4gQnV0IHRoZXNlICJzbG90cyIgeW91IHRhbGsg
YWJvdXQsIEkgdGhpbmsgdGhlc2UgYXJlIG5vdCBuYW5kDQo+IHBhcnRpdGlvbnMuwqAgTWF5YmUg
bW9yZSBsaWtlIHRoZSB0d28gYm9vdGxvYWRlciBzbG90cyBpbiBhbiBJTVggYm9vdA0KPiBpbWFn
ZT8NCg0KT2gsIG1heWJlIG15IGRlc2NyaXB0aW9uIHdhc24ndCBxdWl0ZSB1bmRlcnN0YW5kYWJs
ZSwgc29ycnkgZm9yIHRoYXQuDQpPZiBjb3Vyc2UgSSBtZWFuIHRoZSBib290bG9hZGVyIHNsb3Rz
LCB3aGljaCBpcyBjYWxjdWxhdGVkIGZyb20gdGhlDQpiYXJlYm94IHBhcnRpdGlvbiBzaXplLg0K
DQo+IA0KPiBJZiB0aGUgcG9zaXRpb24gb2YgdGhlIHNsb3RzIGlzIGRldGVybWluZWQgZHluYW1p
Y2FsbHkgYXQgZmxhc2ggdGltZSwNCj4gdGhlbiBJIHRoaW5rIHlvdXIgYW5zd2VyIGlzIHlvdSBt
dXN0IGFsc28gZGV0ZXJtaW5lIGl0IHdoZW4geW91IGNoZWNrDQo+IENSQy7CoCBGb3IgaW5zdGFu
Y2UsIG9uIGlteCBvbmUgY291bGQgY3JlYXRlIGEgY29tbWFuZCB0aGF0IHF1ZXJpZXMNCj4gdGhl
DQo+IEZDQiB0byBmaW5kIHRoZSB0d28gYm9vdGxvYWRlciBzbG90IHN0YXJ0IGFkZHJlc3Nlcy7C
oCBDb2RlIGlzIGFscmVhZHkNCj4gdGhlcmUgaW4gdGhlIGlteCBiYnUgaGFuZGxlciwgaXQganVz
dCBuZWVkcyBhbiBpbnRlcmZhY2UuwqAgT3IsDQo+IHNvbWV0aGluZyBoYWQgdG8gZGV0ZXJtaW5l
IHRoaXMgZHluYW1pYyBhZGRyZXNzIG9mIHRoZSBzbG90LCBzbyBoYXZlDQo+IHRoYXQgcHJvY2Vz
cyBhbHNvIHRlbGwgeW91IHdoYXQgaXQgZGV0ZXJtaW5lZC7CoCBGb3IgZXhhbXBsZSwgaGF2ZSB0
aGUNCj4gaW14IGJidSBjb2RlIHNldCBlbnYgdmFyaWFibGVzIHdpdGggdGhlIGFkZHJlc3Mgb2Yg
dGhlIGJvb3Rsb2FkZXINCj4gc2xvdHMgdGhhdCBpdCBjYWxjdWxhdGVzIHdoZW4gaXQgZmxhc2hl
cyBiYXJlYm94Lg0KPiANCj4gSWYgeW91IHdhbnQgdG8gY2FsY3VsYXRlIG9uZSBDUkMgdmFsdWUg
Zm9yIGFsbCBvZiBOQU5ELCB0aGVuIEkgdGhpbmsNCj4geW91IGNhbiBub3QgZG8gdGhhdC7CoCBC
ZWNhdXNlIHRoZSBjb250ZW50cyBvZiB0aGUgZW50aXJlIG5hbmQgZmxhc2gNCj4gY2hpcCBhcmUg
bm90IGNvbnN0YW50LsKgIEluc3RlYWQgaGF2ZSBhIGxpc3Qgb2YgQ1JDcyBhbmQgbGVuZ3RocyBm
b3INCj4gdGhlIHBhcnRzIHlvdSBoYXZlIGFjdHVhbGx5IGZsYXNoZWQuwqAgTW9zdCBvZiBmbGFz
aCBpcyB1c3VhbGx5IGJsYW5rDQo+IGFueXdheSwgd2h5IGV2ZW4gZmxhc2ggYmxhbmsgc3BhY2U/
wqAgSXQganVzdCBzbG93cyBkb3duDQo+IG1hbnVmYWN0dXJpbmcuDQoNCkluIG91ciBjYXNlLCB3
ZSBqdXN0IHdhbnQgdG8gdmVyaWZ5IGlmIG91ciBib290bG9hZGVyIGhhcyBiZWVuIGZsYXNoZWQN
CmVycm9yLWZyZWUgYWZ0ZXIgdGhlIGZsYXNoIHByb2Nlc3MuDQo+IA0KPiBZb3UgbXVzdCBqdXN0
IGZpbmQgdGhlIHN0YXJ0IGxvY2F0aW9uIGZvciB0aGVzZSBsZW5ndGhzIG9mIGRhdGEgdGhhdA0K
PiBoYXZlIENSQ3MuwqAgQXMgYWJvdmUsIG5hbmQgcGFydGl0aW9ucyBzdGFydCBhdCBhIGNvbnN0
YW50IGxvY2F0aW9uLA0KPiBzbw0KPiB0aGlzIGlzIGVhc3kuwqAgRHluYW1pY2FsbHkgZGV0ZXJt
aW5lZCBsb2NhdGlvbnMgb25lIHdvdWxkIG5lZWQgdG86DQo+IHF1ZXJ5IGxvY2F0aW9uIGlmIGl0
IGlzIHN0b3JlZCBzb21ld2hlcmUsIGhhdmUgY29kZSB0aGF0IGRldGVybWluZWQNCj4gdGhlIGxv
Y2F0aW9uIGFsc28gcHJvdmlkZSB0aGUgdmFsdWUgdG8gdGhlIHZlcmlmaWNhdGlvbiBjb2RlLCBv
cg0KPiByZXBlYXQgdGhlIGNhbGN1bGF0aW9uIGJ5IHdoaWNoIHRoZSBsb2NhdGlvbiB3YXMgZGV0
ZXJtaW5lZCBpbiB0aGUNCj4gZmlyc3QgcGxhY2UgdG8gaW5kZXBlbmRlbnRseSBhcnJpdmUgYXQg
dGhlIHNhbWUgYW5zd2VyLg0KDQpUaGFuayB5b3UgZm9yIHlvdXIgZGV0YWlsZWQgYW5zd2VyLg0K
DQotLSANCk1pdCBmcmV1bmRsaWNoZW4gR3LDvMOfZW4NCll1bnVzIEJhcw0KDQotU29mdHdhcmUg
RW5naW5lZXItDQpQSFlURUMgTWVzc3RlY2huaWsgR21iSA0KUm9iZXJ0LUtvY2gtU3RyLiAzOQ0K
NTUxMjkgTWFpbnoNCkdlcm1hbnkNClRlbC46ICs0OSAoMCk2MTMxIDkyMjEtwqA0NjYNCldlYjrC
oHd3dy5waHl0ZWMuZGUNCg0KU2llIGZpbmRlbiB1bnMgYXVjaCBhdWY6wqBGYWNlYm9vayzCoExp
bmtlZEluLMKgWGluZyzCoFlvdVR1YmUNCg0KUEhZVEVDIE1lc3N0ZWNobmlrIEdtYkggfCBSb2Jl
cnQtS29jaC1TdHIuIDM5IHwgNTUxMjkgTWFpbnosIEdlcm1hbnkNCkdlc2Now6RmdHNmw7xocmVy
OiBEaXBsLi1JbmcuIE1pY2hhZWwgTWl0ZXpraSwgRGlwbC4tSW5nLiBCb2RvIEh1YmVyIHwNCkhh
bmRlbHNyZWdpc3RlciBNYWlueiBIUkIgNDY1NiB8IEZpbmFuemFtdCBNYWlueiB8IFN0Lk5yLiAy
NjY1MDA2MDgsIERFDQoxNDkwNTk4NTUNClRoaXMgRS1NYWlsIG1heSBjb250YWluIGNvbmZpZGVu
dGlhbCBvciBwcml2aWxlZ2VkIGluZm9ybWF0aW9uLiBJZiB5b3UNCmFyZSBub3QgdGhlIGludGVu
ZGVkIHJlY2lwaWVudCAob3IgaGF2ZSByZWNlaXZlZCB0aGlzIEUtTWFpbCBpbiBlcnJvcikNCnBs
ZWFzZSBub3RpZnkgdGhlIHNlbmRlciBpbW1lZGlhdGVseSBhbmQgZGVzdHJveSB0aGlzIEUtTWFp
bC4gQW55DQp1bmF1dGhvcml6ZWQgY29weWluZywgZGlzY2xvc3VyZSBvciBkaXN0cmlidXRpb24g
b2YgdGhlIG1hdGVyaWFsIGluDQp0aGlzIEUtTWFpbCBpcyBzdHJpY3RseSBmb3JiaWRkZW4uDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1h
aWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

