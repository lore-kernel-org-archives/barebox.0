Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vw0-f49.google.com ([209.85.212.49])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OuNrJ-0001Sa-7H
	for barebox@lists.infradead.org; Sat, 11 Sep 2010 11:03:02 +0000
Received: by vws11 with SMTP id 11so3722621vws.36
	for <barebox@lists.infradead.org>; Sat, 11 Sep 2010 04:02:56 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20100910160131.GT10841@pengutronix.de>
References: <AANLkTi=M-LyNQqYmBmrMivx-Ymfw3PQJvXvZFLjJ_rz6@mail.gmail.com>
	<4C89F806.9050002@embtoolkit.org>
	<AANLkTimpOgtO6UDPYzcSoQU-HjvgsyA+6xADzBS=VYPc@mail.gmail.com>
	<20100910160131.GT10841@pengutronix.de>
Date: Sat, 11 Sep 2010 13:02:56 +0200
Message-ID: <AANLkTimmK+3n7QPZNZ1v7-MJh8=HQC9zO4WttCu_CtEz@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: storing barebox to flash /dev/nand0
To: Robert Schwebel <robert@send-patches.org>
Cc: barebox@lists.infradead.org

T24gRnJpLCBTZXAgMTAsIDIwMTAgYXQgNjowMSBQTSwgUm9iZXJ0IFNjaHdlYmVsCjxyb2JlcnRA
c2VuZC1wYXRjaGVzLm9yZz4gd3JvdGU6Cj4gT24gRnJpLCBTZXAgMTAsIDIwMTAgYXQgMTI6MDE6
NDBQTSArMDIwMCwgQmVsaXNrbyBNYXJlayB3cm90ZToKPj4gQmV0dGVyIG5ld3MgOykKPj4gSSBo
YXZlIGEgZm9yayBvZiBiYXJlYm94IHdpdGggYmFzaWMgc3VwcG9ydCA6Cj4+IGh0dHA6Ly9yZXBv
Lm9yLmN6L3cvYmFyZWJveC1taW5pMjQ0MC5naXQKPgo+IEV2ZW4gYmV0dGVyIG5ld3Mgd291bGQg
YmUgdG8gc2VuZCB0aGUgcGF0Y2hlcywgaW4gb3JkZXIgdG8gYXZvaWQgZnVydGhlcgo+IGZvcmtz
IDspIEFmdGVyIGZpeGluZyB0aGUgTkFORCBpc3N1ZXMsIG9mIGNvdXJzZS4KRm9yIHN1cmUgSSds
bCBzZW5kIHBhdGNoZXMgaWYgaXQgd2lsbCBiZSBmaW5pc2hlZC4gSSBtYWtlIGEgZm9yawpiZWNh
dXNlIEknbSB3b3JraW5nIGZyb20KbW9yZSBwbGFjZXMgYW5kIGl0IGdvb2QgdG8gaGF2ZSBzb21l
d2hlcmUgcmVwbyA7KQo+Cj4gcnNjCj4gLS0KPiBQZW5ndXRyb25peCBlLksuIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHwgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgfAo+IEluZHVzdHJpYWwgTGludXggU29sdXRpb25zIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gwqB8Cj4gUGVpbmVyIFN0
ci4gNi04LCAzMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55IHwgUGhvbmU6ICs0OS01MTIxLTIwNjkx
Ny0wIMKgIMKgfAo+IEFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2IMKgIMKgIMKgIMKg
IMKgIHwgRmF4OiDCoCArNDktNTEyMS0yMDY5MTctNTU1NSB8Cj4KCm1hcmVrCgotLSAKYXMgc2lt
cGxlIGFuZCBwcmltaXRpdmUgYXMgcG9zc2libGUKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpNYXJlayBCZWxpc2tvIC0gT1BFTi1OQU5EUkEKRnJlZWxh
bmNlIERldmVsb3BlcgoKUnVza2EgTm92YSBWZXMgMjE5IHwgUHJlc292LCAwODAwNSBTbG92YWsg
UmVwdWJsaWMKVGVsOiArNDIxIDkxNSAwNTIgMTg0CnNreXBlOiBtYXJla3doaXRlCmljcTogMjkw
NTUxMDg2CndlYjogaHR0cDovL29wZW4tbmFuZHJhLmNvbQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vYmFyZWJveAo=
