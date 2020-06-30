Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqGcn-0000iY-0c
 for barebox@lists.infradead.org; Tue, 30 Jun 2020 13:48:38 +0000
From: Robert Karszniewicz <r.karszniewicz@phytec.de>
Date: Tue, 30 Jun 2020 15:48:30 +0200
Message-Id: <1593524914-228154-1-git-send-email-r.karszniewicz@phytec.de>
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
Subject: [RFC PATCH 0/4] Introduce global.bootm.root env var for booting via
 PARTUUID
To: barebox@lists.infradead.org

VGhpcyBwYXRjaCBpbnRyb2R1Y2VzIGEgbmV3IGVudiB2YXIgd2hpY2ggc3BlY2lmaWVzIHdoaWNo
IGRldmljZQppcyB0aGUgcm9vdGZzIGRldmljZSB0byBiZSB1c2VkIGluIExpbnV4LCBwYXNzZWQg
dG8gTGludXggdmlhIGJvb3RhcmdzLAppZGVudGlmaWVkIGJ5IHRoZSByb290ZnMgcGFydGl0aW9u
J3MgUEFSVFVVSUQuCgpnbG9iYWwuYm9vdG0ucm9vdCBzdXBwbGVtZW50cyBnbG9iYWwuYm9vdG0u
YXBwZW5kcm9vdCwgaW4gdGhhdCBpdCBvdmVycmlkZXMKYXBwZW5kcm9vdCdzIG5hw692ZSBkZWZh
dWx0LCB3aGljaCBwaWNrcyB0aGUgcGFydGl0aW9uIHRoYXQgdGhlIGtlcm5lbCByZXNpZGVzCm9u
IChnbG9iYWwuYm9vdG0uaW1hZ2UpLgoKSSBkb24ndCBrbm93IGlmIGl0IGlzIHRoZSByaWdodCB3
YXksIG9yIGEgZ29vZCB3YXksIGJ1dCB0aGlzIGlzIHRoZSBzaG9ydGVzdAphbmQgc2ltcGxlc3Qg
d2F5IHRoYXQgSSd2ZSBmb3VuZC4KCldoYXQgZG8geW91IHRoaW5rIG9mIHRoaXM/IEFuZCBpcyBp
dCBnZW5lcmFsbHkgc29tZXRoaW5nIHRoYXQgd291bGQgYmUKYWNjZXB0ZWQsIG9yIGlzIHRoaXMg
b3V0IG9mIHNjb3BlIGZvciBiYXJlYm94PwoKRXhhbXBsZToKZGV0ZWN0IG1tYzIKZ2xvYmFsLmJv
b3RtLmltYWdlPScvbW50L21tYzIuMC96SW1hZ2UnCmdsb2JhbC5ib290bS5hcHBlbmRyb290PTEK
Z2xvYmFsLmJvb3RtLnJvb3Q9Jy9tbnQvbW1jMi4xLycKYm9vdCBtbWMKCk5vdGUgdGhhdCB0aGUg
dHJhaWxpbmcgc2xhc2ggaXMgaW1wb3J0YW50LgpTZWUgY29tbWVudCBpbiBmb2xsb3dfYXV0b21v
dW50KCkgaW4gZnMvZnMuYwoKUm9iZXJ0IEthcnN6bmlld2ljeiAoNCk6CiAgYm9vdG06IGFkZCBl
bnYgdmFyIHJvb3RfZGV2CiAgZ2xvYmFsdmFyOiBhZGQgYm9vdG0ucm9vdAogIGJvb3RtOiBoYW5k
bGUgZ2xvYmFsLmJvb3RtLnJvb3QKICBib290bTogbW91bnQgcm9vdCBkZXZpY2UgYmVmb3JlIGFj
Y2Vzc2luZyBsaW51eF9yb290YXJnCgogY29tbW9uL2Jvb3RtLmMgIHwgMTMgKysrKysrKysrKyst
LQogaW5jbHVkZS9ib290bS5oIHwgIDIgKysKIDIgZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkKCi0tIAoyLjcuNAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2JhcmVib3gK
