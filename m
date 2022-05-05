Delivery-date: Thu, 05 May 2022 10:03:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWSW-002UQf-Cq
	for lore@lore.pengutronix.de; Thu, 05 May 2022 10:03:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWSU-0007kb-NM
	for lore@pengutronix.de; Thu, 05 May 2022 10:03:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5hxcj81Lt3ZOK9/4s2J2r9t3QarWkVvycqKHZvrkYh4=; b=Eb9TsAaprGGoo2
	qwQm/9WVUUJ9B1ypI0q9Oo+jdFLOzRWd9q3LPwg0IdAfM7PwSlFnppKQ5b7etiaNgguU04djcDLzg
	TO12LC/MrziJsIPGrcp274994fSWoLlezcdiHB2NX/YROdC3g04TvOPDDgzUdZT6TI5aKuj2k8VSd
	if91DunnDk/hMViDVgT//4DtJTfU34dXmfEf/mOPSS0dHVmMq3lTrUWMZDQ4z9PvOXpuj6hA4VsfD
	ECUw7wXrgX4x0RkkKnC+UlAO4GvAC0vf8AJDLxidOJPKYaM7MMJHrFssC0s6id/gB0H21Bzhe14FH
	X37ixRhE7UALTTm76Now==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmWR8-00EWfh-Ny; Thu, 05 May 2022 08:02:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmWR2-00EWbD-AV
 for barebox@lists.infradead.org; Thu, 05 May 2022 08:02:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQx-0006ss-SV; Thu, 05 May 2022 10:01:59 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQy-000TOA-Dj; Thu, 05 May 2022 10:01:59 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQv-004had-8P; Thu, 05 May 2022 10:01:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ukl@pengutronix.de, =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>,
 ore@pengutronix.de
