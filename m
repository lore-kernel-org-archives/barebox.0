Delivery-date: Wed, 16 Jun 2021 14:35:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltUlv-0007eZ-T0
	for lore@lore.pengutronix.de; Wed, 16 Jun 2021 14:35:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltUlu-00046c-Qf
	for lore@pengutronix.de; Wed, 16 Jun 2021 14:35:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=M08vCg37LcF3bicO9dxZ3epNrNa3BylSGXiT+MdITrg=; b=DaOqqWIpBHz/AhvwSs+8kKGh9d
	0p7nb0nF6AJrnKbaZVh8p4zgae09PhpLqB3iVVUwQjlvmD5C32e7bjn9GcZM0qWmP2HjjZCv36tRL
	9dVUJMtbTvBdbsmykYarlKvPtpKVCRbbS0Twww2jji745WXy765RyZQdwxs2GVSrtHjH84kdv+6Ll
	Dhe8D1dpVmdLaJ8VcZGx3CZT/AFAwSimzeoajcG64sy7KdkeAOAlEI5othU99pcG8yjulEN1xA/y8
	KpGvD2GxeICtZ2DpZSNpGJ5GNqIkxLEvCJORDgmXjfRTjLmNoIS9r0/3muVJ2q8eotdMO61jqiIzg
	EkzpsaAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltUkF-006H84-Cn; Wed, 16 Jun 2021 12:34:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltUk9-006H6X-VB
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 12:34:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ltUk7-0003ne-Rm; Wed, 16 Jun 2021 14:34:03 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ltUk7-0003mg-EI; Wed, 16 Jun 2021 14:34:03 +0200
Date: Wed, 16 Jun 2021 14:34:03 +0200
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210616123403.GW9782@pengutronix.de>
References: <FA60DA2B-8C76-4460-8009-88EAB94A0F2C@inside-m2m.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <FA60DA2B-8C76-4460-8009-88EAB94A0F2C@inside-m2m.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:56:56 up 118 days, 15:20, 121 users,  load average: 0.06, 0.12,
 0.11
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210616_053406_049430_B1045AC2 
X-CRM114-Status: GOOD (  31.52  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Compiled in boot environment and dtbo files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGV5IEtvbnN0aSwKCk9uIFdlZCwgSnVuIDE2LCAyMDIxIGF0IDEwOjEwOjU1QU0gKzAyMDAsIEtv
bnN0YW50aW4gS2xldHNjaGtlIHdyb3RlOgo+IERlYXIgY29tbXVuaXR5LAo+IAo+IGFjdHVhbGx5
IEkgd29uZGVyIGhvdyB0byBwcmVwYXJlIGEgcmVzZXQvYm9vdCB1cCBkZWZhdWx0IGJvb3QgZW52
aXJvbm1lbnQgY29tcGlsZWQgaW4uCj4gCj4gSXMgaXQgY29ycmVjdCwgdGhhdCBteSAxc3QgdGFz
ayB0byBhY2hpZXZlIHRoaXMgaXMgdG8gYWRkIGEgbmV3IGZpbGUgaW4gZGVmYXVsdGVudi9kZWZh
dWx0ZW52LTItYmFzZS9ib290Cj4gbGlrZSDigJxpbnNpZGVtMm3igJ0gZm9yIGV4YW1wbGU/IEkg
bWFuYWdlZCB0byBtb2RpZnkgdGhlIGV4aXN0aW5nIOKAnHNk4oCdIGVudHJ5IHRvIGJlIGFibGUg
dG8gYm9vdAoKZGVmYXVsdGVudi9kZWZhdWx0ZW52LTItYmFzZS9ib290IGlzIHRoZSBnZW5lcmlj
IHBsYWNlIHVzZWQgZm9yIGFsbApib2FyZHMuIEFzIHlvdSBhcmUgdXNpbmcgdGhlIGJlYWdsZWJv
bmUgeW91IHNob3VsZCByYXRoZXIgbWFuaXB1bGF0ZQphcmNoL2FybS9ib2FyZHMvYmVhZ2xlYm9u
ZS9kZWZhdWx0ZW52LWJlYWdsZWJvbmUvLiBUaGlzIGRpcmVjdG9yeSBpcwphZGRlZCB3aXRoIGRl
ZmF1bHRlbnZfYXBwZW5kX2RpcmVjdG9yeShkZWZhdWx0ZW52X2JlYWdsZWJvbmUpIHRvIHRoZQpl
bnZpcm9ubWVudCBvbmNlIHdlIGFjdHVhbGx5IGtub3cgd2UgYXJlIHJ1bm5pbmcgb24gdGhlIGJl
YWdsZWJvbmUuCgo+IGFuZCBwZXJzaXN0IHRoaXMsIHRoYXRzIGhvdyBteSBuZXcgZW50cnkgc2hv
dWxkIGxvb2s6Cj4gCj4gIyEvYmluL3NoCj4gCj4gZ2xvYmFsLmJvb3RtLmltYWdlPS9ib290L3VJ
bWFnZQo+IGdsb2JhbC5ib290bS5vZnRyZWU9L2Jvb3QvYW0zMzV4LWJvbmVibGFjay5kdGIKPiBn
bG9iYWwubGludXguYm9vdGFyZ3MuZHluLnJvb3Q9ImNhcGVfZW5hYmxlPWNhcGVtZ3IuZW5hYmxl
X3BhcnRubz1CQi1VQVJUMSxCQi1VQVJUNCBib25lX2NhcGVtZ3IudWJvb3RfY2FwZW1ncl9lbmFi
bGVkPTEgcm9vdD0vZGV2L21tY2JsazBwMiByb290ZnN0eXBlPWV4dDQgcm9vdHdhaXTigJ0KPiAK
CllvdSBjb3VsZCBkbyBpdCB0aGF0IHdheS4gSSBzdWdnZXN0IHVzaW5nCmh0dHBzOi8vc3lzdGVt
ZC5pby9CT09UX0xPQURFUl9TUEVDSUZJQ0FUSU9OLy4gV2l0aCB0aGF0IHlvdSBjYW4gcHV0Cktl
cm5lbCBhbmQgZGV2aWNlIHRyZWUgaW50byB0aGUgcm9vdGZzIGFuZCBzdGFydCB0aGUgd2hvbGUg
dGhpbmcgd2l0aAoiYm9vdCBlbW1jIi4KCj4gCj4gCj4gSSBjYW4gZWRpdCBhbmQgbW9kaWZ5IHRo
b3NlIGZpbGUgYW5kIHBlcnNpc3QgdGhlbSwgd2hlcmUgaXMgdGhpcyBzYXZlZD8gSW4gbXkgY2Fz
ZSBpdCBsb29rcyBtb2RpZmllZCBzdHVmZiBzaG93cwo+IHVwIGluIGJhcmVib3guZW52IGluIG15
IC9ib290LgoKWWVzLiBXaGVyZSB0aGlzIGlzIHN0b3JlZCBkZXBlbmRzIG9uIHRoZSBib2FyZC4g
SW4gY2FzZSBvZiB0aGUKYmVhZ2xlYm9uZSB0aGVyZSdzIGEgRkFUIG9uIHRoZSBlTU1DIGFueXdh
eSwgc28gd2UgdXNlIHRoYXQgdG8gc3RvcmUgdGhlCmVudmlyb25tZW50LiBUaGUgZW52aXJvbm1l
bnQgaXMgYSBiaW5hcnkgZmlsZSwgaXQncyBsaWtlIHRoYXQgYmVjYXVzZQpub3JtYWxseSB5b3Ug
ZG9uJ3QgaGF2ZSBhIEZTIGF2YWlsYWJsZS4KCj4gCj4gRXNwZWNpYWxseSBteSBxdWVzdGlvbiBp
cywgd2hlbiBJIGFkZCBhIGJvb3QgZW50cnkgY29tcGlsZWQgaW4sIHRoZSBib290LmRlZmF1bHQg
dmFyaWFibGUgc2hvdWxkIGdldCB0aGlzIGVudHJ5Cj4gYW5kIHRoaXMgbXVzdCBiZSByZXNldC9k
ZWZhdWx0IGNvbXBpbGVkLWluLCBob3cgaXMgdGhpcyBkb25lPwoKRHVyaW5nIHJ1bnRpbWUgdGhh
dCB3b3VsZCBiZSAibnYgYm9vdC5kZWZhdWx0PWluc2lkZW0ybTsgc2F2ZWVudiIuCldoZW4geW91
IHdhbnQgdG8gbWFrZSB0aGF0IHRoZSBkZWZhdWx0IGNyZWF0ZSBhIGZpbGUKYXJjaC9hcm0vYm9h
cmRzL2JlYWdsZWJvbmUvZGVmYXVsdGVudi1iZWFnbGVib25lL252L2Jvb3QuZGVmYXVsdCB3aXRo
CnRoZSBjb250ZW50ICJpbnNpZGVtMm0iCgo+IAo+IE15IHNlY29uZCBpc3N1ZSBpcywgY3VycmVu
dGx5IEkgbmVlZCB0byBhcHBseSB0d28gZHRibyBmaWxlcyB0byB0aGUga2VybmVsIGJvb3Rpbmcs
IGhvdyBkbyBJIGRvIHRoaXMgaW4gYmFyZWJveD8KClRoZSBjb21tYW5kIGZvciB0aGlzIHdvdWxk
IGJlCgptb3VudCBtbWMxLjEKb2Zfb3ZlcmxheSAvbW50L21tYzEuMS9saWIvZmlybXdhcmUvQkIt
VUFSVDEtMDBBMC5kdGJvCm9mX292ZXJsYXkgL21udC9tbWMxLjEvbGliL2Zpcm13YXJlL0JCLVVB
UlQ0LTAwQTAuZHRibwoKVGhpcyBhc3N1bWVzIHlvdSBoYXZlIHlvdXIgcm9vdGZzIG9uIHRoZSBz
ZWNvbmQgZU1NQyBwYXJ0aXRpb24uIFJlcGxhY2UKbW1jMS4xIHdpdGggc29tZXRoaW5nIGVsc2Ug
d2hlbiB5b3VyIHJvb3RmcyBpcyBlbHNld2hlcmUuCgpXZSBhcmUgY3VycmVudGx5IHdvcmtpbmcg
b24gbW9yZSBjb252ZW5pZW5jZSBhcm91bmQgbG9hZGluZyBvdmVybGF5cywKc29tZXRoaW5nIHRv
IGF1dG9tYXRpY2FsbHkgbG9hZCBkZXNpcmVkIG92ZXJsYXlzIGZyb20gYSBrbm93biBwbGFjZSBp
bgp0aGUgcm9vdGZzIHdoZW4gYm9vdGluZyB3aXRoIGJvb3Rsb2FkZXJzcGVjLCBidXQgd2UgYXJl
IG5vdCB0aGVyZSB5ZXQuCgo+IAo+IGluIHVFbnYudHh0LCBJIGRpZCBub3QgZmluZCBhIHBlbmRh
bnQgaW4gdGhlIGJhcmVib3ggd29ybGQgeWV0LiBUaGUgY2FwZW1nci9zbG90IGtlcm5lbCBjb21t
YW5kbGluZSBzdHVmZiBpcwo+IGRlcHJlY2F0ZWQsIHJpZ2h0PwoKSSBkb24ndCBrbm93LCBJIGhh
dmVuJ3QgZm9sbG93ZWQgd2hhdCBoYXBwZW5lZCB0byB0aGUgY2FwZW1nciBzdHVmZi4KClNhc2No
YQoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB8ClN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAg
ICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8CjMxMTM3IEhpbGRlc2hl
aW0sIEdlcm1hbnkgICAgICAgICAgICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAg
ICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICAr
NDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94
Cg==

