Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYfjR-0001sO-9I
 for barebox@lists.infradead.org; Wed, 24 Feb 2016 20:08:23 +0000
Date: Wed, 24 Feb 2016 21:07:17 +0100 (CET)
From: Alexander Kurz <akurz@blala.de>
In-Reply-To: <20160224080428.GD4207@pengutronix.de>
Message-ID: <alpine.DEB.2.00.1602242101530.6582@blala.de>
References: <1456077990-15003-1-git-send-email-akurz@blala.de>
 <20160224080428.GD4207@pengutronix.de>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED;
 BOUNDARY="-598520180-1615511195-1456344437=:6582"
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
Subject: Re: [PATCH 1/3] EP93xx eth: allow passing of phy config via platform
 data
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---598520180-1615511195-1456344437=:6582
Content-Type: TEXT/PLAIN; charset=US-ASCII

Hi Sascha,
 I have attached a fixed version of Patch 1 and 2.

 Sorry for sending an incomplete patch,
 thanks, Alexander

On Wed, 24 Feb 2016, Sascha Hauer wrote:

> Hi Alexander,
> 
> On Sun, Feb 21, 2016 at 07:06:28PM +0100, Alexander Kurz wrote:
> > Passing phy configuration to the ep93xx_eth driver was not supported yet
> > and will be added with this patch. When no pdata is passed, the probably
> > broken default of phy_addr = 0 will be used to maintain compatibility
> > with the previous implementation.
> > 
> > Signed-off-by: Alexander Kurz <akurz@blala.de>
> > ---
> >  drivers/net/ep93xx.c | 14 ++++++++++++--
> >  drivers/net/ep93xx.h |  2 ++
> >  2 files changed, 14 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
> > index 90c12fc..d2458eb 100644
> > --- a/drivers/net/ep93xx.c
> > +++ b/drivers/net/ep93xx.c
> > @@ -38,6 +38,7 @@
> >  #include <linux/types.h>
> >  #include <mach/ep93xx-regs.h>
> >  #include <linux/phy.h>
> > +#include <ep93xx_eth.h>
> 
> This file is missing. Forgot to git add it?
> While at it, could you move it to include/net/ please?
> 
> Thanks
>  Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 
---598520180-1615511195-1456344437=:6582
Content-Type: TEXT/x-diff; name=0001-EP93xx-eth-allow-passing-of-phy-config-via-platform-.patch
Content-Transfer-Encoding: BASE64
Content-ID: <alpine.DEB.2.00.1602242107170.6582@blala.de>
Content-Description: 
Content-Disposition: attachment; filename=0001-EP93xx-eth-allow-passing-of-phy-config-via-platform-.patch

