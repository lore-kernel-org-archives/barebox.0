Delivery-date: Wed, 16 Jun 2021 00:37:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltHgy-00011L-Ms
	for lore@lore.pengutronix.de; Wed, 16 Jun 2021 00:37:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltHgw-0006WZ-VN
	for lore@pengutronix.de; Wed, 16 Jun 2021 00:37:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pdmtcl5/E93eBu9xT1Qb/zCCSuObT4kbersqEvDohh8=; b=4W9r4mzLZjbo75
	ciwMNGoRtUAEXgOpg9v4L8AAt5K6ORT4U7wVgiI4ZSR3DyexW7e0umI1cJKtt497nQVnFiiXDlHTI
	vnAPmZsYhK517rQsXRDKg2iYpYpP1ACuzN+e1vUO9acBg7VDOHY3iBDYeOD1VN2CHMIqzZhZ2S9oe
	awRjmaQzCtWF65Rf/7WHEGIrF/YfWE1roDn33UJ/aSQkTNy2fnF3h62ttgjbiiW8CVl5nc1sOgU3Z
	NXZBpu5NH6e0L2InYd0guDh8tc5TdbGKwjMKPbfCe9cMoZPNDVSel0ReRerbZW0TTe7MKz4yBTqG7
	dwqKpK1GwEiaeNX2u9IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltHfC-003bOe-Oa; Tue, 15 Jun 2021 22:36:07 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltFcd-002m9T-Hz
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 20:25:21 +0000
Received: by mail-lj1-x22b.google.com with SMTP id x14so477350ljp.7
 for <barebox@lists.infradead.org>; Tue, 15 Jun 2021 13:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=gbadTkUTXTlOa5Y1Owo9+mWJMAUH8kiHdh46vjdcKeE=;
 b=G29mTUbK0Bc2hkvW1vIaqtkMwL6zbZBTWo5e3DMY61YOp57QRWTtBxXZ1LBBh24yvZ
 RoVfFxM/IvsCDqXcWcKfBsudu1H/pixT/Q3FFQEA2Abj/EGdUrfx1tUwExj0j34ZegbP
 +HZRD8YXqL/+LMfD5CWzX5xxOMajJ+SefRerf+4OmbKWERwi8EJCLs9+Yk7on4oD4Y0Y
 9/qSYPx+vqWQgIVZMGl5g6mTZpMoz7uIWTcY4jXzm3MEvyjwzd7Y7bhDzZLpVjurMY3F
 haFQdTSfPTqfCJVlfSSVpslWLh8FctKbqK5RWkC51FKd8/UqSpPBnoBk3AyFp5MpCHl7
 dJdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=gbadTkUTXTlOa5Y1Owo9+mWJMAUH8kiHdh46vjdcKeE=;
 b=UiBxUjr64vTh0LFMc1JLJQmH3R0e9Ul5i6IKLpSOwdJefc5y9HLVmnpVaALAStwKYp
 dwqKlbx0KnzqY8KXJUlltP5+/s86xkOA1RPyB8sLFYMqS91Aem1IPOfSgYrMb/eswtVz
 xyBWMkqeoZC0AupC/U88+PbhFPK8g3OYwNXQVGEjfmAAWhW8oitKpENsaQ+ZvfPmV1CT
 tBAahQTJfnwHvuNoxocmDnMrgNibNH+CmWd1wEGPneriaq1F0czYRUrXrkt30bxYxLIz
 VWZzyaryOgaP3s5Wl6U1d0/MTe13soqdtfbZ9tYA/e2NCRIKA7N7RtMY0KnBR/QzvFZ+
 XmwQ==
X-Gm-Message-State: AOAM530jOyf30zQNhybmezhp8hJrRvwaNUGWyCxPMPhfrL1ZlycUxQwv
 2pLGX6ulaDqR41UAJ5uryBfG8cIGEXdZ9fUmcYnYSchqajIDdQ==
