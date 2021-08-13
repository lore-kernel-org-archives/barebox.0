Delivery-date: Fri, 13 Aug 2021 17:25:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mEZ3f-0005nK-V3
	for lore@lore.pengutronix.de; Fri, 13 Aug 2021 17:25:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mEZ3b-00056G-8u
	for lore@pengutronix.de; Fri, 13 Aug 2021 17:25:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DO5NGLiUQnIx4xIv/ZKclFQYZVMVQmfe+ueqxWCVn2w=; b=dhlup0EQ8Ghadi
	Y647G5JXPBmOgwv+2Yhc5a+NkfMU3z/bhaT80kDOtPVnhr9x/D0d3/FgTRcyCn00p5824PB9IpDDV
	kAiswQ/sdUHU/IMXmcd34LAfBpabN+svHz3k/tdB1lWYiQVeLeeApwb1zBeXEZTbKekbMzAbWGy6f
	lNHMIIg7lDh3FeK7Lyq39WMJnJIyJO89yH4O2Hkh3J+e1d+e0KAVZGzRtGYgkMS5aO2fQB7cjXic0
	B38ajghW/qf8gZS5U1+WT1TpOGaVIvUTK3XgCaZkcVZeabf10pdDoKpLL4XuawSgY5fvLqmXN6Ap8
	plrvW3x8RYerPbS85Q7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEZ1Z-00CwjN-C7; Fri, 13 Aug 2021 15:23:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEZ1I-00Cwhg-Oc
 for barebox@lists.infradead.org; Fri, 13 Aug 2021 15:22:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mEZ1H-0004lB-7c; Fri, 13 Aug 2021 17:22:51 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mEZ1F-0006UK-Q5; Fri, 13 Aug 2021 17:22:49 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mEZ1F-0003C2-PD; Fri, 13 Aug 2021 17:22:49 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 13 Aug 2021 17:22:42 +0200
