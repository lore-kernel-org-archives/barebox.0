Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKFVp-0004HB-1f
 for barebox@lists.infradead.org; Fri, 03 Apr 2020 06:09:06 +0000
References: <20200401093104.959691-1-ahmad@a3f.at>
 <20200401093104.959691-2-ahmad@a3f.at>
 <20200402195136.iwkuaeu54y6idbrl@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <91afd3e3-9863-8ee1-4150-f0c8cb415607@pengutronix.de>
Date: Fri, 3 Apr 2020 08:09:00 +0200
MIME-Version: 1.0
In-Reply-To: <20200402195136.iwkuaeu54y6idbrl@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [RFC PATCH 1/4] ARM: implement sjlj-based TRY/CATCH exception
 handling
To: Roland Hieber <rhi@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

T24gNC8yLzIwIDk6NTEgUE0sIFJvbGFuZCBIaWViZXIgd3JvdGU6Cj4gT24gV2VkLCBBcHIgMDEs
IDIwMjAgYXQgMTE6MzE6MDFBTSArMDIwMCwgQWhtYWQgRmF0b3VtIHdyb3RlOgo+PiBOb3cgd2l0
aCBzZXRqbXAgc3VwcG9ydGVkIGluIGJhcmVib3gsIHdlIGRvbid0IG5lZWQgdG8gbGltaXQgb3Vy
c2VsdmVzCj4+IHRvIG91dGRhdGVkIG9mIHJldHVybi12YWx1ZS1iYXNlZCBlcnJvciBwcm9wYWdh
dGlvbi4KPj4gSW5zdGVhZCwgZW1icmFjZSB0aGUgc3RhdGUtb2YtdGhlLWFydCBhbmQgcG9ydCBr
YXpsaWIncyBBTlNJIEMgZXhjZXB0aW9ucwo+PiB0byBiYXJlYm94Lgo+Pgo+PiBSZXZpZXdlZC1i
eTogQWhtYWQgRmF0b3VtIDxhaG1hZEBhM2YuYXQ+Cj4gCj4gU2VsZi1yZXZpZXcg4oCmPyBPciBz
dXBwb3NlZCB0byBiZSBhIFMtby1iPwoKVG9vIGh1bWJsZWQgdG8gY2xhaW0gY28tYXV0aG9yc2hp
cCBvZiBzdWNoIGludHJpY2F0ZSBiZWF1dHkuClRoaXMgaXMgbm90IG1hZGUsIGJ1dCBkaXNjb3Zl
cmVkLCBhbmQgYXMgc3VjaCB0cmFuc2NlbmRzIHRoZSBEQ08uLi4KCkNoZWVycwpBaG1hZAoKPiAK
PiAgIC0gUm9sYW5kCj4gCgotLSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKU3RldWVyd2FsZGVyIFN0ci4g
MjEgICAgICAgICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwK
MzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSAgICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01
MTIxLTIwNjkxNy0wICAgIHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAg
ICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2JhcmVib3gK