Date: Thu,  5 May 2022 10:01:37 +0200
Message-Id: <20220505080152.1068424-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_010204_403590_6021CB8A 
X-CRM114-Status: GOOD (  14.64  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 00/15] ARM: rpi: add basic Raspberry Pi 4 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SnVzdCBiYXNpYyBzdXBwb3J0LCBzbyB3ZSBnZXQgYSBzaGVsbCBvbiBtaW5pLXVhcnQgYW5kIFNE
CndvcmtpbmcuIE5lZWRzIG1vcmUgd29yayBmb3IgVVNCIGFuZCBFdGhlcm5ldCwgYnV0IEknbGwg
bGVhdmUgdGhhdAp0byBvdGhlcnMgbm93IHRoYXQgdGhlIGluaXRpYWwgaHVyZGxlIGlzIG92ZXJj
b21lLgoKSSB0ZXN0ZWQgdGhpcyBzZXJpZXMgb24gUmFzcGJlcnJ5IFBpIDNiIChib3RoIDMyLWJp
dCBhbmQgbmV3bHkKYWRkZWQgNjQtYml0IHN1cHBvcnQpIGFuZCBSYXNwYmVycnkgUGkgNGIgKGJv
dGggMzIvNjQtYml0KS4KCkBPbGVrc2lqLCBjb3VsZCB5b3UgZ2l2ZSB0aGlzIGEgdGVzdCBvbiBS
YXNwYmVycnkgUGkgMiBhcyB3ZWxsPwoKYmFyZWJveC1kdC0ybmQuaW1nIGlzIHRoZSBpbWFnZSB0
byB1c2UgZm9yIGFsbCBjb25maWd1cmF0aW9ucy4KYmFyZWJveCBkaWRuJ3Qgc3RhcnQgdXAgKG9y
IGF0IGxlYXN0IHNlcmlhbCB3YXMgc2lsZW50KSB3aXRoCkRhaWx5IGJ1aWx0IERlYmlhbiByYXNw
aV80X2J1bGxzZXllLmltZy4gV29ya2VkIGZpbmUgdGhvdWdoCndpdGggZmlybXdhcmUgaW4gMjAy
Mi0wNC0wNC1yYXNwaW9zLWJ1bGxzZXllLWFybTY0LWxpdGUuaW1nLgpJZiBpbiBkb3VidCwgdXNl
IGZpcm13YXJlIGRlc2NyaWJlZCBpbiBiYXJlYm94IGRvY3VtZW50YXRpb24uCgpCb290IGxvZzoK
CiAgYmFyZWJveCAyMDIyLjA0LjAtMDAxMDEtZzVmZWEzZTg5NzliMiAjMjA1IFR1ZSBNYXkgMyAw
OTozMzo1NCBDRVNUIDIwMjIKCgogIEJvYXJkOiBSYXNwYmVycnkgUGkgNCBNb2RlbCBCIFJldiAx
LjEKICBEZWVwIHByb2JlIHN1cHBvcnRlZCBkdWUgdG8gcmFzcGJlcnJ5cGksNC1tb2RlbC1iCiAg
YmNtMjgzNV9tY2kgZmUzMDAwMDAubW1jQDdlMzAwMDAwLm9mOiByZWdpc3RlcmVkIGFzIG1jaTAK
ICBXQVJOSU5HOiBkd2MyIGZlOTgwMDAwLnVzYkA3ZTk4MDAwMC5vZjogZHdjMl9jb3JlX3Jlc2V0
OiBUaW1lb3V0ISBXYWl0aW5nIGZvciBDb3JlIFNvZnQgUmVzZXQKICBFUlJPUjogZHdjMiBmZTk4
MDAwMC51c2JAN2U5ODAwMDAub2Y6IHByb2JlIGZhaWxlZDogQ29ubmVjdGlvbiB0aW1lZCBvdXQK
ICBXQVJOSU5HOiBiY20yODM1X21jaSBmZTM0MDAwMC5tbWNAN2UzNDAwMDAub2Y6IEZhaWxlZCB0
byBnZXQgJ3ZtbWMnIHJlZ3VsYXRvciAoaWdub3JlZCkuCiAgYmNtMjgzNV9tY2kgZmUzNDAwMDAu
bW1jQDdlMzQwMDAwLm9mOiByZWdpc3RlcmVkIGFzIG1jaTEKICBFUlJPUjogdHJhbnNsYXRpb24g
b2YgRE1BIGFkZHJlc3MoNDAwMDAwMDAwKSB0byBDUFUgYWRkcmVzcyBmYWlsZWQgbm9kZShwY2ll
QDdkNTAwMDAwKQogIG1hbGxvYyBzcGFjZTogMHgxZDhmYzgwMCAtPiAweDNiMWY4ZmZmIChzaXpl
IDQ3MyBNaUIpCiAgbWNpMTogZGV0ZWN0ZWQgU0QgY2FyZCB2ZXJzaW9uIDIuMAogIG1jaTE6IHJl
Z2lzdGVyZWQgZGlzazAKICBlbnZpcm9ubWVudCBsb2FkIC9ib290L2JhcmVib3guZW52OiBObyBz
dWNoIGZpbGUgb3IgZGlyZWN0b3J5CiAgTWF5YmUgeW91IGhhdmUgdG8gY3JlYXRlIHRoZSBwYXJ0
aXRpb24uCgpBaG1hZCBGYXRvdW0gKDEzKToKICBQQkw6IGZkdDogZml4IC9tZW1vcnkgcGFyc2lu
ZyB3aGVuICNhZGRyZXNzLWNlbGxzICE9ICNzaXplLWNlbGxzCiAgc2VyaWFsOiBuczE2NTUwOiBy
cGk6IHJlbW92ZSB1bmdhdGluZyBub3cgZG9uZSBieSBwcm9wZXIgY2xrIGRyaXZlcgogIEFSTTog
Y3B1OiBwcmV2ZW50IHJlY3Vyc2l2ZSBkZXBlbmRlbmNpZXMgdmlhIENQVV9TVVBQT1JUU182NEJJ
VF9LRVJORUwKICBBUk06IHJwaTogYWRkIFJhc3BiZXJyeSBQaSAzIDY0LWJpdCBidWlsZCBzdXBw
b3J0CiAgQVJNOiBycGk6IHJwaTM6IGRpc2FsbG93IE1NVV9FQVJMWSAmJiA2NEJJVAogIGNsazog
cnBpOiBhZGQgUmFzcGJlcnJ5IFBpIDQgc3VwcG9ydAogIHNlcmlhbDogbnMxNjU1MDogcnBpOiBz
a2lwIGJhdWRyYXRlIGNoYW5nZXMgZm9yIGJjbTI3MTEKICBjbG9ja3NvdXJjZTogYmNtMjgzNTog
YnVtcCBiZWxvdyBhcmNoaXRlY2VkIHRpbWVyIGZvciBBQXJjaDY0CiAgQVJNOiBycGk6IGFkZCBS
YXNwYmVycnkgUGkgNCBzdXBwb3J0CiAgQVJNOiBycGk6IGFkZCBkZWJ1Z19sbCBzdXBwb3J0IGZv
ciBSYXNwYmVycnkgUGkgNAogIEFSTTogcnBpOiBhZGQgaGV1cmlzdGljIGZvciBza2lwcGluZyBk
ZXRlY3Rpb24gb2YgU0RJTyBjYXJkCiAgZG9jOiBiY20yODN4OiBhZGQgaW5pdGlhbCBkb2NzIGZv
ciBSYXNwYmVycnkgUGkgNCBzdXBwb3J0CiAgZG9jOiBiY20yODN4OiByZWZlcmVuY2UgbmV3ZXIg
ZmlybXdhcmUKClV3ZSBLbGVpbmUtS8O2bmlnICgyKToKICBvZjogYWRkcmVzczogZml4IHByaW50
aW5nIG9mIE9GIG5vZGUgbmFtZSBpbiBlcnJvciBtZXNzYWdlCiAgbWNpOiBiY20yODM1OiBhZGQg
YmNtMjcxMS1lbW1jMiAoUnBpNCkgc3VwcG9ydAoKIERvY3VtZW50YXRpb24vYm9hcmRzL2JjbTI4
MzUucnN0ICAgICAgICAgICAgICB8ICA2NSArKysrKysrKy0tCiBhcmNoL2FybS9LY29uZmlnICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDQgKwogYXJjaC9hcm0vYm9hcmRzL3Jhc3Bi
ZXJyeS1waS9ycGktY29tbW9uLmMgICAgIHwgIDUxICsrKysrKystCiBhcmNoL2FybS9jb25maWdz
L3JwaV92OGFfZGVmY29uZmlnICAgICAgICAgICAgfCAxMTEgKysrKysrKysrKysrKysrKysrCiBh
cmNoL2FybS9jcHUvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDEgLQogYXJj
aC9hcm0vZHRzL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKIGFyY2gv
YXJtL2R0cy9iY20yNzExLXJwaS00LWIuZHRzICAgICAgICAgICAgICB8ICAgMSArCiBhcmNoL2Fy
bS9tYWNoLWJjbTI4M3gvS2NvbmZpZyAgICAgICAgICAgICAgICAgfCAgMjggKysrKy0KIGFyY2gv
YXJtL21hY2gtYmNtMjgzeC9pbmNsdWRlL21hY2gvZGVidWdfbGwuaCB8ICAyMSArKysrCiBhcmNo
L2FybS9tYWNoLWJjbTI4M3gvaW5jbHVkZS9tYWNoL21ib3guaCAgICAgfCAgIDQgKwogYXJjaC9h
cm0vbWFjaC1iY20yODN4L2luY2x1ZGUvbWFjaC9wbGF0Zm9ybS5oIHwgICA1ICstCiBhcmNoL2Fy
bS9tYWNoLWJjbTI4M3gvbWJveC5jICAgICAgICAgICAgICAgICAgfCAgIDIgKy0KIGNvbW1vbi9L
Y29uZmlnICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgNyArKwogZHJpdmVycy9j
bGsvY2xrLXJwaS5jICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDQyICsrKysrLS0KIGRyaXZl
cnMvY2xvY2tzb3VyY2UvYmNtMjgzNS5jICAgICAgICAgICAgICAgICB8ICAgMyArLQogZHJpdmVy
cy9tY2kvbWNpLWJjbTI4MzUuYyAgICAgICAgICAgICAgICAgICAgIHwgICA0ICstCiBkcml2ZXJz
L29mL2FkZHJlc3MuYyAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDQgKy0KIGRyaXZlcnMv
c2VyaWFsL3NlcmlhbF9uczE2NTUwLmMgICAgICAgICAgICAgICB8ICAxOCArKy0KIGltYWdlcy9N
YWtlZmlsZS5iY20yODN4ICAgICAgICAgICAgICAgICAgICAgICB8ICAgNiArCiBwYmwvZmR0LmMg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDIgKy0KIDIwIGZpbGVzIGNo
YW5nZWQsIDM0MSBpbnNlcnRpb25zKCspLCAzOSBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEw
MDY0NCBhcmNoL2FybS9jb25maWdzL3JwaV92OGFfZGVmY29uZmlnCiBjcmVhdGUgbW9kZSAxMDA2
NDQgYXJjaC9hcm0vZHRzL2JjbTI3MTEtcnBpLTQtYi5kdHMKCi0tIAoyLjMwLjIKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcg
bGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