Message-Id: <20210813152245.15841-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_082252_844867_DC7483F5 
X-CRM114-Status: GOOD (  23.46  )
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
Cc: rcz@pengutronix.de, Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/3] Support usb booting on i.MX8MP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8sCgpjb21wYXJlZCB0byAoaW1wbGljaXQpIHYxLCB0aGUgZm9sbG93aW5nIGNoYW5nZWQg
aGVyZToKCiAtIGJlIGEgYml0IG1vcmUgY29uc2VydmF0aXZlIGluICJpbXgtdXNiLWxvYWRlcjog
QWRkIHN1cHBvcnQgZm9yCiAgIGkuTVg4TVAiIHJlZ2FyZGluZyBsYXN0X3RyYW5zZmVyOyBmZWVk
YmFjayBieSBTYXNjaGEgSGF1ZXIKCiAtIEFkZCBzdXBwb3J0IGluIFBCTCB0byBiZSBhY3R1YWxs
eSBib290ZWQgdXNpbmcgaW14LXVzYi1sb2FkZXIgKG9ubHkKICAgdGVzdGVkIHRoZSB2ZW5kb3Ig
VS1Cb290IGZvciB2MSksIGFsc28gc2tpcCB0aGUgYmFyZWJveCBoZWFkZXIgKGkuZS4KICAgdGhl
IGZpcnN0ICh1c3VhbGx5KSAweDgwMDAgYnl0ZXMpIGJlZm9yZSB0aGUgSVZUIGhlYWRlciBvbiB1
cGxvYWRlaW5nCgpUaGVyZSBhcmUgdHdvIHRoaW5ncyB0aGF0IHJlc3VsdGVkIGluIGRpc2N1c3Np
b25zIGJldHdlZW4gTHVjYXMsIEFobWFkCmFuZCBtZSBkdXJpbmcgZGV2ZWxvcG1lbnQgb2YgdGhp
cyBzZXJpZXM6CgogLSBPbiBpLk1YOE1NIGFuZCBpLk1YOE1RIGFmdGVyIHRoZSBQQkwgaXMgdXBs
b2FkZWQgaXQncyBmb2xsb3dlZCB1cCBieQogICB0aGUgY29tcGxldGUgaW1hZ2UuIFNvIHRoZSBQ
QkwgaXMgdXBsb2FkZWQgdHdpY2UuIFRoZSBtb3RpdmF0aW9uIGZvcgogICB0aGlzIGJlaGF2aW91
ciB3YXMgdGhhdCB3aGVuIGJvb3RpbmcgZnJvbSBNTUMgbG9hZGluZyBmcm9tIG9mZnNldCAwCiAg
IGlzIGVhc2llciBiZWNhdXNlIGRlcGVuZGluZyBvbiB0aGUgbW9kZSB0aGUgaGFyZHdhcmUgaXMg
aW4gdGhlIG9mZnNldAogICBoYXMgdG8gYmUgc3BlY2lmaWVkIGluIGRpZmZlcmVudCB3YXlzLiBT
byB0byBtYWtlIHRoZSB0d28gbW9kZXMgbW9yZQogICBzaW1pbGFyIHRoZSBQQkwgaXMgbG9hZGVk
IHR3aWNlIGZvciBib3RoIG1vZGVzLgoKICAgSGVyZSBob3dldmVyIGFmdGVyIHRoZSBQQkwgb25s
eSB0aGUgcGlnZ3kgZGF0YSBpcyBzZW50IGJlY2F1c2UgaXQKICAgZmVlbHMgd3JvbmcgZm9yIG1l
IHRvIHNwZW5kIHNvbWUgZXh0cmEgZWZmb3J0IGluIGlteC11c2ItbG9hZGVyIHRvIGRvCiAgIGEg
a2x1ZGdlIGZvciBVU0IganVzdCBiZWNhdXNlIHRoZXJlIGFyZSBzb21lIGRpZmZpY3VsdGllcyB3
aXRoIE1NQy4KCiAgIEFyZ3VtZW50cyBmb3IgdGhpcyBjaG9pY2UgKGFwYXJ0IGZyb20gdGhhdCBh
bHJlYWR5IGJlaW5nIGNvbXBsZXRlZAogICBhbmQgdGVzdGVkIDotKSBhcmU6CgogICAtIE5vIGR1
cGxpY2F0aW9uIG9mIGRhdGEgdGhhdCBpcyBvdmVyd3JpdHRlbiBhbnlob3cKICAgLSBCZXR0ZXIg
aW50ZXJvcGVyYWJpbGl0eSB3aXRoIFUtQm9vdC9tZmctdG9vbHMKICAgICBXaGlsZSB0aGlzIGlz
IHVzdWFsbHkgbm90IG91ciBmb2N1cyBJIGNvbnNpZGVyIGl0IHF1aXRlIGFubm95aW5nCiAgICAg
dGhhdCB0aGVyZSBhcmUgYXQgbGVhc3QgdGhyZWUgaW1wbGVtZW50YXRpb25zIG9mIGlteC11c2It
bG9hZGVyIGFuZAogICAgIGRlcGVuZGluZyBvbiB3aGljaCBtYWNoaW5lIGFuZCBib290bG9hZGVy
IHlvdSB1c2UgeW91IGhhdmUgdG8gcGljawogICAgIHRoZSByaWdodCBpbXBsZW1lbnRhdGlvbi4g
V2l0aCB0aGUgbG9uZ3Rlcm0gZ29hbCB0byBoYXZlCiAgICAgaW14LXVzYi1sb2FkZXIgYW5kIGJh
cmVib3ggYXZhaWxhYmxlIGluIERlYmlhbiBzb21lCiAgICAgaW50ZXJvcGVyYWJpbGl0eSB3b3Vs
ZCBiZSBuaWNlLgoKICAgSSBxdWlja2x5IHRyaWVkIHVzaW5nIHRoZSBib290IHJvbSBsb2FkIGlt
YWdlIHN1cHBvcnQgd2hlbiBib290aW5nCiAgIGZyb20gU0QsIGJ1dCBpdCBkaWRuJ3Qgd29yayBv
dXQgb2YgdGhlIGJveCBhbmQgSSBkaWRuJ3QgZGVidWcgdGhhdC4KICAgSG93ZXZlciBJIGltYWdp
bmUgdGhhdCBpbiB0aGlzIG1vZGUgaXQgd291bGQgYWxzbyBiZSBtb3JlIG5hdHVyYWwgdG8KICAg
bm90IGV4cGVjdCB0aGUgUEJMIHR3aWNlLgoKICAgU3dpdGNoaW5nIHRvIHRoZSBkdXBsaWNhdGVk
IG9wZXJhdGlvbiBtb2RlIHdvdWxkIG1ha2UgaW14LXVzYi1sb2FkZXIKICAgYSBiaXQgbW9yZSBj
b21wbGljYXRlZCAoYmVjYXVzZSBpbiB0aGUgTVhTIGNvZGUgcGF0aCB0aGUgZHVwbGljYXRpb24K
ICAgaXNuJ3QgYXZhaWxhYmxlIHlldCksIGluIHJldHVybiB3ZSdkIHNhdmUgYW4gb2Zmc2V0IGNh
bGN1bGF0aW9uIGluCiAgIHRoZSBQQkwuCgogICBJIHNob3VsZCBiZSBwb3NzaWJsZSB0byBsb29r
IGF0IHRoZSBmaXJzdCBwb3N0LVBCTCBkYXRhIGNodW5rIGNvbWluZwogICBpbiB2aWEgVVNCIGFu
ZCBqdWRnZSB3aGljaCBtb2RlIG9mIG9wZXJhdGlvbiBpcyB1c2VkIGFuZCBiZWhhdmUKICAgYWNj
b3JkaW5nbHkuIElmIHRoaXMgaXMgY29uc2lkZXJlZCBhIGdvb2QgaWRlYSBJIGNhbiBjcmVhdGUg
YSBwYXRjaAogICBmb3IgdGhhdC4KCiAtIFdoZW4gYm9vdGluZyB2aWEgVVNCIHRoZSBib290IHNv
dXJjZSBpcyBpZGVudGlmaWVkIGFzICJzZXJpYWwiLiBJCiAgIHdvdWxkIGV4cGVjdCB0aGF0IHRo
ZSBzZW1hbnRpYyBvZiB0aGF0IGlzIHJzMjMyIGFuZCBub3QgVVNCLiBUaGUKICAgc291cmNlIG9m
IHRoaXMgY29uZnVzaW9uIGlzIHByb2JhYmx5IHRoYXQgdGhlIFJlZmVyZW5jZSBNYW51YWwgY2Fs
bHMKICAgdGhlIFVTQiAgYm9vdCBtb2RlICJVU0IgU2VyaWFsIERvd25sb2FkIGJvb3QiLiBJIHN0
dWNrIHRvCiAgIEJPT1RTT1VSQ0VfU0VSSUFMIGhlcmUgZm9yIGNvbnNpc3RlbmN5LiBJZiBpdCdz
IG5vdCBvbmx5IG1lIHdobyB3b3VsZAogICBjb25zaWRlciB1c2luZyBCT09UU09VUkNFX1VTQiBp
bnN0ZWFkIGEgZml4IHRoaXMgc2hvdWxkIGJlIGNoYW5nZWQKICAgY29uc2lzdGVudGx5IGZvciBh
bGwgaS5NWCBwbGF0Zm9ybXMuCiAgIEFobWFkIHBvaW50ZWQgb3V0IHRoYXQgdGhpcyBtaWdodCBi
cmVhayBiYXJlYm94IHNoZWxsIHNjcmlwdHMuCgpVd2UgS2xlaW5lLUvDtm5pZyAoMyk6CiAgaW14
OG1wLWV2azogQWRkIHN1cHBvcnQgZm9yIGJvb3RpbmcgdmlhIFVTQgogIGlteC11c2ItbG9hZGVy
OiBEcm9wIG5lYXJseSB1bnVzZWQgc3RydWN0IHVzYl9pZAogIGlteC11c2ItbG9hZGVyOiBBZGQg
c3VwcG9ydCBmb3IgaS5NWDhNUAoKIGFyY2gvYXJtL2JvYXJkcy9ueHAtaW14OG1wLWV2ay9sb3ds
ZXZlbC5jIHwgIDI3ICsrKysrCiBhcmNoL2FybS9tYWNoLWlteC9ib290LmMgICAgICAgICAgICAg
ICAgICB8ICAgNCArLQogaW5jbHVkZS9hc20tZ2VuZXJpYy9zZWN0aW9ucy5oICAgICAgICAgICAg
fCAgIDEgKwogc2NyaXB0cy9pbXgvaW14LXVzYi1sb2FkZXIuYyAgICAgICAgICAgICAgfCAxMzEg
KysrKysrKysrKysrLS0tLS0tLS0tLQogNCBmaWxlcyBjaGFuZ2VkLCAxMDMgaW5zZXJ0aW9ucygr
KSwgNjAgZGVsZXRpb25zKC0pCgoKYmFzZS1jb21taXQ6IDcyNDI0ZmQwNTdkMTM1ZWMwZTQxMTM5
ZmU0Y2I1NzQwNDcxZDMzYTUKLS0gCjIuMzAuMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2JhcmVib3gK

