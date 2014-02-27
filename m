Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJ7k6-0002d1-GY
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 20:39:44 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu, 27 Feb 2014 21:39:03 +0100
Message-Id: <1393533550-1865-4-git-send-email-u.kleine-koenig@pengutronix.de>
In-Reply-To: <1393533550-1865-1-git-send-email-u.kleine-koenig@pengutronix.de>
References: <1393533550-1865-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH v2 03/10] Documentation: fix example call to
 devfs_add_partition
To: barebox@lists.infradead.org

VGhlIGZsYWdzIHBhcmFtZXRlciB3YXMgc2tpcHBlZCBpbiB0aGUgZXhhbXBsZS4gQWRkIGl0IGFz
CkRFVkZTX1BBUlRJVElPTl9GSVhFRC4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmln
IDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogRG9jdW1lbnRhdGlvbi9wb3J0
aW5nLnR4dCB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vcG9ydGluZy50eHQgYi9Eb2N1bWVudGF0
aW9uL3BvcnRpbmcudHh0CmluZGV4IGEzNTBlNWU1ZmUzOC4uYmQ4MDdhMzE4NjA3IDEwMDY0NAot
LS0gYS9Eb2N1bWVudGF0aW9uL3BvcnRpbmcudHh0CisrKyBiL0RvY3VtZW50YXRpb24vcG9ydGlu
Zy50eHQKQEAgLTUwLDcgKzUwLDcgQEAgZXh0cmEteSArPSBiYXJlYm94LmxkcwogICBpcyBub3Qg
cG9ydGVkIHlldC4KIAogLSBDYWxsIGRldmZzX2FkZF9wYXJ0aXRpb24oKSB0byBhZGQgYW4gZW52
aXJvbm1lbnQgcGFydGl0aW9uIGZvciB5b3VyIGRldmljZToKLSAgZGV2ZnNfYWRkX3BhcnRpdGlv
bigibm9yMCIsIDB4NDAwMDAsIDB4MjAwMDAsICJlbnYwIik7CisgIGRldmZzX2FkZF9wYXJ0aXRp
b24oIm5vcjAiLCAweDQwMDAwLCAweDIwMDAwLCBERVZGU19QQVJUSVRJT05fRklYRUQsICJlbnYw
Iik7CiAgIFRoaXMgd2lsbCBhZGQgYW4gYXJlYSBzdGFydGluZyBhdCAweDQwMDAwIG9mIHNpemUg
MHgyMDAwMCBvZiB0aGUgZGV2aWNlCiAgIG5vcjAgYXMgZW52MC4KIAotLSAKMS44LjUuMwoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFp
bGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
