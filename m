Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22a.google.com ([2a00:1450:400c:c09::22a])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1coVsI-00073J-74
 for barebox@lists.infradead.org; Thu, 16 Mar 2017 13:55:33 +0000
Received: by mail-wm0-x22a.google.com with SMTP id 196so3629234wmm.1
 for <barebox@lists.infradead.org>; Thu, 16 Mar 2017 06:55:09 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?w4dhxJ9sYXIgS2lsaW1jaQ==?= <ckilimci@gmail.com>
Date: Thu, 16 Mar 2017 16:55:07 +0300
Message-ID: <CAGUZs0mnJVHpN59qB5zsZsZA193pnhCpb=vATo-asaKVMj0HfQ@mail.gmail.com>
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
Subject: Barebox State Framework
To: barebox <barebox@lists.infradead.org>

SGVsbG8gYWxsLAoKQXMgbXkgZ2VuZXJhbCBwdXJwb3NlIG9mIHVwZGF0aW5nIGEgc3lzdGVtIHdp
dGggUlVBQyBbMV0sIEkgbmVlZCB0bwp1c2UgQmFyZWJveCBTdGF0ZSBGcmFtZXdvcmsgYnV0IEkg
Y291bGQgbm90IHJ1biBpdCBwcm9wZXJseS4gSSBoYXZlCmFwcGVuZGVkIEJhcmVib3ggY29uZmln
IHRoZXNlOgoKQ09ORklHX1NUQVRFPXkKQ09ORklHX1NUQVRFX0NSWVBUTz15CkNPTkZJR19DTURf
U0hBMVNVTT15CkNPTkZJR19DTURfU0hBMjI0U1VNPXkKQ09ORklHX0NNRF9TSEEyNTZTVU09eQpD
T05GSUdfQ01EX1NIQTM4NFNVTT15CkNPTkZJR19DTURfU0hBNTEyU1VNPXkKQ09ORklHX0NNRF9T
VEFURT15CkNPTkZJR19TVEFURV9EUlY9eQpDT05GSUdfRElHRVNUX0hNQUM9eQpDT05GSUdfRElH
RVNUX1NIQTFfR0VORVJJQz15CkNPTkZJR19ESUdFU1RfSE1BQ19HRU5FUklDPXkKQ09ORklHX0NS
WVBUT19LRVlTVE9SRT15CkNPTkZJR19CT09UQ0hPT1NFUj15CkNPTkZJR19DTURfQk9PVENIT09T
RVI9eQoKQW5kIGFsc28sIEkgaW5jbHVkZSBiZWxvdyBpbnRvIG15IGR0czoKc3RhdGU6IHN0YXRl
QDAgewptYWdpYyA9IDwweDI3MDMxOTc3PjsKY29tcGF0aWJsZSA9ICJiYXJlYm94LHN0YXRlIjsK
YmFja2VuZC10eXBlID0gInJhdyI7CmJhY2tlbmQgPSAicGFydG5hbWU6c3RhdGUiOwoKZm9vIHsK
cmVnID0gPDB4MDAgMHg0PjsKdHlwZSA9ICJ1aW50MzIiOwpkZWZhdWx0ID0gPDB4MD47Cn07Cgpi
YXIgewpyZWcgPSA8MHgxMCAweDQ+Owp0eXBlID0gImVudW0zMiI7Cm5hbWVzID0gImJheiIsICJx
dXgiOwpkZWZhdWx0ID0gPDE+Owp9Owp9OwoKSSBjb3VsZCBub3Qgc2VlICJzdGF0ZSIgdmFyaWFi
bGUgZnJvbUJhcmVib3ggY29uc29sZS4gU2ltaWxhcmx5LCBJIGdldAphbiBlcnJvciAoIm5vIHN1
Y2ggbm9kZTogc3RhdGUiKSBmcm9tIG15IE9TIGlmIEkgcnVuIEJhcmVib3gtc3RhdGUKY29tbWFu
ZC4KClRoYW5rIHlvdSBmb3IgeW91ciBoZWxwLgoKWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9yYXVj
L21ldGEtcmF1YwoKU2luY2VyZWx5LAotLSAKw4dhxJ9sYXIgS2lsaW1jaQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QK
YmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
