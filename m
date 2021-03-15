Delivery-date: Mon, 15 Mar 2021 09:07:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLiG0-0000YC-AV
	for lore@lore.pengutronix.de; Mon, 15 Mar 2021 09:07:20 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLiFz-0007if-Dr
	for lore@pengutronix.de; Mon, 15 Mar 2021 09:07:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JZnfd9Wj18KJUzIC9HVoc2MqJJAOECND3KN4I9tNC2w=; b=cqj8hNubW0sicuL8UYH+AH98A
	KKGbTbhc2TfdhXbY/TLeOUHb+vsZfYSwMg23aRwLnDynXHIB6Hf2jh04GoT6USRz5F91Jf6xXXGvV
	UPjWjFtXpujvxTqF4iatD5Teh4oiWlM+/+nk6EY4KBaGkY214p9Ok5/au7AMPUe8IHMN7wyK15hnm
	l5fmit738K/BT+7Yr1hwXMSNkIICOKrhNijR5OQwM8h3HaPabI6w5SXMxJoudxBprto2wzdXXeBbo
	w58BDwhCPJRvA9piSXYHiqkTldzcjHegi/Z9U2RwwSpP+UJJKKevRxSjNUUb3wHsAUOdzuPz6vnn/
	L0tvanFaQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLiF2-00FC1E-22; Mon, 15 Mar 2021 08:06:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLiEq-00FC0B-9T
 for barebox@lists.infradead.org; Mon, 15 Mar 2021 08:06:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLiEp-0007S9-RV; Mon, 15 Mar 2021 09:06:07 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLiEp-00055j-Hi; Mon, 15 Mar 2021 09:06:07 +0100
Date: Mon, 15 Mar 2021 09:06:07 +0100
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210315080607.GH23724@pengutronix.de>
References: <20210312105444.22838-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210312105444.22838-1-r.czerwinski@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:05:58 up 25 days, 11:29, 71 users,  load average: 0.18, 0.40, 0.26
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_080608_684053_221B4D29 
X-CRM114-Status: GOOD (  23.93  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] scripts: imx-image: add error handling for pwrite
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gRnJpLCBNYXIgMTIsIDIwMjEgYXQgMTE6NTQ6NDRBTSArMDEwMCwgUm91dmVuIEN6ZXJ3aW5z
a2kgd3JvdGU6Cj4gRml4ZXMgdGhlIGZvbGxvd2luZyBjb21waWxlciB3YXJuaW5nOgo+IAo+ICAg
c2NyaXB0cy9pbXgvaW14LWltYWdlLmM6IEluIGZ1bmN0aW9uIOKAmG1haW7igJk6Cj4gICBzY3Jp
cHRzL2lteC9pbXgtaW1hZ2UuYzo5ODg6Mzogd2FybmluZzogaWdub3JpbmcgcmV0dXJuIHZhbHVl
IG9mIOKAmHB3cml0ZeKAmSBkZWNsYXJlZCB3aXRoIGF0dHJpYnV0ZSDigJh3YXJuX3VudXNlZF9y
ZXN1bHTigJkgWy1XdW51c2VkLXJlc3VsdF0KPiAgICAgOTg4IHwgICBwd3JpdGUob3V0ZmQsIGJi
X2hlYWRlciwgc2l6ZW9mX2JiX2hlYWRlciwgMCk7Cj4gICAgICAgICB8ICAgXn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gCj4gU2lnbmVkLW9mZi1ieTogUm91
dmVuIEN6ZXJ3aW5za2kgPHIuY3plcndpbnNraUBwZW5ndXRyb25peC5kZT4KPiAtLS0KPiAgc2Ny
aXB0cy9pbXgvaW14LWltYWdlLmMgfCA5ICsrKysrKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgNyBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKQXBwbGllZCwgdGhhbmtzCgpTYXNjaGEKCj4g
Cj4gZGlmZiAtLWdpdCBhL3NjcmlwdHMvaW14L2lteC1pbWFnZS5jIGIvc2NyaXB0cy9pbXgvaW14
LWltYWdlLmMKPiBpbmRleCBmNWU4OWQwN2E2Li41N2Q3NzdhMDY1IDEwMDY0NAo+IC0tLSBhL3Nj
cmlwdHMvaW14L2lteC1pbWFnZS5jCj4gKysrIGIvc2NyaXB0cy9pbXgvaW14LWltYWdlLmMKPiBA
QCAtOTg0LDggKzk4NCwxMyBAQCBpbnQgbWFpbihpbnQgYXJnYywgY2hhciAqYXJndltdKQo+ICAJ
CXh3cml0ZShvdXRmZCwgYnVmLCBoZWFkZXJfbGVuKTsKPiAgCX0KPiAgCj4gLQlpZiAoYWRkX2Jh
cmVib3hfaGVhZGVyKQo+IC0JCXB3cml0ZShvdXRmZCwgYmJfaGVhZGVyLCBzaXplb2ZfYmJfaGVh
ZGVyLCAwKTsKPiArCWlmIChhZGRfYmFyZWJveF9oZWFkZXIpIHsKPiArCQlyZXQgPSBwd3JpdGUo
b3V0ZmQsIGJiX2hlYWRlciwgc2l6ZW9mX2JiX2hlYWRlciwgMCk7Cj4gKwkJaWYgKHJldCA8IDAp
IHsKPiArCQkJZnByaW50ZihzdGRlcnIsICJwd3JpdGUgZmFpbGVkOiAlc1xuIiwgc3RyZXJyb3Io
ZXJybm8pKTsKPiArCQkJZXhpdCgxKTsKPiArCQl9Cj4gKwl9Cj4gIAo+ICAJeHdyaXRlKG91dGZk
LCBpbmZpbGUsIGluc2l6ZSk7Cj4gIAo+IC0tIAo+IDIuMzAuMQo+IAo+IAo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gYmFyZWJveCBtYWlsaW5nIGxp
c3QKPiBiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gKCi0tIApQZW5ndXRyb25peCBlLksuICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfApTdGV1
ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1
dHJvbml4LmRlLyAgfAozMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55ICAgICAgICAgICAgICAgICAg
fCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBI
UkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5n
IGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