RnJvbSBkZjQzOWE1ZWY4YWY0ZDA0YTZmOTJkZjZiNTBiZWY1YmI3ZjhkMzgz
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQ0KRnJvbTogQWxleGFuZGVyIEt1
cnogPGFrdXJ6QGJsYWxhLmRlPg0KRGF0ZTogU3VuLCAyMSBGZWIgMjAxNiAx
ODowMzozMCArMDEwMA0KU3ViamVjdDogW1BBVENIIDEvNF0gRVA5M3h4IGV0
aDogYWxsb3cgcGFzc2luZyBvZiBwaHkgY29uZmlnIHZpYSBwbGF0Zm9ybSBk
YXRhDQoNClBhc3NpbmcgcGh5IGNvbmZpZ3VyYXRpb24gdG8gdGhlIGVwOTN4
eF9ldGggZHJpdmVyIHdhcyBub3Qgc3VwcG9ydGVkIHlldA0KYW5kIHdpbGwg
YmUgYWRkZWQgd2l0aCB0aGlzIHBhdGNoLiBXaGVuIG5vIHBkYXRhIGlzIHBh
c3NlZCwgdGhlIHByb2JhYmx5DQpicm9rZW4gZGVmYXVsdCBvZiBwaHlfYWRk
ciA9IDAgd2lsbCBiZSB1c2VkIHRvIG1haW50YWluIGNvbXBhdGliaWxpdHkN
CndpdGggdGhlIHByZXZpb3VzIGltcGxlbWVudGF0aW9uLg0KDQpTaWduZWQt
b2ZmLWJ5OiBBbGV4YW5kZXIgS3VyeiA8YWt1cnpAYmxhbGEuZGU+DQotLS0N
CiBkcml2ZXJzL25ldC9lcDkzeHguYyAgICAgfCAxNCArKysrKysrKysrKyst
LQ0KIGRyaXZlcnMvbmV0L2VwOTN4eC5oICAgICB8ICAyICsrDQogaW5jbHVk
ZS9uZXQvZXA5M3h4X2V0aC5oIHwgMjYgKysrKysrKysrKysrKysrKysrKysr
KysrKysNCiAzIGZpbGVzIGNoYW5nZWQsIDQwIGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pDQogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbmV0
L2VwOTN4eF9ldGguaA0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXA5
M3h4LmMgYi9kcml2ZXJzL25ldC9lcDkzeHguYw0KaW5kZXggOTBjMTJmYy4u
ZWY1MzRjMCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvbmV0L2VwOTN4eC5jDQor
KysgYi9kcml2ZXJzL25ldC9lcDkzeHguYw0KQEAgLTM4LDYgKzM4LDcgQEAN
CiAjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4NCiAjaW5jbHVkZSA8bWFjaC9l
cDkzeHgtcmVncy5oPg0KICNpbmNsdWRlIDxsaW51eC9waHkuaD4NCisjaW5j
bHVkZSA8bmV0L2VwOTN4eF9ldGguaD4NCiAjaW5jbHVkZSAiZXA5M3h4Lmgi
DQogDQogI2RlZmluZSBFUDkzWFhfTUFYX1BLVF9TSVpFICAgIDE1MzYNCkBA
IC0yMDMsOCArMjA0LDggQEAgc3RhdGljIGludCBlcDkzeHhfZXRoX29wZW4o
c3RydWN0IGV0aF9kZXZpY2UgKmVkZXYpDQogDQogCXByX2RlYnVnKCIrZXA5
M3h4X2V0aF9vcGVuXG4iKTsNCiANCi0JcmV0ID0gcGh5X2RldmljZV9jb25u
ZWN0KGVkZXYsICZwcml2LT5taWlidXMsIDAsIE5VTEwsDQotCQkJCSAwLCBQ
SFlfSU5URVJGQUNFX01PREVfTkEpOw0KKwlyZXQgPSBwaHlfZGV2aWNlX2Nv
bm5lY3QoZWRldiwgJnByaXYtPm1paWJ1cywgcHJpdi0+cGh5X2FkZHIsIE5V
TEwsDQorCQkJCSAwLCBwcml2LT5pbnRlcmZhY2UpOw0KIAlpZiAocmV0KQ0K
IAkJcmV0dXJuIHJldDsNCiANCkBAIC00ODIsNiArNDgzLDcgQEAgc3RhdGlj
IGludCBlcDkzeHhfZXRoX3NldF9ldGhhZGRyKHN0cnVjdCBldGhfZGV2aWNl
ICplZGV2LA0KIA0KIHN0YXRpYyBpbnQgZXA5M3h4X2V0aF9wcm9iZShzdHJ1
Y3QgZGV2aWNlX2QgKmRldikNCiB7DQorCXN0cnVjdCBlcDkzeHhfZXRoX3Bs
YXRmb3JtX2RhdGEgKnBkYXRhID0gKHN0cnVjdCBlcDkzeHhfZXRoX3BsYXRm
b3JtX2RhdGEgKilkZXYtPnBsYXRmb3JtX2RhdGE7DQogCXN0cnVjdCBldGhf
ZGV2aWNlICplZGV2Ow0KIAlzdHJ1Y3QgZXA5M3h4X2V0aF9wcml2ICpwcml2
Ow0KIAlpbnQgcmV0ID0gLTE7DQpAQCAtNTA0LDYgKzUwNiwxNCBAQCBzdGF0
aWMgaW50IGVwOTN4eF9ldGhfcHJvYmUoc3RydWN0IGRldmljZV9kICpkZXYp
DQogCWVkZXYtPnNldF9ldGhhZGRyID0gZXA5M3h4X2V0aF9zZXRfZXRoYWRk
cjsNCiAJZWRldi0+cGFyZW50ID0gZGV2Ow0KIA0KKwlpZiAocGRhdGEpIHsN
CisJCXByaXYtPmludGVyZmFjZSA9IHBkYXRhLT54Y3ZfdHlwZTsNCisJCXBy
aXYtPnBoeV9hZGRyID0gcGRhdGEtPnBoeV9hZGRyOw0KKwl9IGVsc2Ugew0K
KwkJcHJpdi0+aW50ZXJmYWNlID0gUEhZX0lOVEVSRkFDRV9NT0RFX05BOw0K
KwkJcHJpdi0+cGh5X2FkZHIgPSAwOw0KKwl9DQorDQogCXByaXYtPm1paWJ1
cy5yZWFkID0gZXA5M3h4X3BoeV9yZWFkOw0KIAlwcml2LT5taWlidXMud3Jp
dGUgPSBlcDkzeHhfcGh5X3dyaXRlOw0KIAlwcml2LT5taWlidXMucGFyZW50
ID0gZGV2Ow0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2VwOTN4eC5oIGIv
ZHJpdmVycy9uZXQvZXA5M3h4LmgNCmluZGV4IDg5NDUxYjguLjMyYWU1N2Yg
MTAwNjQ0DQotLS0gYS9kcml2ZXJzL25ldC9lcDkzeHguaA0KKysrIGIvZHJp
dmVycy9uZXQvZXA5M3h4LmgNCkBAIC0xMzcsNiArMTM3LDggQEAgc3RydWN0
IGVwOTN4eF9ldGhfcHJpdiB7DQogCXN0cnVjdCB0eF9kZXNjcmlwdG9yX3F1
ZXVlCXR4X2RxOw0KIAlzdHJ1Y3QgdHhfc3RhdHVzX3F1ZXVlCQl0eF9zcTsN
CiANCisJaW50CQkJCXBoeV9hZGRyOw0KKwlwaHlfaW50ZXJmYWNlX3QJCQlp
bnRlcmZhY2U7DQogCXN0cnVjdCBtaWlfYnVzIG1paWJ1czsNCiB9Ow0KIA0K
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvbmV0L2VwOTN4eF9ldGguaCBiL2luY2x1
ZGUvbmV0L2VwOTN4eF9ldGguaA0KbmV3IGZpbGUgbW9kZSAxMDA2NDQNCmlu
ZGV4IDAwMDAwMDAuLjBmYjExZDANCi0tLSAvZGV2L251bGwNCisrKyBiL2lu
Y2x1ZGUvbmV0L2VwOTN4eF9ldGguaA0KQEAgLTAsMCArMSwyNiBAQA0KKy8q
DQorICogKEMpIENvcHlyaWdodCAyMDE2IEFsZXhhbmRlciBLdXJ6IDxha3Vy
ekBibGFsYS5kZT4NCisgKg0KKyAqIFRoaXMgcHJvZ3JhbSBpcyBmcmVlIHNv
ZnR3YXJlOyB5b3UgY2FuIHJlZGlzdHJpYnV0ZSBpdCBhbmQvb3INCisgKiBt
b2RpZnkgaXQgdW5kZXIgdGhlIHRlcm1zIG9mIHRoZSBHTlUgR2VuZXJhbCBQ
dWJsaWMgTGljZW5zZSBhcw0KKyAqIHB1Ymxpc2hlZCBieSB0aGUgRnJlZSBT
b2Z0d2FyZSBGb3VuZGF0aW9uOyBlaXRoZXIgdmVyc2lvbiAyIG9mDQorICog
dGhlIExpY2Vuc2UsIG9yIChhdCB5b3VyIG9wdGlvbikgYW55IGxhdGVyIHZl
cnNpb24uDQorICoNCisgKiBUaGlzIHByb2dyYW0gaXMgZGlzdHJpYnV0ZWQg
aW4gdGhlIGhvcGUgdGhhdCBpdCB3aWxsIGJlIHVzZWZ1bCwNCisgKiBidXQg
V0lUSE9VVCBBTlkgV0FSUkFOVFk7IHdpdGhvdXQgZXZlbiB0aGUgaW1wbGll
ZCB3YXJyYW50eSBvZg0KKyAqIE1FUkNIQU5UQUJJTElUWSBvciBGSVRORVNT
IEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9TRS4gIFNlZSB0aGUNCisgKiBHTlUg
R2VuZXJhbCBQdWJsaWMgTGljZW5zZSBmb3IgbW9yZSBkZXRhaWxzLg0KKyAq
DQorICovDQorDQorI2lmbmRlZiBfX05FVF9FUDkzWFhfRVRIX0gNCisjZGVm
aW5lIF9fTkVUX0VQOTNYWF9FVEhfSA0KKw0KKyNpbmNsdWRlIDxsaW51eC9w
aHkuaD4NCisNCitzdHJ1Y3QgZXA5M3h4X2V0aF9wbGF0Zm9ybV9kYXRhIHsN
CisJcGh5X2ludGVyZmFjZV90CXhjdl90eXBlOw0KKwlpbnQJCXBoeV9hZGRy
Ow0KK307DQorDQorI2VuZGlmIC8qIF9fTkVUX0VQOTNYWF9FVEhfSCAqLw0K
LS0gDQoyLjEuNA0KDQo=

