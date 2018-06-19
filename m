Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fVFxy-0005ya-ST
 for barebox@lists.infradead.org; Tue, 19 Jun 2018 12:42:37 +0000
Message-ID: <1529412140.7211.22.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 19 Jun 2018 14:42:20 +0200
In-Reply-To: <5226f251-0465-e9ca-6f5a-c0b29f5eda39@cogentembedded.com>
References: <20180619054307.30618-1-andrew.smirnov@gmail.com>
 <20180619054307.30618-2-andrew.smirnov@gmail.com>
 <1529398276.7211.10.camel@pengutronix.de>
 <5226f251-0465-e9ca-6f5a-c0b29f5eda39@cogentembedded.com>
Content-Type: multipart/mixed; boundary="=-+FATZr79oMuUGs+gg/Oi"
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] ARM: i.MX: Add support for ZII RDU1 board
To: Nikita Yushchenko <nikita.yoush@cogentembedded.com>, Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org, Andrey Gusakov <andrey.gusakov@cogentembedded.com>


--=-+FATZr79oMuUGs+gg/Oi
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

Am Dienstag, den 19.06.2018, 14:34 +0300 schrieb Nikita Yushchenko:
> > > > > > +	imx51_bbu_internal_spi_i2c_register_handler("spi",
> > > > > > +						    "/dev/dataflash0.barebox",
> > > +						    BBU_HANDLER_FLAG_DEFAULT);
> > 
> > Did you test that this works? The Barebox partition has an offset and
> > according the RM the BootROM looks at a specific location for the image
> > header, so I think the Barebox image needs to be truncated for this to
> > work.
> 
> Yes, this works, together with this patch:
> 
> https://github.com/CogentEmbedded/barebox-zodiac/commit/9b523e459e198960b94594b7185baa0dd2649feb
> 
> I've copied this code from earlier version developed by Andrey Gusakov [CCed].
> 
> I did not try to change anything there, to ensure board stays bootable ;).

But this isn't a generic fix that can be applied upstream. Nothing in
the i.MX51 boot specification says that the first 1024 bytes of flash
shouldn't be written and in fact this is cutting the Barebox image
signature from the image written to flash, which is generally
undesirable.

And it probably also doesn't work with the barebox partition having an
offset on the flash, as is done with this patch.

I've added a ugly workaround in the BSP patchstack, which _might_ be
acceptable upstream. See attached patch.

Regards,
Lucas

--=-+FATZr79oMuUGs+gg/Oi
Content-Disposition: attachment;
	filename*0=0001-bbu-add-flag-to-skip-writing-the-padding-before-the-.pat;
	filename*1=ch
Content-Type: text/x-patch;
	name="0001-bbu-add-flag-to-skip-writing-the-padding-before-the-.patch";
	charset="UTF-8"
Content-Transfer-Encoding: base64

