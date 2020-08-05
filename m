Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k3GN7-0004gk-Nj
 for barebox@lists.infradead.org; Wed, 05 Aug 2020 10:10:10 +0000
From: Robert Karszniewicz <r.karszniewicz@phytec.de>
Date: Wed, 5 Aug 2020 12:10:04 +0200
Message-Id: <1596622207-286083-1-git-send-email-r.karszniewicz@phytec.de>
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
Subject: [RFC PATCH v2 0/3] Introduce global.bootm.root_dev env var for
 booting via PARTUUID
To: barebox@lists.infradead.org

VGhpcyBwYXRjaCBpbnRyb2R1Y2VzIGEgbmV3IGVudiB2YXIgd2hpY2ggc3BlY2lmaWVzIHdoaWNo
IGRldmljZSBpcyB0aGUKcm9vdGZzIGRldmljZSB0byBiZSB1c2VkIGluIExpbnV4LCBwYXNzZWQg
dG8gTGludXggdmlhIGJvb3RhcmdzLAppZGVudGlmaWVkIGJ5IHRoZSByb290ZnMgcGFydGl0aW9u
J3MgUEFSVFVVSUQuCgpnbG9iYWwuYm9vdG0ucm9vdF9kZXYgc3VwcGxlbWVudHMgZ2xvYmFsLmJv
b3RtLmFwcGVuZHJvb3QsIGluIHRoYXQgaXQKb3ZlcnJpZGVzIGFwcGVuZHJvb3QncyBuYcOvdmUg
ZGVmYXVsdCwgd2hpY2ggcGlja3MgdGhlIHBhcnRpdGlvbiB0aGF0IHRoZQprZXJuZWwgcmVzaWRl
cyBvbiAoZ2xvYmFsLmJvb3RtLmltYWdlKS4KCkV4YW1wbGU6CmRldGVjdCBtbWMyCmdsb2JhbC5i
b290bS5pbWFnZT0nL21udC9tbWMyLjAvekltYWdlJwpnbG9iYWwuYm9vdG0uYXBwZW5kcm9vdD0x
Cmdsb2JhbC5ib290bS5yb290X2Rldj0vZGV2L21tYzIuMQpib290IG1tYwoKRm9yIHByb3BlciBw
YXRjaCwgSSB3b3VsZCBzcXVhc2ggYWxsIGNvbW1pdHMuCgpDaGFuZ2VzIGZyb20gdjE6Ci0gcmVu
YW1lZCBlbnYgdmFyIHMvcm9vdC9yb290X2Rldi8KLSB1c2VkIGZpbGVzeXN0ZW0tYWdub3N0aWMg
YXBwcm9hY2ggKHJvb3RfZGV2IG5vdyB0YWtlcyBhIC9kZXYvIGluc3RlYWQKICBvZiBhIG1vdW50
ZWQgcGFydGl0aW9uKQoKUm9iZXJ0IEthcnN6bmlld2ljeiAoMyk6CiAgYm9vdG06IGFkZCBlbnYg
dmFyIHJvb3RfZGV2CiAgZ2xvYmFsdmFyOiBhZGQgYm9vdG0ucm9vdF9kZXYKICBib290bTogaGFu
ZGxlIGdsb2JhbC5ib290bS5yb290X2RldgoKIGNvbW1vbi9ib290bS5jICB8IDE4ICsrKysrKysr
KysrKysrKystLQogaW5jbHVkZS9ib290bS5oIHwgIDIgKysKIDIgZmlsZXMgY2hhbmdlZCwgMTgg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCi0tIAoyLjcuNAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJh
cmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2JhcmVib3gK