---598520180-1615511195-1456344437=:6582
Content-Type: TEXT/x-diff; name=0002-edb9302-eth-privide-proper-phy-config.patch
Content-Transfer-Encoding: BASE64
Content-ID: <alpine.DEB.2.00.1602242107171.6582@blala.de>
Content-Description: 
Content-Disposition: attachment; filename=0002-edb9302-eth-privide-proper-phy-config.patch

RnJvbSA2OWQxY2RkNGNmNTEyYTExZjI0NDZhMDMxNTFjOWFmYmQ4NDAyMGJj
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQ0KRnJvbTogQWxleGFuZGVyIEt1
cnogPGFrdXJ6QGJsYWxhLmRlPg0KRGF0ZTogU3VuLCAyMSBGZWIgMjAxNiAx
ODoxNzozMyArMDEwMA0KU3ViamVjdDogW1BBVENIIDIvNF0gZWRiOTMwMiBl
dGg6IHByaXZpZGUgcHJvcGVyIHBoeSBjb25maWcNCg0KVGhlIGV2YWx1YXRp
b24gYm9hcmRzIEVEQjkzMDIgYW5kICBPbGltZXgtQ1MtRTkzMDIgYm90aCB1
c2UgYQ0KS1M4NzIxQkwgdHJhbnNjaWV2ZXIgaW4gZGVmYXVsdCBzdHJhcHBp
bmcgd2hpY2ggaXMgcGh5X2FkZHI9MQ0KDQpTaWduZWQtb2ZmLWJ5OiBBbGV4
YW5kZXIgS3VyeiA8YWt1cnpAYmxhbGEuZGU+DQotLS0NCiBhcmNoL2FybS9i
b2FyZHMvZWRiOTN4eC9lZGI5M3h4LmMgfCA4ICsrKysrKystDQogMSBmaWxl
IGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KDQpk
aWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9hcmRzL2VkYjkzeHgvZWRiOTN4eC5j
IGIvYXJjaC9hcm0vYm9hcmRzL2VkYjkzeHgvZWRiOTN4eC5jDQppbmRleCBj
MzE0MzIwLi4wZmI5M2QyIDEwMDY0NA0KLS0tIGEvYXJjaC9hcm0vYm9hcmRz
L2VkYjkzeHgvZWRiOTN4eC5jDQorKysgYi9hcmNoL2FybS9ib2FyZHMvZWRi
OTN4eC9lZGI5M3h4LmMNCkBAIC0yNywxMCArMjcsMTYgQEANCiAjaW5jbHVk
ZSA8bWFsbG9jLmg+DQogI2luY2x1ZGUgPGdlbmVyYXRlZC9tYWNoLXR5cGVz
Lmg+DQogI2luY2x1ZGUgPG1hY2gvZXA5M3h4LXJlZ3MuaD4NCisjaW5jbHVk
ZSA8bmV0L2VwOTN4eF9ldGguaD4NCiAjaW5jbHVkZSAiZWRiOTN4eC5oIg0K
IA0KICNkZWZpbmUgREVWQ0ZHX1UxRU4gKDEgPDwgMTgpDQogDQorc3RhdGlj
IHN0cnVjdCBlcDkzeHhfZXRoX3BsYXRmb3JtX2RhdGEgZXA5M3h4X2V0aF9p
bmZvID0gew0KKyAgICAgICAgLnhjdl90eXBlID0gUEhZX0lOVEVSRkFDRV9N
T0RFX01JSSwNCisgICAgICAgIC5waHlfYWRkciA9IDEsDQorfTsNCisNCiBz
dGF0aWMgaW50IGVwOTN4eF9tZW1faW5pdCh2b2lkKQ0KIHsNCiAJYXJtX2Fk
ZF9tZW1fZGV2aWNlKCJyYW0wIiwgQ09ORklHX0VQOTNYWF9TRFJBTV9CQU5L
MF9CQVNFLA0KQEAgLTcwLDcgKzc2LDcgQEAgc3RhdGljIGludCBlcDkzeHhf
ZGV2aWNlc19pbml0KHZvaWQpDQogCSAqIENTIGxpbmUgNiwgZGF0YSB3aWR0
aCBpcyAxNiBiaXQNCiAJICovDQogCWFkZF9nZW5lcmljX2RldmljZSgiZXA5
M3h4X2V0aCIsIERFVklDRV9JRF9EWU5BTUlDLCBOVUxMLCAwLCAwLCBJT1JF
U09VUkNFX01FTSwNCi0JCQlOVUxMKTsNCisJCQkmZXA5M3h4X2V0aF9pbmZv
KTsNCiANCiAJYXJtbGludXhfc2V0X2FyY2hpdGVjdHVyZShNQUNIX1RZUEUp
Ow0KIA0KLS0gDQoyLjEuNA0KDQo=

---598520180-1615511195-1456344437=:6582
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

---598520180-1615511195-1456344437=:6582--
