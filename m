Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vw0-f49.google.com ([209.85.212.49])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OtHNw-0005Oo-LO
	for barebox@lists.infradead.org; Wed, 08 Sep 2010 09:56:09 +0000
Received: by vws11 with SMTP id 11so5554057vws.36
	for <barebox@lists.infradead.org>; Wed, 08 Sep 2010 02:56:07 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20100908094706.GA2847@game.jcrosoft.org>
References: <AANLkTinY-pU+97DMxkFddz6qj+ayQh=5nC1Or++A1qfh@mail.gmail.com>
	<20100908094706.GA2847@game.jcrosoft.org>
Date: Wed, 8 Sep 2010 11:56:06 +0200
Message-ID: <AANLkTik2YK2d7m9z2Fx8L-iLdOfxuFwxJg4+wA+H18Az@mail.gmail.com>
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
Subject: Re: [PATCH] mach-s3c24xx: Fix compilation problem when make a9m2410
	or a9m2440 defconfig.
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

T24gV2VkLCBTZXAgOCwgMjAxMCBhdCAxMTo0NyBBTSwgSmVhbi1DaHJpc3RvcGhlIFBMQUdOSU9M
LVZJTExBUkQKPHBsYWduaW9qQGpjcm9zb2Z0LmNvbT4gd3JvdGU6Cj4gT24gMjA6NTIgVHVlIDA3
IFNlcCDCoCDCoCAsIE1hcmVrIEJlbGlza28gd3JvdGU6Cj4+IEZvbGxvd2luZyBzdGVwcyBsZWFk
IHRvIGNvbXBpbGF0aW9uIGVycm9yIChiYXJlYm94IHYyMDEwLjA5LjApOgo+Pgo+PiAxLiBtYWtl
IGE5bTI0NDBfZGVmY29uZmlnIChvciBhOW0yNDEwKSBBUkNIPWFybQo+PiAyLiBtYWtlIENST1NT
X0NPTVBJTEU9YXJtLWxpbnV4LSBBUkNIPWFybQo+Pgo+PiBUaGlzIHBhdGNoIHNob3VsZCBmaXgg
cHJvYmxlbXMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IE1hcmVrIEJlbGlza28gPG1hcmVrLmJlbGlz
a29Ab3Blbi1uYW5kcmEuY29tPgo+PiAtLS0KPj4gwqBhcmNoL2FybS9tYWNoLXMzYzI0eHgvS2Nv
bmZpZyB8IMKgIMKgNCArKystCj4+IMKgMSBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLXMzYzI0eHgv
S2NvbmZpZyBiL2FyY2gvYXJtL21hY2gtczNjMjR4eC9LY29uZmlnCj4+IGluZGV4IDM3Y2NmMmYu
LjI5N2ZkYmIgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtL21hY2gtczNjMjR4eC9LY29uZmlnCj4+
ICsrKyBiL2FyY2gvYXJtL21hY2gtczNjMjR4eC9LY29uZmlnCj4+IEBAIC04MSw3ICs4MSw5IEBA
IGNvbmZpZyBTM0MyNFhYX1NEUkFNX0lOSVQKPj4gwqBjb25maWcgUzNDMjRYWF9OQU5EX0JPT1QK
Pj4gwqAgwqAgwqAgYm9vbAo+PiDCoCDCoCDCoCBwcm9tcHQgIkJvb3RpbmcgZnJvbSBOQU5EIgo+
PiAtIMKgIMKgIHNlbGVjdCBOQU5EX1MzQzI0WDAKPj4gKyDCoCDCoCBzZWxlY3QgTVRECj4+ICsg
wqAgwqAgc2VsZWN0IE5BTkQKPj4gKyDCoCDCoCBzZWxlY3QgTkFORF9TM0MyNFgwCj4KPiB5b3Ug
c2hvdWxkIGJlIGFibGUgdG8gYm9vdCBmcm9tIG5hbmQgb25seSBpZiB5b3UgZW5hYmxlIHRoZSBO
QU5EIGFuZCBub3QgdGhlCj4gaW52ZXJ0ClNvcnJ5IGJ1dCBkb24ndCB1bmRlcnN0YW5kIHdoYXQg
eW91IG1lYW4uIFRoaXMgcGF0Y2ggd2FzIGFja2VkIGJ5CmJhcmVib3ggcGVvcGxlIHRvZGF5Lgo+
Cj4gc28gaXQncyBhIGRlcGVuZHMgb24KPgo+IEJlc3QgUmVnYXJkcywKPiBKLgo+CgpCUiwKCk1h
cmVrCgotLSAKYXMgc2ltcGxlIGFuZCBwcmltaXRpdmUgYXMgcG9zc2libGUKLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpNYXJlayBCZWxpc2tvIC0gT1BF
Ti1OQU5EUkEKRnJlZWxhbmNlIERldmVsb3BlcgoKUnVza2EgTm92YSBWZXMgMjE5IHwgUHJlc292
LCAwODAwNSBTbG92YWsgUmVwdWJsaWMKVGVsOiArNDIxIDkxNSAwNTIgMTg0CnNreXBlOiBtYXJl
a3doaXRlCmljcTogMjkwNTUxMDg2CndlYjogaHR0cDovL29wZW4tbmFuZHJhLmNvbQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5n
IGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