RnJvbSA1MjMxYTdiYTI1MDYzNGNhMDlmZGJhMTYwYjcxZWI0NDkxZDlmZjhkIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBMdWNhcyBTdGFjaCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT4K
RGF0ZTogTW9uLCA3IE1heSAyMDE4IDEyOjU0OjE1ICswMjAwClN1YmplY3Q6IFtQQVRDSF0gYmJ1
OiBhZGQgZmxhZyB0byBza2lwIHdyaXRpbmcgdGhlIHBhZGRpbmcgYmVmb3JlIHRoZSBmbGFzaAog
aGVhZGVyCgpUaGlzIGlzIHVnbHksIGJ1dCBuZWVkZWQgYXMgb24gdGhlIFpJSSBSRFUxIGJvYXJk
IHRoZSBmbGFzaCBob2xkcyBzb21lCmltcG9ydGFudCBkYXRhIGluIHRoZSBmaXJzdCAxMDI0IGJ5
dGVzLCBzbyB3ZSBuZWVkIHRvIGF2b2lkIHdyaXRpbmcKYW55dGhpbmcgaW50byB0aGlzLiBUaGlz
IGlzIGltcGxlbWVudGVkIGJ5IGhhdmluZyB0aGUgYmFyZWJveCBwYXJ0aXRpb24Kc3RhcnQgYXQg
dGhpcyBvZmZzZXQsIGJ1dCBCQlUgbmVlZHMgdG8gdHJ1bmNhdGUgdGhlIGltYWdlIGFjY29yZGlu
Z2x5LgoKU2lnbmVkLW9mZi1ieTogTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+
Ci0tLQogYXJjaC9hcm0vbWFjaC1pbXgvaW14LWJidS1pbnRlcm5hbC5jIHwgMTEgKysrKysrKysr
Ky0KIGluY2x1ZGUvYmJ1LmggICAgICAgICAgICAgICAgICAgICAgICB8ICAxICsKIDIgZmlsZXMg
Y2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtL21hY2gtaW14L2lteC1iYnUtaW50ZXJuYWwuYyBiL2FyY2gvYXJtL21hY2gtaW14L2lt
eC1iYnUtaW50ZXJuYWwuYwppbmRleCBjNzM3NWZmNTJhZWUuLjQ1NjEwZjBlZjlhYyAxMDA2NDQK
LS0tIGEvYXJjaC9hcm0vbWFjaC1pbXgvaW14LWJidS1pbnRlcm5hbC5jCisrKyBiL2FyY2gvYXJt
L21hY2gtaW14L2lteC1iYnUtaW50ZXJuYWwuYwpAQCAtMTYwLDE1ICsxNjAsMjQgQEAgc3RhdGlj
IGludCBpbXhfYmJ1X2ludGVybmFsX3YxX3VwZGF0ZShzdHJ1Y3QgYmJ1X2hhbmRsZXIgKmhhbmRs
ZXIsIHN0cnVjdCBiYnVfZGEKIHsKIAlzdHJ1Y3QgaW14X2ludGVybmFsX2JidV9oYW5kbGVyICpp
bXhfaGFuZGxlciA9CiAJCWNvbnRhaW5lcl9vZihoYW5kbGVyLCBzdHJ1Y3QgaW14X2ludGVybmFs
X2JidV9oYW5kbGVyLCBoYW5kbGVyKTsKKwljb25zdCB2b2lkICpkYXRhYnVmID0gZGF0YS0+aW1h
Z2U7CisJaW50IGxlbiA9IGRhdGEtPmxlbjsKIAlpbnQgcmV0OwogCiAJcmV0ID0gaW14X2JidV9j
aGVja19wcmVyZXEoZGF0YS0+ZGV2aWNlZmlsZSwgZGF0YSk7CiAJaWYgKHJldCkKIAkJcmV0dXJu
IHJldDsKIAorCWlmIChoYW5kbGVyLT5mbGFncyAmIEJCVV9IQU5ETEVSX1NLSVBfSEVBREVSX09G
RlNFVCkKKwl7CisJCWRhdGFidWYgKz0gaW14X2hhbmRsZXItPmZsYXNoX2hlYWRlcl9vZmZzZXQ7
CisJCWxlbiAtPSBpbXhfaGFuZGxlci0+Zmxhc2hfaGVhZGVyX29mZnNldDsKKwl9CisKIAlwcmlu
dGYoInVwZGF0aW5nIHRvICVzXG4iLCBkYXRhLT5kZXZpY2VmaWxlKTsKIAotCXJldCA9IGlteF9i
YnVfd3JpdGVfZGV2aWNlKGlteF9oYW5kbGVyLCBkYXRhLT5kZXZpY2VmaWxlLCBkYXRhLCBkYXRh
LT5pbWFnZSwgZGF0YS0+bGVuKTsKKwlyZXQgPSBpbXhfYmJ1X3dyaXRlX2RldmljZShpbXhfaGFu
ZGxlciwgZGF0YS0+ZGV2aWNlZmlsZSwgZGF0YSwKKwkJCQkgICBkYXRhYnVmLCBsZW4pOwogCiAJ
cmV0dXJuIHJldDsKIH0KZGlmZiAtLWdpdCBhL2luY2x1ZGUvYmJ1LmggYi9pbmNsdWRlL2JidS5o
CmluZGV4IGRlZjU2OGU0OThkNC4uMTZmNDk4ZTU3MjRhIDEwMDY0NAotLS0gYS9pbmNsdWRlL2Ji
dS5oCisrKyBiL2luY2x1ZGUvYmJ1LmgKQEAgLTI1LDYgKzI1LDcgQEAgc3RydWN0IGJidV9oYW5k
bGVyIHsKIAlzdHJ1Y3QgbGlzdF9oZWFkIGxpc3Q7CiAjZGVmaW5lIEJCVV9IQU5ETEVSX0ZMQUdf
REVGQVVMVAkoMSA8PCAwKQogI2RlZmluZSBCQlVfSEFORExFUl9DQU5fUkVGUkVTSAkJKDEgPDwg
MSkKKyNkZWZpbmUgQkJVX0hBTkRMRVJfU0tJUF9IRUFERVJfT0ZGU0VUCSgxIDw8IDIpCiAJdW5z
aWduZWQgbG9uZyBmbGFnczsKIAogCS8qIGRlZmF1bHQgZGV2aWNlIGZpbGUsIGNhbiBiZSBvdmVy
d3JpdHRlbiBvbiB0aGUgY29tbWFuZCBsaW5lICovCi0tIAoyLjE3LjEKCg==


--=-+FATZr79oMuUGs+gg/Oi
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--=-+FATZr79oMuUGs+gg/Oi--
