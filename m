Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h168J-00052p-6V
 for barebox@lists.infradead.org; Tue, 05 Mar 2019 09:13:08 +0000
Received: by mail-wm1-x344.google.com with SMTP id g20so1718867wmh.5
 for <barebox@lists.infradead.org>; Tue, 05 Mar 2019 01:13:06 -0800 (PST)
Received: from [192.168.106.167] (77-111-10-47.ipv4.tusmobil.si.
 [77.111.10.47])
 by smtp.gmail.com with ESMTPSA id w3sm8771183wrl.22.2019.03.05.01.13.04
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 05 Mar 2019 01:13:04 -0800 (PST)
References: <20190228113900.16177-1-tomaz.solc@tablix.org>
 <20190304080442.hjyncl4whxmrz2eu@pengutronix.de>
From: =?UTF-8?B?VG9tYcW+IMWgb2xj?= <tomaz.solc@klevio.com>
Message-ID: <890b8bc1-68d2-1b7d-e4b8-071f63d53fd9@klevio.com>
Date: Tue, 5 Mar 2019 10:13:04 +0100
MIME-Version: 1.0
In-Reply-To: <20190304080442.hjyncl4whxmrz2eu@pengutronix.de>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: rpi: refactor debug UART Kconfig settings.
To: barebox@lists.infradead.org

T24gNC4gMDMuIDE5IDA5OjA0LCBTYXNjaGEgSGF1ZXIgd3JvdGU6Cj4gU28gdGhhdCBzYWlkLCBl
dmVuIHdpdGggYSBkZWJ1ZyBVQVJUIGVuYWJsZWQgZm9yIFJwaTEgd2Ugc2hvdWxkIHN0aWxsCj4g
YWxsb3cgdG8gYnVpbGQgZm9yIFJwaTIvMyBhbHRob3VnaCB3ZSBrbm93IGl0IHdvbid0IHdvcmsg
dGhlcmUuCj4gCj4gVGhlIHJlYXNvbiBpcyB5b3UgbWlnaHQgZ2V0IGZhaWx1cmVzIG9ubHkgd2hl
biBtdWx0aXBsZSBTb0NzIGFyZQo+IHNlbGVjdGVkLiBJbiB0aGF0IGNhc2UgeW91IG9ubHkgd2Fu
dCB0byBlbmFibGUgZWFybHkgZGVidWdnaW5nIHN1cHBvcnQKPiAoZm9yIHRoZSBTb0MgeW91IGFy
ZSBjdXJyZW50bHkgdGVzdGluZyBvbikgd2l0aG91dCBjaGFuZ2luZyBvdGhlciB0aGluZ3MKPiBp
biB0aGUgY29uZmlnIHdoaWNoIG1pZ2h0IG1ha2UgeW91ciBlcnJvcnMgZGlzYXBwZWFyLgoKVGhh
bmtzIGZvciB0aGUgY2xhcmlmaWNhdGlvbi4gSSd2ZSBzZW50IGFub3RoZXIgcGF0Y2ggc2VyaWVz
IHRoYXQgCnJlbW92ZXMgdGhlIHJlc3RyaWN0aW9uIGZvciBib2FyZCBidWlsZHMgYW5kIGFkZHMg
dGhlIGhlbHAgdGV4dC4KCk9uIHRoZSB0b3BpYyBvZiB0aGUgZGVidWcgVUFSVCwgSSd2ZSBhbHNv
IG5vdGljZWQgdGhhdCBpdCdzIGEgYml0IHRyaWNreSAKdG8gZ2V0IGl0IHJ1bm5pbmcgb24gUmFz
cGJlcnJ5IFBpIDMuIFRoZSBwcm9ibGVtIGlzIHRoYXQgdGhlIGRlYnVnIFVBUlQgCmlzIHVzaW5n
IFBMMDExIGhhcmR3YXJlLCBidXQgdGhlIGNvbnNvbGUgaXMgbm93IHVzaW5nIG1pbml1YXJ0LgoK
SW4gYWRkaXRpb24gdG8gZW5hYmxpbmcgaXQgaW4gbWVudWNvbmZpZywgSSBoYXZlIHRvIHJldmVy
c2UgdGhlIGNvbW1pdCAKYWI3NmY5ZDAgKHN3aXRjaCB0byBtaW5pdWFydCBmb3Igc3Rkb3V0IGlu
IHRoZSBkZXZpY2UgdHJlZSkgYW5kIGtlZXAgCiJkdG92ZXJsYXk9cGkzLW1pbml1YXJ0LWJ0IiBp
biAiY29uZmlnLnR4dCIgKGluc3RydWN0aW9uIGZvciB0aGlzIHdhcyAKcmVtb3ZlZCBpbiBmMTMz
MDUzNikuCgpCZXN0IHJlZ2FyZHMKVG9tYcW+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9i
YXJlYm94Cg==
