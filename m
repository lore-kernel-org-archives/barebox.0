Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22c.google.com ([2a00:1450:4013:c00::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VW3A7-0005OM-Dh
 for barebox@lists.infradead.org; Tue, 15 Oct 2013 11:51:44 +0000
Received: by mail-ee0-f44.google.com with SMTP id b47so3963480eek.3
 for <barebox@lists.infradead.org>; Tue, 15 Oct 2013 04:51:18 -0700 (PDT)
Date: Tue, 15 Oct 2013 13:51:17 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20131015115116.GC2839@omega>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: raspberry pi mmc issue
To: barebox@lists.infradead.org

SGkgYWxsLAoKSSB1c2luZyBhIG5vdCBtYWlubGluZWQgcmFzcGJlcnJ5IHBpIHFlbXUgaW1wbGVt
ZW50YXRpb24gWzFdIGFuZCB0cmllZCB0bwpydW4gYmFyZWJveCBvbiBpdC4gQWxsIHNlZW1zIHRv
IHdvcmtpbmcgYnV0IGlmIEkgcHJvYmUgdGhlIG1tYyB3aXRoCm1jaTAucHJvYmU9MSBxZW11IHdp
bGwgY3Jhc2ggb24gYSBhc3NlcnQgb24gNCBieXRlIGFzc2VydCBbMl0uCgpJIGRpZyBhIGxpdHRs
ZSBiaXQgaW50byB0aGUgRGF0YXNoZWV0IG9mIGJjbTI4MzUgWzNdIHdoaWNoIHNheXM6CgoiQ29u
dHJhcnkgdG8gQXJhc2Fu4oSi4oCZcyBkb2N1bWVudGF0aW9uIHRoZSBFTU1DIG1vZHVsZSByZWdp
c3RlcnMgY2FuIG9ubHkKYmUgYWNjZXNzZWQgYXMgMzIgYml0IHJlZ2lzdGVycywgaS5lLiB0aGUg
dHdvIExTQnMgb2YgdGhlIGFkZHJlc3MgYXJlCmFsd2F5cyB6ZXJvLiIKClRoZW4gSSBkaWcgaW50
byB0aGUgYmFyZWJveCBiY20yODM1X21jaSBpbXBsZW1lbnRhdGlvbiBhbmQgZm91bmQKc29tZXRo
aW5nIFs0XS4gV2UgdXNlIHRoZXJlIGEgcmVhZGIgb24gU0RIQ0lfUkVTUE9OU0VfMCB3aGljaCBp
cyBub3QgYQozMiBiaXQgYWNjZXNzLiBJIGp1c3QgY29tbWVudGVkIHRoZSBpZiBicmFuY2ggYW5k
IGl0IHdvcmtzLgoKTWF5YmUgdGhpcyBjYW4gbWFrZSBzb21lIGVycm9ycyBvbiBhIHJlYWwgcmFz
cGJlcnJ5LCB0b28uCgpNYXliZSBzb21lYm9keSBrbm93cyBhIGxpdHRsZSBiaXQgbW9yZSBhYm91
dCBtY2kgYW5kIGNhbiBoZWxwIG1lIHRvIGZpbmQKYSBwcm9wZXIgc29sdXRpb24/IFBlcmhhcHMg
anVzdCBtYWtlIGEgMzIgYml0IGFjY2VzcyBhbmQgZG8gc29tZSBiaXQKbWFnaWMgd2l0aCBtYXNr
cyBhbmQgc2hpZnRzPwoKLSBBbGV4CgpbMV0gaHR0cHM6Ly9naXRodWIuY29tL1Rvcmx1cy9xZW11
LXJwaQpbMl0gaHR0cHM6Ly9naXRodWIuY29tL1Rvcmx1cy9xZW11L2Jsb2IvcnBpL2h3L2FybS9i
Y20yODM1X2VtbWMuYyNMNDA1ClszXSBodHRwOi8vd3d3LnJhc3BiZXJyeXBpLm9yZy93cC1jb250
ZW50L3VwbG9hZHMvMjAxMi8wMi9CQ00yODM1LUFSTS1QZXJpcGhlcmFscy5wZGYgcGFnZSA2Ngpb
NF0gaHR0cDovL2dpdC5wZW5ndXRyb25peC5kZS8/cD1iYXJlYm94LmdpdDthPWJsb2I7Zj1kcml2
ZXJzL21jaS9tY2ktYmNtMjgzNS5jO2g9YWJkMzhhMzVjOWJmYWRjYjJlMzAxM2ViNGIyMjBmNzRh
Y2Y3NDY0YjtoYj1IRUFEI2wyNjQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
