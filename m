Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from webbox1416.server-home.net ([77.236.96.61])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ab31u-0000sX-Ek
 for barebox@lists.infradead.org; Wed, 02 Mar 2016 09:25:15 +0000
Received: from imapserver.systec-electronic.com (unknown [212.185.67.146])
 by webbox1416.server-home.net (Postfix) with ESMTPA id CCD8527A5C4
 for <barebox@lists.infradead.org>; Wed,  2 Mar 2016 10:24:50 +0100 (CET)
From: =?UTF-8?Q?Dr.-Ing._Martin_D=c3=a4umler_SYS_TEC_electronic_GmbH?=
 <martin.daeumler@systec-electronic.com>
Message-ID: <56D6B15B.2040206@systec-electronic.com>
Date: Wed, 2 Mar 2016 10:24:43 +0100
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: martin.daeumler@systec-electronic.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Crash after failed UBIFS mount
To: barebox@lists.infradead.org
Cc: =?UTF-8?Q?Daniel_Kr=c3=bcger?= <daniel.krueger@systec-electronic.com>, Alexander Stein <alexander.stein@systec-electronic.com>

SGVsbG8sCgp3ZSBlbmNvdW50ZXJlZCBhIHByb2JsZW0gb2YgYmFyZWJveCB0YWcgMjAxNS4wNS4w
LCB3aGljaCBpcyBhbHNvIApyZXByb2R1Y2libGUgd2l0aCB0YWcgMjAxNi4wMS4wLiBNb3VudGlu
ZyBhbiBVQklGUyBmaWxlIHN5c3RlbSBwYXJ0aXRpb24gCmZhaWxzIChjb3JyZWN0bHkpIGFuZCBi
YXJlYm94IGNyYXNoZXMgd2hpbGUgY2xlYW5pbmcgdXAuIFRoZSBjYWxsIApoaWVyYXJjaHkgaXMK
YXMgZm9sbG93czoKCi1tb3VudCgpIChmcy9mcy5jOjEyNDMpOiB0cnkgdG8gbW91bnQgdWJpZnMg
cGFydGl0aW9uOyBjYWxsIApyZWdpc3Rlcl9kZXZpY2UoKQotLXJlZ2lzdGVyX2RldmljZSgpIChk
cml2ZXJzL2Jhc2UvZHJpdmVyLmM6MTM4KToKLS0tbWF0Y2goKSAoZHJpdmVycy9iYXNlL2RyaXZl
ci5jOjExNyk6IGxvb2sgZm9yIGEgc3VpdGFibGUgZGV2aWNlIGRyaXZlcgotLS0tZGV2aWNlX3By
b2JlKCkgKGRyaXZlcnMvYmFzZS9kcml2ZXIuYzo4Mik6IHViaWZzIHBhcnRpdGlvbiBmYWlscyB0
byAKbW91bnQgZHVlIHRvIGNvcnJ1cHRlZCBMRUIKLS0tLWRldmljZV9wcm9iZSgpOiBkZWxldGUg
ZGV2aWNlJ3MgJ2FjdGl2ZScgbGlzdCAoJ2xpc3RfZGVsKCZkZXYtPmFjdGl2ZSknKQotLS1tYXRj
aCgpOiBzZXQgZGV2aWNlIGRyaXZlciB0byBOVUxMIGFuZCByZXR1cm4gLTEgdG8gcmVnaXN0ZXJf
ZGV2aWNlKCkKLS1yZWdpc3Rlcl9kZXZpY2UoKTogcmV0dXJuIDAgKHN1Y2Nlc3MpIHRvIG1vdW50
KCkKLW1vdW50KCk6IGNoZWNrIGRldmljZSBkcml2ZXIgYW5kIGNhbGwgdW5yZWdpc3Rlcl9kZXZp
Y2UoKSBkdWUgdG8gCmludmFsaWQgZHJpdmVyCi0tdW5yZWdpc3Rlcl9kZXZpY2UoKSAoZHJpdmVy
cy9iYXNlL2RyaXZlci5jOjE4MCk6IGRlbGV0ZSBkZXZpY2UncyAKJ2FjdGl2ZScgbGlzdCB0aGUg
c2Vjb25kIHRpbWUgLT4gY3Jhc2gKCkJhcmVib3ggZG9lcyBub3QgY3Jhc2ggaWYgZHJpdmVycy9i
YXNlL2RyaXZlci5jOjkyLCBpLmUuLCBsaXN0IGRlbGV0aW9uIAppbiBkZXZpY2VfcHJvYmUoKSwg
aXMgcmVtb3ZlZC4gSXMgdGhlIHJlbW92YWwgb2YgdGhlIGxpc3QgZGVsZXRpb24gYSAKdmFsaWQg
c29sdXRpb24gb3IgZG9lcyB0aGlzIGhhdmUgc2lkZSBlZmZlY3RzPwoKCldpdGggcmVnYXJkcywK
TWFydGluIETDpHVtbGVyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
