Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1StdYI-0006RB-Ej
 for barebox@lists.infradead.org; Tue, 24 Jul 2012 11:45:25 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id C263ABF0E8
 for <barebox@lists.infradead.org>; Tue, 24 Jul 2012 13:44:42 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Tue, 24 Jul 2012 13:44:42 +0200
Message-Id: <1343130282-32096-1-git-send-email-t.gamez@phytec.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] scripts/checkpatch.pl: reset rpt_cleaners warnings
To: barebox@lists.infradead.org

V2hlbiBydW5uaW5nIGNoZWNrcGF0Y2ggYWdhaW5zdCBtdWx0aXBsZSBwYXRjaGVzIGFuZCBvbmUK
b2YgdGhlbSBoYXMgYSB3aGl0ZXNwYWNlIGlzc3VlLCBhbGwgZm9sbG93aW5nIHBhdGNoZXMgd2ls
bApjb250YWluIHRoZSBzYW1lIG5vdGUsIGV2ZW4gaWYgdGhleSBhcmUgb2suCgpUaGlzIHBhdGNo
IGlzIHRha2VuIGZyb20gdGhlIGxpbnV4IGtlcm5lbDoKCnNjcmlwdHMvY2hlY2twYXRjaC5wbDog
cmVzZXQgcnB0X2NsZWFuZXJzIHdhcm5pbmdzCmIwNzgxMjE2ZTdiZmY2OGFjYTJmYmNkMjc1YjRk
Yjc1MzFkMWUyMmYKV3JpdHRlbiBieSBNaWtlIEZyeXNpbmdlciA8dmFwaWVyQGdlbnRvby5vcmc+
CgpTaWduZWQtb2ZmLWJ5OiBUZXJlc2EgR8OhbWV6IDx0LmdhbWV6QHBoeXRlYy5kZT4KLS0tCiBz
Y3JpcHRzL2NoZWNrcGF0Y2gucGwgfCAgICAxICsKIDEgZmlsZXMgY2hhbmdlZCwgMSBpbnNlcnRp
b25zKCspLCAwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NjcmlwdHMvY2hlY2twYXRjaC5w
bCBiL3NjcmlwdHMvY2hlY2twYXRjaC5wbAppbmRleCAxNTFjNTNhLi4wZDk0Zjk4IDEwMDc1NQot
LS0gYS9zY3JpcHRzL2NoZWNrcGF0Y2gucGwKKysrIGIvc2NyaXB0cy9jaGVja3BhdGNoLnBsCkBA
IC0yOTM0LDYgKzI5MzQsNyBAQCBzdWIgcHJvY2VzcyB7CiAJCWlmICgkcnB0X2NsZWFuZXJzKSB7
CiAJCQlwcmludCAiTk9URTogd2hpdGVzcGFjZSBlcnJvcnMgZGV0ZWN0ZWQsIHlvdSBtYXkgd2lz
aCB0byB1c2Ugc2NyaXB0cy9jbGVhbnBhdGNoIG9yXG4iOwogCQkJcHJpbnQgIiAgICAgIHNjcmlw
dHMvY2xlYW5maWxlXG5cbiI7CisJCQkkcnB0X2NsZWFuZXJzID0gMDsKIAkJfQogCX0KIAotLSAK
MS43LjAuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
