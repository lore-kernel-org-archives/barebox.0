Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YkBTR-0003PU-51
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 13:10:54 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 955EDA00394
 for <barebox@lists.infradead.org>; Mon, 20 Apr 2015 15:11:36 +0200 (CEST)
From: =?UTF-8?q?Stefan=20M=C3=BCller-Klieser?= <s.mueller-klieser@phytec.de>
Date: Mon, 20 Apr 2015 15:10:26 +0200
Message-Id: <1429535427-16243-1-git-send-email-s.mueller-klieser@phytec.de>
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
Subject: [RFC][PATCH 0/1] toolchain conflict for userspace tools
To: barebox@lists.infradead.org

RGVhciBiYXJlYm94ZXJzLAoKSSBhc2sgZm9yIGhlbHAgd2l0aCBhIHByb2JsZW0gSSBhbSBmYWNp
bmcuIElmIHRoZSBidWlsZHN5c3RlbSBjb21waWxlcwpnY2Mgd2l0aCBtdWx0aWxpYiBzdXBwb3J0
LCBnY2MgY2FuIHN1cHBvcnQgdGhlIGZsb2F0IGFiaSBjYWxsY29udmVudGlvbgp0byBiZSBnZW5l
cmF0ZWQgZHluYW1pY2FsbHksIGFzIHlvY3RvIHN0YXJ0aW5nIHdpdGggdjEuNyBkb2VzLiBTbyB3
ZQpkb24ndCBoYXZlIHRoZSB1c3VhbCBkZWZhdWx0ICItLXdpdGgtZmxvYXQ9aGFyZCIsIGJ1dCBn
Y2Mgc2V0cyB0aGUKbWZsb2F0LWFiaSBhdCBydW50aW1lIGZvciBldmVyeSBwYWNrYWdlLgpUaGlz
IHNlZW1zIHRvIHdvcmsgd2VsbCBpbiBnZW5lcmFsLCBlLmcuIG1vZGVybiBhdXRvdG9vbHMgYW5k
IHRoZQpLY29uZmlnIGluZnJhc3RydWN0dXJlIGZvciBrZXJuZWwgYW5kIGJhcmVib3guIEhvd2V2
ZXIgdGhpcyBmYWlscwpmb3IgdGhlIHRhcmdldCB0b29scyBpbiB0aGUgYmFyZWJveCBzY3JpcHQg
Zm9sZGVyLiBUaGV5IG5lZWQgdG8gaGF2ZQp0aGUgLS13aXRoLWZsb2F0PWhhcmQgc2V0LCBvciB0
aGV5IHdpbGwgdHJ5IHRvIGNvbXBpbGUgYXMgc29mdGZsb2F0LgpJIHRoaW5rIHRoZSBnZW5lcmFs
IHNvbHV0aW9uIHdvdWxkIGJlIHRvIGdpdmUgdGhlIHVzZXIgdGhlIHBvc3NpYmlsaXR5CnRvIHJl
ZGVmaW5lIHRoZSBDQyBmb3IgdGhlIHVzZXJzcGFjZSB0b29scywgYXMgdGhpcyBpcyB2ZXJ5IHNw
ZWNpZmljCnRvIHRoZSBlbnZpcm9ubWVudCB3aGVyZSB0aGUgYmFyZWJveCBnZXRzIGNvbXBpbGVk
LgpCdXQgbWF5YmUgc29tZW9uZSB3aXRoIGEgZGVlcGVyIGtub3dsZWRnZSBvZiB0aGUgTWFrZWZp
bGUgaW5mcmFzdHJ1Y3R1cmUKY2FuIHJlY29tbWVuZCBhIGJldHRlciBsb25nIHRlcm0gc29sdXRp
b24uCgpSZWdhcmRzLApTdGVmYW4KClN0ZWZhbiBNw7xsbGVyLUtsaWVzZXIgKDEpOgogIHNjcmlw
dHMvTWFrZWZpbGU6IGFkZCBUQVJHRVRDQwoKIHNjcmlwdHMvTWFrZWZpbGUgfCA0ICsrKy0KIDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCi0tIAoxLjkuMQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3gg
bWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