X-Google-Smtp-Source: ABdhPJwW+XuaFwyJrIrrWX1j90b7K0pJd9Wy8F9A1dZ+InNFEugbTnF/otGEEkBJemaZ4EE8hRAyspvnJNbxGAyWN/o=
X-Received: by 2002:a2e:9194:: with SMTP id f20mr1217634ljg.373.1623788717472; 
 Tue, 15 Jun 2021 13:25:17 -0700 (PDT)
MIME-Version: 1.0
References: <20210607090951.107269-1-andrej.picej@norik.com>
 <20210607090951.107269-2-andrej.picej@norik.com>
 <CAMHeXxNtHQdWBZdDc0fXJ1Q2Fj-=H2anmFGosKGrV12Ux1cncg@mail.gmail.com>
 <60b1751e-8409-a2a5-a5f8-ef4107d6db9d@norik.com>
 <CAMHeXxPNjNYmBdvob3LnAN36ccq8nT0UOjPtV0PGUeFO-PwDxw@mail.gmail.com>
 <79d8549e-fa99-6412-cbb0-dfce46083060@norik.com>
 <CAMHeXxNttLL84+xoJXALcK7dnBSUVJUDj9fR=wUBEfSg8eG7=A@mail.gmail.com>
 <20210615143535.GJ9782@pengutronix.de>
In-Reply-To: <20210615143535.GJ9782@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Tue, 15 Jun 2021 13:25:06 -0700
Message-ID: <CAMHeXxN60A5SEC=wHdB+4AMsTh56CDstn2KAj2ZYHLcBK8T3Eg@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Andrej Picej <andrej.picej@norik.com>,
 Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_132519_846779_7F98FFEA 
