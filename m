Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vm6.ganeti.dyne.org ([195.169.149.119])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKORz-0000nz-Ud
 for barebox@lists.infradead.org; Tue, 15 Oct 2019 15:09:29 +0000
Date: Tue, 15 Oct 2019 17:08:42 +0200
From: Denis Roio <jaromil@dyne.org>
Message-ID: <20191015150842.pti6kze33kcsmrsm@reflex>
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
Subject: setup for a working framebuffer in qemu
To: barebox@lists.infradead.org

CmhpIGFsbCEgbm9vYiBxdWVzdGlvbiBoZXJlLCBob3BlIHlvdSBkb24ndCBtaW5kCgppcyB0aGVy
ZSBhIHJlY29tbWVuZGVkLCBtYXRjaGluZyBjb25maWd1cmF0aW9uIHRvIHJ1biBiYXJlYm94IGlu
IHFlbXUKd2l0aCBhIHdvcmtpbmcgL2Rldi9mYjAgPwoKCkkgaGF2ZSBtYWRlIHNvbWUgdHJpZXMg
YWxyZWFkeSB3aXRoIG5vIHN1Y2Nlc3M6CgotIHFlbXUgZW11bGF0ZWQgbWlwcy1tYWx0YSBib290
cywgYnV0IG5vIGZiMAotIHFlbXUgZW11bGF0ZWQgdmV4cHJlc3MgYm9vdHMsIGJ1dCBubyBmYjAK
LSBxZW11IGVtdWxhdGVkIHNhYnJlbGl0ZSBjYW4ndCBldmVuIGdldCBpdCB0byBib290CgpJJ20g
YSBiaXQgb3V0IG9mIGlkZWFzLiBXb3VsZCByZWFsbHkgYXBwcmVjaWF0ZSBndWlkYW5jZSwgdGhp
cyBpcwptb3N0bHkgZm9yIGZ1biB3aGlsZSBwb2tpbmcgYXJvdW5kIHRoaXMgd29uZGVyZnVsIHBy
b2plY3QuCgoKVGhhbmtzIQoKCi0tIAogIERlbmlzICJKYXJvbWlsIiBSb2lvICAgICAgaHR0cHM6
Ly9EeW5lLm9yZyB0aGluayAmZG8gdGFuawogIFBoLkQsIENUTyAmIGNvLWZvdW5kZXIgICAgc29m
dHdhcmUgdG8gZW1wb3dlciBjb21tdW5pdGllcwogIOKciSBIYXBhcmFuZGFkYW0gNy1BMSwgMTAx
M0FLIEFtc3RlcmRhbSwgVGhlIE5ldGhlcmxhbmRzCiAg8J2EniBjcnlwdG8gzrrPgc+Fz4DPhM6/
INC60YDQuNC/0YLQviDgpJfgpYHgpKrgpY3gpKTgpY0g5Yqg5a+GINeU15DXoNeV16HXmdedINin
2YTZhdi02YHYsdmHCiAg4pq3IDYxMTNEODlDIEE4MjVDNUNFIEREMDJDODcyIDczQjM1REE1IDRB
Q0I3RDEwCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
YmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
