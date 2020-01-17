Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout06.rmx.de ([94.199.90.92])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isPYP-00012H-ME
 for barebox@lists.infradead.org; Fri, 17 Jan 2020 11:12:47 +0000
Received: from kdin01.retarus.com (kdin01.dmz1.retloc [172.19.17.48])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout06.rmx.de (Postfix) with ESMTPS id 47zdh41F8lz9yCb
 for <barebox@lists.infradead.org>; Fri, 17 Jan 2020 12:12:36 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin01.retarus.com (Postfix) with ESMTPS id 47zdh31PMfz301b
 for <barebox@lists.infradead.org>; Fri, 17 Jan 2020 12:12:35 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Fri, 17 Jan 2020 12:12:33 +0100
Message-ID: <1795465.69go6dTdiT@n95hx1g2>
In-Reply-To: <20200117102637.GA3698@ravnborg.org>
References: <20200117095013.31379-1-ceggers@arri.de>
 <20200117102637.GA3698@ravnborg.org>
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
Subject: Re: [PATCH] lds: Fix alignment of initcall table
To: ceggers@gmx.de
Cc: barebox@lists.infradead.org

SGkgU2FtLAoKQW0gRnJlaXRhZywgMTcuIEphbnVhciAyMDIwLCAxMToyNjozNyBDRVQgc2Nocmll
YmVuIFNpZToKPiBIaSBDaHJpc3RpYW4uCj4KPiBUaGFua3MgZm9yIHRoZSBwYXRjaC4KPgo+IFsu
Li5dCj4gSGF2ZSB5b3Ugc2VlbjoKPiBkNWY4YmQ5YzUwM2UwYTE3ZWYwNzFlZWM1MGM1MzdjYzgy
YTc5NTZjICgibGRzOiBhbGlnbiBST19EQVRBX1NFQ1RJT04KPiBtZW1iZXJzIikgd2hpY2ggd2Fz
IHJlY2VudGx5IGNvbW1pdHRlZCB0byBtYXN0ZXI/CnVuZm9ydHVuYXRlbHkgSSBoYXZlbid0LiBJ
IHN0YXJ0ZWQgZGV2ZWxvcG1lbnQgMiBkYXlzIGJlZm9yZSAyMDIwLjAxIGhhcwpiZWVuIHJlbGVh
c2VkLi4uCgo+IEl0IGxvb2tzIGxpa2UgdGhlIHR3byBwYXRjaGVzIGZpeGVzIHRoZSBzYW1lLgo+
IEV4cGVjdCB0aGF0IHlvdSBoYXZlIG11Y2ggaGlnaGVyIGFsaWdubWVudCBkZW1hbmRzIGluIGEg
ZmV3IGNhc2VzIChpYTMyLAo+IHg4NikuCkkgaGF2ZSBubyBkZW1hbmRzIGZvciBvdGhlciBhcmNo
aXRlY3R1cmVzIHRoYW4gQVJNdjcsIEkgb25seSB0b29rCnRoZSBhbGlnbm1lbnQgdmFsdWVzIGZy
b20gdGhlIG90aGVyIC5hbGlnbigpIHN0YXRlbWVudHMgaW4gdGhlIHBsYXRmb3JtCmxpbmtlciBz
Y3JpcHRzLgoKPiBDb3VsZCB5b3UgdmVyaWZ5IGlmIHRoaW5ncyB3b3JrcyBvbiBsYXRlc3QgbWFz
dGVyIG9yIHlvdSBzdGlsbCBuZWVkCj4gYWRkaXRpb25hbCBhbGlnbm1lbnQ/CkJhcmVib3ggMjAy
MC4wMSB3b3JrcyBmaW5kIHdpdGhvdXQgbXkgcGF0Y2guIFNvIHlvdSBjYW4gZHJvcCBpdC4KCnJl
Z2FyZHMKQ2hyaXN0aWFuCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCiBbaHR0
cDovL2Fzc2V0cy5hcnJpLmNvbS9tZWRpYS9zaWduLzIwMTktMTItMTNhLUFSUkktRS1tYWlsLVNp
Z25hdHVyLVBhcmtzdGFkdC5qcGddIDxodHRwczovL3d3dy5nb29nbGUuY29tL21hcHMvcGxhY2Uv
SGVyYmVydC1CYXllci1TdHJhJUMzJTlGZSsxMCwrODA4MDcrTSVDMyVCQ25jaGVuL2RhdGE9ITRt
MiEzbTEhMXMweDQ3OWU3NDM3OTQ4OWYwNDU6MHg0YmJmMGM3YTllODkzZDY2P3NhPVgmdmVkPTJh
aFVLRXdqanZkU2xoOFRtQWhXSXA0c0tIZTN2RGxRUThnRXdBSG9FQ0FzUUFRPgoKR2V0IGFsbCB0
aGUgbGF0ZXN0IGluZm9ybWF0aW9uIGZyb20gd3d3LmFycmkuY29tPGh0dHBzOi8vd3d3LmFycmku
Y29tLz4sIEZhY2Vib29rPGh0dHBzOi8vd3d3LmZhY2Vib29rLmNvbS9UZWFtQVJSST4sIFR3aXR0
ZXI8aHR0cHM6Ly90d2l0dGVyLmNvbS9BUlJJQ2hhbm5lbD4sIEluc3RhZ3JhbTxodHRwczovL2lu
c3RhZ3JhbS5jb20vYXJyaT4gYW5kIFlvdVR1YmU8aHR0cHM6Ly93d3cueW91dHViZS5jb20vdXNl
ci9BUlJJQ2hhbm5lbD4uCgpBcm5vbGQgJiBSaWNodGVyIENpbmUgVGVjaG5payBHbWJIICYgQ28u
IEJldHJpZWJzIEtHClNpdHo6IE3DvG5jaGVuIC0gUmVnaXN0ZXJnZXJpY2h0OiBBbXRzZ2VyaWNo
dCBNw7xuY2hlbiAtIEhhbmRlbHNyZWdpc3Rlcm51bW1lcjogSFJBIDU3OTE4ClBlcnPDtm5saWNo
IGhhZnRlbmRlciBHZXNlbGxzY2hhZnRlcjogQXJub2xkICYgUmljaHRlciBDaW5lIFRlY2huaWsg
R21iSApTaXR6OiBNw7xuY2hlbiAtIFJlZ2lzdGVyZ2VyaWNodDogQW10c2dlcmljaHQgTcO8bmNo
ZW4gLSBIYW5kZWxzcmVnaXN0ZXJudW1tZXI6IEhSQiA1NDQ3NwpHZXNjaMOkZnRzZsO8aHJlcjog
RHIuIE1pY2hhZWwgTmV1aMOkdXNlcjsgU3RlcGhhbiBTY2hlbms7IFdhbHRlciBUcmF1bmluZ2Vy
OyBNYXJrdXMgWmVpbGVyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
