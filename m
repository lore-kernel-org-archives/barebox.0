Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwU9C-0002vW-Gi
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 09:23:48 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 2FFCEBF0E6
 for <barebox@lists.infradead.org>; Tue,  9 Jul 2013 11:17:33 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Tue, 9 Jul 2013 11:23:15 +0200
Message-Id: <1373361802-31080-5-git-send-email-t.gamez@phytec.de>
In-Reply-To: <1373361802-31080-1-git-send-email-t.gamez@phytec.de>
References: <1373361802-31080-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCHv2 05/12] PCM051: Update pcm051_defconfig
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogVGVyZXNhIEfDoW1leiA8dC5nYW1lekBwaHl0ZWMuZGU+Ci0tLQogYXJj
aC9hcm0vY29uZmlncy9wY20wNTFfZGVmY29uZmlnIHwgICAxNSArKysrKysrKysrKysrLS0KIDEg
ZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9hcmNoL2FybS9jb25maWdzL3BjbTA1MV9kZWZjb25maWcgYi9hcmNoL2FybS9jb25maWdz
L3BjbTA1MV9kZWZjb25maWcKaW5kZXggZTkwZTI3Zi4uMGJjN2M5MCAxMDA2NDQKLS0tIGEvYXJj
aC9hcm0vY29uZmlncy9wY20wNTFfZGVmY29uZmlnCisrKyBiL2FyY2gvYXJtL2NvbmZpZ3MvcGNt
MDUxX2RlZmNvbmZpZwpAQCAtMSwxMSArMSwxNSBAQAogQ09ORklHX0FSQ0hfT01BUD15CiBDT05G
SUdfQVJDSF9BTTMzWFg9eQotQ09ORklHX09NQVBfQlVJTERfSUZUPXkKIENPTkZJR19NQUNIX1BD
TTA1MT15CitDT05GSUdfT01BUF9VQVJUMT15CiBDT05GSUdfQUVBQkk9eQorQ09ORklHX0FSTV9C
T0FSRF9BUFBFTkRfQVRBRz15CitDT05GSUdfQ01EX0FSTV9NTVVJTkZPPXkKIENPTkZJR19BUk1f
T1BUSU1aRURfU1RSSU5HX0ZVTkNUSU9OUz15CiBDT05GSUdfQVJNX1VOV0lORD15Ci1DT05GSUdf
VEVYVF9CQVNFPTB4ODEwMDAwMDAKK0NPTkZJR19NTVU9eQorQ09ORklHX1RFWFRfQkFTRT0weDhm
MDAwMDAwCitDT05GSUdfTUFMTE9DX1NJWkU9MHgyMDAwMDAwCiBDT05GSUdfUFJPTVBUPSJiYXJl
Ym94QHBjbTA1MT4iCiBDT05GSUdfTE9OR0hFTFA9eQogQ09ORklHX0hVU0hfRkFOQ1lfUFJPTVBU
PXkKQEAgLTI3LDYgKzMxLDggQEAgQ09ORklHX0NNRF9QUklOVEVOVj15CiBDT05GSUdfQ01EX1JF
QURMSU5FPXkKIENPTkZJR19DTURfTUVOVT15CiBDT05GSUdfQ01EX01FTlVfTUFOQUdFTUVOVD15
CitDT05GSUdfQ01EX1RJTUU9eQorQ09ORklHX0NNRF9URlRQPXkKIENPTkZJR19DTURfRUNIT19F
PXkKIENPTkZJR19DTURfTE9BREI9eQogQ09ORklHX0NNRF9DUkM9eQpAQCAtMzksMTEgKzQ1LDEz
IEBAIENPTkZJR19DTURfVUlNQUdFPXkKIENPTkZJR19DTURfQk9PVFo9eQogQ09ORklHX0NNRF9S
RVNFVD15CiBDT05GSUdfQ01EX0dPPXkKK0NPTkZJR19DTURfQkFSRUJPWF9VUERBVEU9eQogQ09O
RklHX0NNRF9USU1FT1VUPXkKIENPTkZJR19DTURfUEFSVElUSU9OPXkKIENPTkZJR19DTURfR1BJ
Tz15CiBDT05GSUdfQ01EX1VOQ09NUFJFU1M9eQogQ09ORklHX0NNRF9JMkM9eQorQ09ORklHX0NN
RF9TUEk9eQogQ09ORklHX05FVD15CiBDT05GSUdfTkVUX0RIQ1A9eQogQ09ORklHX05FVF9ORlM9
eQpAQCAtNjQsNiArNzIsOSBAQCBDT05GSUdfTUNJPXkKIENPTkZJR19NQ0lfU1RBUlRVUD15CiBD
T05GSUdfTUNJX09NQVBfSFNNTUM9eQogQ09ORklHX0VFUFJPTV9BVDI0PXkKK0NPTkZJR19HUElP
X0dFTkVSSUNfUExBVEZPUk09eQorQ09ORklHX0ZTX1RGVFA9eQorQ09ORklHX0ZTX05GUz15CiBD
T05GSUdfRlNfRkFUPXkKIENPTkZJR19GU19GQVRfV1JJVEU9eQogQ09ORklHX0ZTX0ZBVF9MRk49
eQotLSAKMS43LjAuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
