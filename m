Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22a.google.com ([2a00:1450:400c:c00::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WphTi-0005kG-S3
 for barebox@lists.infradead.org; Wed, 28 May 2014 17:17:27 +0000
Received: by mail-wg0-f42.google.com with SMTP id y10so11312329wgg.13
 for <barebox@lists.infradead.org>; Wed, 28 May 2014 10:17:03 -0700 (PDT)
MIME-Version: 1.0
From: Matteo Fortini <matteo.fortini@gmail.com>
Date: Wed, 28 May 2014 19:16:43 +0200
Message-ID: <CAC_9p+84LdjnZ=7zRtHYchpCDigYWKhy5H7Ed+gr0SnvPUDH+g@mail.gmail.com>
Content-Type: multipart/mixed; boundary=047d7bb03f9a2b3e7a04fa78fb4e
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
Subject: [PATCH] SAMA5D3X FIX AT91_SMC_CS offset stride
To: barebox@lists.infradead.org

--047d7bb03f9a2b3e7a04fa78fb4e
Content-Type: text/plain; charset=UTF-8

As stated in section 29.19.32 of SAMA5D3 Series datasheet, to move
from CS(n) to CS(n+1) the stride is 0x14 and not 0x10.

For this reason, I was unable to use the NAND memory on my board (CS
configuration was not applied and the timings were wrong).

This patch fixes the problem.

Matteo

--047d7bb03f9a2b3e7a04fa78fb4e
Content-Type: text/x-patch; charset=US-ASCII; 
	name="0001-sama5d3x-fix-AT91_SMC_CS-offset-stride.patch"
Content-Disposition: attachment; 
	filename="0001-sama5d3x-fix-AT91_SMC_CS-offset-stride.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hvqw9qjr0

RnJvbSA2YzI2ZDdjMDAwMDVjYmY0NDcwMDE3YTZkNTM2MWEzNDY5ODFiYmU1IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBNYXR0ZW8gRm9ydGluaSA8bWF0dGVvLmZvcnRpbmlAZ21haWwu
Y29tPgpEYXRlOiBXZWQsIDI4IE1heSAyMDE0IDE5OjAwOjQyICswMjAwClN1YmplY3Q6IFtQQVRD
SF0gc2FtYTVkM3g6IGZpeCBBVDkxX1NNQ19DUyBvZmZzZXQgc3RyaWRlCgotLS0KIGFyY2gvYXJt
L21hY2gtYXQ5MS9zYW05X3NtYy5jIHwgNCArKysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1hdDkxL3NhbTlfc21jLmMgYi9hcmNo
L2FybS9tYWNoLWF0OTEvc2FtOV9zbWMuYwppbmRleCBhMTM3ZGE0Li42NWM0NTU4IDEwMDY0NAot
LS0gYS9hcmNoL2FybS9tYWNoLWF0OTEvc2FtOV9zbWMuYworKysgYi9hcmNoL2FybS9tYWNoLWF0
OTEvc2FtOV9zbWMuYwpAQCAtMTYsNyArMTYsMTEgQEAKIAogI2luY2x1ZGUgPG1hY2gvYXQ5MXNh
bTlfc21jLmg+CiAKKyNpZmRlZiBDT05GSUdfQVJDSF9TQU1BNUQzCisjZGVmaW5lIEFUOTFfU01D
X0NTKGlkLCBuKQkoc21jX2Jhc2VfYWRkcltpZF0gKyAoKG4pICogMHgxNCkpCisjZWxzZQogI2Rl
ZmluZSBBVDkxX1NNQ19DUyhpZCwgbikJKHNtY19iYXNlX2FkZHJbaWRdICsgKChuKSAqIDB4MTAp
KQorI2VuZGlmCiAKIHN0YXRpYyB2b2lkIF9faW9tZW0gKnNtY19iYXNlX2FkZHJbMl07CiAKLS0g
CjIuMC4wLnJjMgoK
--047d7bb03f9a2b3e7a04fa78fb4e
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--047d7bb03f9a2b3e7a04fa78fb4e--
