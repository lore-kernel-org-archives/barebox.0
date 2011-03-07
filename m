Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out2.bezeqint.net ([192.115.188.208])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PwdPI-00035G-SA
	for barebox@lists.infradead.org; Mon, 07 Mar 2011 16:35:42 +0000
Received: from remotel.wellsense-tech.com (bzq-218-57-225.cablep.bezeqint.net
	[81.218.57.225])
	by out2.bezeqint.net (Postfix) with ESMTPA id BDAE9211CAC
	for <barebox@lists.infradead.org>; Mon,  7 Mar 2011 18:35:21 +0200 (IST)
From: Boaz Ben-David <boaz.bd@wellsense-tech.com>
Date: Mon, 7 Mar 2011 18:35:10 +0200
Message-ID: <39A4B204C321D34DA3490E3B119D5A6C68C006F8A2@SBS2008.wellsense.local>
Content-Language: en-US
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2011158090=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: iMX35 3stack framebuffer problem
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: Itai Raab <itai.raab@wellsense-tech.com>

--===============2011158090==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_39A4B204C321D34DA3490E3B119D5A6C68C006F8A2SBS2008wellse_"

--_000_39A4B204C321D34DA3490E3B119D5A6C68C006F8A2SBS2008wellse_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCldoZW4gdXNpbmcgdGhlIGlNWDM1IGZyZWVzY2FsZSAzc3RhY2sgd2UgYXJlIGhhdmlu
ZyBzb21lIGlzc3VlcyB3aXRoIHRoZSBGQiBkcml2ZXIuDQpPbiBkZXZpY2UgYm9vdCB3ZSBlbmFi
bGUgdGhlIGZiIHVzaW5nICJmYjAuZW5hYmxlPTEiIGFuZCB0aGVuIHRyeSB0byBib290IHRoZSBr
ZXJuZWwgZnJvbSBuYW5kLg0KVGhlIHByb2JsZW0gaXMgdGhhdCBhZnRlciB0aGUga2VybmVsIGlz
IGxvYWRlZCB0byBSQU0gYW5kIGV4dHJhY3RlZCB0aGUgYm9hcmQgaGFuZ3MuDQpJZiB3ZSBkbyBu
b3QgaW5pdCB0aGUgZmIwIGRldmljZSBidXQgc2ltcGx5IGJvb3QgdGhlIGtlcm5lbCBpdCB3b3Jr
cyBmaW5lLg0KVHJ5aW5nICJmYjAuZW5hYmxlPTAiIGJlZm9yZSBib290aW5nIGFsc28gZGlkIG5v
dCBoZWxwLg0KRGlkIGFueW9uZSBlbmNvdW50ZXIgdGhpcyBpc3N1ZSB5ZXQgb3IgYXJlIHdlIGRv
aW5nIHNvbWV0aGluZyB3cm9uZz8NCg0KVGhhbmtzLA0KDQpCb2F6Lg0K

--_000_39A4B204C321D34DA3490E3B119D5A6C68C006F8A2SBS2008wellse_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PCFET0NUWVBFIEhUTUwgUFVCTElDICItLy9XM0MvL0RURCBIVE1MIDQuMCBUUkFOU0lUSU9OQUwv
L0VOIj4KPEhUTUw+CjxIRUFEPgogIDxNRVRBIEhUVFAtRVFVSVY9IkNvbnRlbnQtVHlwZSIgQ09O
VEVOVD0idGV4dC9odG1sOyBDSEFSU0VUPVVURi04Ij4KICA8TUVUQSBOQU1FPSJHRU5FUkFUT1Ii
IENPTlRFTlQ9Ikd0a0hUTUwvMy4zMC4zIj4KPC9IRUFEPgo8Qk9EWT4KSGksPEJSPgo8QlI+Cldo
ZW4gdXNpbmcgdGhlIGlNWDM1IGZyZWVzY2FsZSAzc3RhY2sgd2UgYXJlIGhhdmluZyBzb21lIGlz
c3VlcyB3aXRoIHRoZSBGQiBkcml2ZXIuPEJSPgpPbiBkZXZpY2UgYm9vdCB3ZSBlbmFibGUgdGhl
IGZiIHVzaW5nICZxdW90O2ZiMC5lbmFibGU9MSZxdW90OyBhbmQgdGhlbiB0cnkgdG8gYm9vdCB0
aGUga2VybmVsIGZyb20gbmFuZC48QlI+ClRoZSBwcm9ibGVtIGlzIHRoYXQgYWZ0ZXIgdGhlIGtl
cm5lbCBpcyBsb2FkZWQgdG8gUkFNIGFuZCBleHRyYWN0ZWQgdGhlIGJvYXJkIGhhbmdzLjxCUj4K
SWYgd2UgZG8gbm90IGluaXQgdGhlIGZiMCBkZXZpY2UgYnV0IHNpbXBseSBib290IHRoZSBrZXJu
ZWwgaXQgd29ya3MgZmluZS48QlI+ClRyeWluZyAmcXVvdDtmYjAuZW5hYmxlPTAmcXVvdDsgYmVm
b3JlIGJvb3RpbmcgYWxzbyBkaWQgbm90IGhlbHAuPEJSPgpEaWQgYW55b25lIGVuY291bnRlciB0
aGlzIGlzc3VlIHlldCBvciBhcmUgd2UgZG9pbmcgc29tZXRoaW5nIHdyb25nPzxCUj4KPEJSPgpU
aGFua3MsPEJSPgo8QlI+CkJvYXouCjwvQk9EWT4KPC9IVE1MPgoA

--_000_39A4B204C321D34DA3490E3B119D5A6C68C006F8A2SBS2008wellse_--


--===============2011158090==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2011158090==--