X-CRM114-Status: GOOD (  31.35  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] ARM: i.MX: xload: consider ECC strength when reading
 page
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gVHVlLCBKdW4gMTUsIDIwMjEgYXQgNzozNSBBTSBTYXNjaGEgSGF1ZXIgPHNoYUBwZW5ndXRy
b25peC5kZT4gd3JvdGU6Cj4gPgo+ID4gSSBkbyBub3Qgc2VlIGFueSBpbXggbmFuZCB4bG9hZGVy
IHVzZXJzIGF0IGFsbCBpbiBtYWlubGludXggQmFyZWJveAo+ID4gY29kZWJhc2UuICBXaGljaCBp
cyBhbm5veWluZywgc2luY2UgSSdtIHRyeWluZyB0byBib290IGJhcmVib3ggZnJvbQo+ID4gTkFO
RCBvbiBpTVg2VUxMIGFuZCB0aGVyZSBhcmUgbm8gYm9hcmRzIGluIGJhcmVib3ggdGhhdCBkbyB0
aGlzLiAgU28gSQo+ID4gaGF2ZSB0byBkbyBpdCBmcm9tIHNjcmF0Y2gsIGV2ZW4gdGhvdWdoIEkg
a25vdyBzdWNoIGJvYXJkcyBleGlzdCBhbmQKPiA+IGluIGZhY3QgeW91IGFyZSB1c2luZyBvbmUu
Cj4gPgo+ID4gRG8gSSBkbyBub3Qga25vdyBvZiBhbnkgc3BlY2lmaWMgaW14NiBib2FyZHMgdGhh
dCBkbyB0aGlzLiAgQXMgdGhlcmUKPiA+IGFyZSBhcHBhcmVudGx5IG5vIGlteCBib2FyZHMgYm9v
dGluZyBiYXJlYm94IGZyb20gbmFuZC4uLi4KPgo+IFRoZXJlIGFyZSBzZXZlcmFsIGkuTVg2IGJv
YXJkcyBtYWlubGluZSB0aGF0IHN1cHBvcnQgYm9vdGluZyBmcm9tIE5BTkQsCj4gb25lIG9mIHRo
ZW0gYmVpbmcgdGhlIHBoeUZMRVgtaS5NWDYgYm9hcmQgd2hpY2ggSSBhbSB1c2luZyBhbGwgZGF5
LiBJdAo+IGRvZXNuJ3QgdXNlIGFueSB4bG9hZCBtZWNoYW5pc20sIHRoZXJlcydzIG9ubHkgb25l
IHN0YWdlIGluIE5BTkQuIFdlCj4gYWxzbyBoYXZlIGlteDZfbmFuZF9zdGFydF9pbWFnZSgpIHdo
aWNoIGNhbiBiZSB1c2VkIHdoZW4gYSB4bG9hZAo+IG1lY2hhbmlzbSBpcyBkZXNpcmVkIGZvciBj
YXNlcyB3aGVuIHRoZSBTRFJBTSBzaGFsbCBiZSBpbml0aWFsaXplZCBpbgo+IGNvZGUgcmF0aGVy
IHRoYW4gdXNpbmcgRENEIGRhdGEuIFRoaXMgcGFydCBpbmRlZWQgaGFzIG5vIHVzZXJzIGluIHRy
ZWUsCj4gYnV0IHRoZXJlIHNob3VsZG4ndCBiZSBtdWNoIHRvIGltcGxlbWVudCB0byBnZXQgdGhp
cyB3b3JraW5nLgoKVGhhdCdzIHRoZSBpc3N1ZSwgdGhpcyBwYXRjaCBpcyB0byB0aGUgY29kZSBm
b3IgeGxvYWQsIHdoaWNoIGhhcyBubyBpbgp0cmVlIHVzZXJzLgoKVGhlIHBhdGNoIGVpdGhlciBk
b2Vzbid0IG1hdHRlciwgZml4ZXMsIG9yIGJyZWFrcyBhIGJvYXJkLCBkZXBlbmRpbmcKb24gd2hh
dCBpdCBkaWQgd2l0aCBOQU5ELiAgQSBub3JtYWwKTkFORCBsYXlvdXQgZG9lc24ndCBtYXR0ZXIs
IGJ1dCB0aGVyZSBhcmUgIndyb25nIiwgb3IgYXQgbGVhc3QKbm9uLXN0YW5kYXJkLCBsYXlvdXRz
IHRoYXQgaXQgd2lsbCBlaXRoZXIgZml4IG9yIGJyZWFrLgoKQW5kcmVqIGhhcyBvbmUgcmVhbCBl
eGFtcGxlIHdoZXJlIGl0IGZpeGVzLiAgVGhlcmUgYXJlIG5vIGtub3duCnNwZWNpZmljIGV4YW1w
bGVzIHdoZXJlIGl0IHdvdWxkIGJyZWFrLCBidXQgYWJzZW5jZSBvZiBldmlkZW5jZSBpcyBub3QK
ZXZpZGVuY2Ugb2YgYWJzZW5jZSEKCklmIHRoZXJlIHdhcyBhbiBpbi10cmVlIGJvYXJkIHVzaW5n
IHhsb2FkIGdwbWksIHRoZW4gb25lIGNvdWxkIGFsc28KbG9vayBmb3IgYSBCU1Agc29mdHdhcmUg
dXBkYXRlIHN5c3RlbSBvciBwdWJsaXNoZWQgc29mdHdhcmUgdXBkYXRlCmluc3RydWN0aW9ucyBm
b3IgdGhhdCBib2FyZCwgYW5kIHNlZSB3aGF0IHRoZXkgZG8uCgpGb3IgZXhhbXBsZSwgVmFyaXNj
aXRlJ3MgREFSVC02VUwgaW5zdHJ1Y3Rpb25zIGZvciB1LWJvb3QgdXBkYXRlIGZyb20KTGludXgg
aW4gwqc1LjQgb2YKaHR0cHM6Ly92YXJpd2lraS5jb20vaW5kZXgucGhwP3RpdGxlPVlvY3RvX05B
TkRfRmxhc2hfQnVybmluZyZyZWxlYXNlPVJFTEVBU0VfWkVVU19WMS4yX0RBUlQtNlVMClRoZXNl
IGhhdmUgYm90aCBTUEwgKyAybmQgc3RhZ2UgcmVwbGFjZW1lbnQgaW4gb25lIGJsb2NrLCB3aGlj
aCBpcwpnb29kIGFuZCB0aGlzIHBhdGNoIHdpbGwgbm90IGJyZWFrIGEgYm9hcmQgZmxhc2hlZCB0
aGlzIHdheS4KCk9mIGNvdXJzZSwgU1BMIGZsYXNoIHVzZXMga29icy1uZywgd2hpY2ggbmVlZHMg
dGhlIGRlYnVnZnMgYmNoIGhhY2sKdGhhdCdzIG5vdCBpbiB0aGUgbWFpbmxpbmUga2VybmVsLCBz
byBtYXliZSBzb21lb25lIHNraXBzIHRoYXQgc3RlcAphbmQgZG9lc24ndCB1cGRhdGUgU1BMPwoK
PiA+IEJ1dCBjb25zaWRlciB0aGF0IGV2ZW4gaWYgYmFyZWJveCBzcGwgY2FuIHN1cHBvcnQgdHdv
IGRpZmZlcmVudCBCQ0gKPiA+IGNvbmZpZ3Mgb24gc2FtZSBuYW5kIGRldmljZSBmb3IgYm9vdGlu
ZywgbmVpdGhlciBCYXJlYm94IG5vciBMaW51eAo+ID4gc3VwcG9ydCB0aGlzIGNvbmNlcHQgYXQg
YWxsLgo+Cj4gQXQgbGVhc3QgdGhlIE9NQVAgTkFORCBkcml2ZXIgaW4gYmFyZWJveCBzdXBwb3J0
cyBkaWZmZXJlbnQgRUNDIGNvbmZpZ3MKPiB0aGF0IGFyZSBzd2l0Y2hhYmxlIGR1cmluZyBydW50
aW1lLiBUaGUgRUNDIHNjaGVtZSBvbmNlIHN3aXRjaGVkIGlzIHVzZWQKPiBmb3IgdGhlIHdob2xl
IGRldmljZSB0aG91Z2gsIHdoYXQncyBtaXNzaW5nIGlzIGluZGVlZCB0byBhdHRhY2ggYW4gRUND
Cj4gc2NoZW1lIHRvIGEgcGFydGl0aW9uIHJhdGhlciB0aGFuIHRvIHRoZSB3aG9sZSBkZXZpY2Uu
IEkgaGF2ZSB0aGF0IGRyZWFtCj4gZWFjaCB0aW1lIHdoZW4gaGFja2luZyBPTUFQIE5BTkQuLi4K
CkV2ZW4gaWYgQmFyZWJveCBjb3VsZCBkbyBpdCwgaXQgd29uJ3Qgd29yayBpbiBMaW51eCwgd2hp
Y2ggd291bGQgYmUgYQpodWdlIGRyYXdiYWNrLiAgQUZBSUssIGV2ZW4gdGhlIG5ldyBkdHMgYmFz
ZWQgRUNDIHByb3BlcnRpZXMgYXJlIHN0aWxsCmF0dGFjaGVkIHRvIGEgZGV2aWNlIGFuZCBub3Qg
YSBwYXJ0aXRpb24uCgpXaGVuIGhhcmR3YXJlIEVDQyBmaXJzdCBhcHBlYXJlZCwgaXQgc2VlbWVk
IG9idmlvdXMgdG8gbWUgdGhhdCBhbiBtdGQKaW9jdGwgdG8gZ2V0L3NldCBlY2MgdmFsdWVzIHdh
cyBuZWVkZWQuICBrb2JzLW5nIG5lZWRzIHRoaXMuICBUaGUKdGhpbmcgSSBjYW4ndCByZW1lbWJl
ciBmb3IgdGhlIE1YUyBib290IHN5c3RlbSBuZWVkZWQgaXQuICBPbmUgY291bGQKaGF2ZSBkaWZm
ZXJlbnQgRUNDIGZvciBkaWZmZXJlbnQgcGFydGl0aW9ucy4gIE9uZSBjb3VsZCBzd2l0Y2ggdGhl
IEVDQwp1c2VkIHdoZW4gcmVmbGFzaGluZyBhIHBhcnRpdGlvbi4gIEJ1dCBubywgd2UgaGF2ZSBz
dHVmZiBsaWtlIHRoZQpkZWJ1Z2ZzIGJjaCBmaWxlIHRoYXQgaXMgc3RpbGwgbm90IG1haW5saW5l
ZCBhZnRlciBhIGRlY2FkZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

