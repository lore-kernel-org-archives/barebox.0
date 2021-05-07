Delivery-date: Fri, 07 May 2021 20:37:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lf5Lv-00056P-V8
	for lore@lore.pengutronix.de; Fri, 07 May 2021 20:37:32 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lf5Lu-0005sp-Nt
	for lore@pengutronix.de; Fri, 07 May 2021 20:37:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ukm0/Z25wbZH/AOoOo0IcuqkNW7MdzhAsSXwx8PhicM=; b=J1c/739IaKq9S86InEn1fQQXs
	Z8OC4OQUKsvxvudpp11D9Od5epm4rHS/8/rSQdkeFPNrx3nIfelCACvtpoJWUOFXAAreT4sMwSCg6
	Q21XuIqQ3ZmHSXaG9mK/Ks4RFpjiEcXzTviBj37iSUJgWOqb0DU3WJShH0X3TYZ1hvoJY2zQjdJY4
	Q5R+G87tLGrUxgwuV+kO6i1PdPpMW/2o9iQUetf2bmrw+OCnH99EvseOSp6xzciJTvYMY0pRLAOqu
	DPJnX1lF7SWwYPItUxCQbBqmEJYm669H6c5vwwTxfn/1VNI+TWKWJr9Q5uS1/0I8QEsx6b2tSCPyL
	lhVom+2jg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lf5Kx-007o72-C9; Fri, 07 May 2021 18:36:31 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf5Kt-007o6v-8h
 for barebox@desiato.infradead.org; Fri, 07 May 2021 18:36:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=tILw2q/N8+9iwYYS5JYwqqesuEFy2iJFKORdwFcSkeI=; b=CU+i2lwePwakZA0FNSELeJApc/
 5NzqlQ+WfdlO7Hd0taiNpEcjD+YJwIOtm8Mu8hwD66urWHC3oIPRdYQvNcR3HrLxOy/g2vE9GEa7s
 eJUl/1Aw+2trzpTUH9Ia4X1QzCJUfyOT/o6cHfjrgl/UA3dVhEr3OCz/1SWQ5k96XemEWm1ZCtg8R
 JiuKyc+8S4F5S2QEsuLLfsF048JohgRjz44iy1s1STUvFRFnEM0sbUhDIafYdl8k/yd5zJmlbOTAb
 ms0b/gBOFuGkuQv+NCMeMmrx7AbzV4MauKLEnu7/pzfI9uDjrEfI1PxExEg2PotO7obc0CM3vDo1l
 565wU9HA==;
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf5Kq-0076CY-0J
 for barebox@lists.infradead.org; Fri, 07 May 2021 18:36:25 +0000
Received: by mail-lj1-x231.google.com with SMTP id y9so12786539ljn.6
 for <barebox@lists.infradead.org>; Fri, 07 May 2021 11:36:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tILw2q/N8+9iwYYS5JYwqqesuEFy2iJFKORdwFcSkeI=;
 b=thsln5rUi6jbXIYvwc6cKs2tX+0hiG45A2qPt4qdZxQFIOqi4Eno4R8z9KZ4RQkjN/
 4KoeuiBF/AD6l3Z3Ft9YaBJf0OqnqawJlS2FLt3o6zJjV3FpMt4+DQ99URu9p/H3lKaV
 kiBsQZO3Acfoo7gWFGapvsw5dMMDdwziaYreQia2m5cFve2mCd/KU6ylwLgMp6hiMYDZ
 WYM1DPNci69fSPJ6NXBNl+uVSiIZDMevAtDkkvgEnXmzDVgYsOxySh8HdDufXUjUvAVu
 JMO4Cowriux2MOY3idjcsV1sWwCk4NbdbL4x8FJGNGot+dHusyYecAk94uD2mIEdrt//
 wcQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tILw2q/N8+9iwYYS5JYwqqesuEFy2iJFKORdwFcSkeI=;
 b=lTgc6pnE9f4yv6vgRJVz8vOYAec/8bHotzV6nPn0CFnnijcYPmy7TrAG2wB3+wqK4u
 BkutiO2cs8cLaC3CstmGCw6mLHAqcUgXFsEyX0FhG1my8ElSUiyzpvQo1Jl3Pg5zviUe
 C43kLIWvfgffV/JQf3+PI2jfnE+m5bgIWAZfNtbWdFOsZtnVkevsIPoyrc6OANOyKfZk
 f22yAhu/+TrvCv0qg+b72pJfa1Jx7I0rahaNDDhPmAxvEHPLtVbXhWHpLfRL9Dx5m5OR
 R+RGG50ltHqcJTsg/B/LSGWMjTRB5u56vJPoytXv7Rxilxl3aIuWR/f+2cnFOHu6rwh/
 ve0A==
X-Gm-Message-State: AOAM530/gKzxzs/ZY4LwCGC0zHC3SUELS5yXLtmWPFoevkqZ795MG6Lz
 uvpjeCpUSniUaRgJAZWEBxA=
X-Google-Smtp-Source: ABdhPJwQOfigIh3Eqkn5lOML7z+eT4kIXlOqbNU/SZo+y3r8aUtJWMmkaX9R1R9XcJ8DYZesAb+OuA==
X-Received: by 2002:a05:651c:156:: with SMTP id
 c22mr8816809ljd.175.1620412582087; 
 Fri, 07 May 2021 11:36:22 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id q66sm1986471ljb.3.2021.05.07.11.36.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 May 2021 11:36:21 -0700 (PDT)
Date: Fri, 7 May 2021 21:36:19 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-Id: <20210507213619.09d0fba5db15fe8b5cc86dd4@gmail.com>
In-Reply-To: <0a6bd853-6f84-b699-a1d1-1b1a18ad50cb@pengutronix.de>
References: <20210506220834.223350-1-antonynpavlov@gmail.com>
 <20210506220834.223350-3-antonynpavlov@gmail.com>
 <c1791cb3-2837-eb3e-aa58-9d1eb2a3d7b5@pengutronix.de>
 <20210507172527.cf80cf7cb749560d2e8200cd@gmail.com>
 <28074d89-492c-48ac-d93e-103092e073cd@pengutronix.de>
 <20210507205249.bff9c677e81494c210205ac4@gmail.com>
 <0a6bd853-6f84-b699-a1d1-1b1a18ad50cb@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_113624_071186_F81E4B0D 
X-CRM114-Status: GOOD (  30.64  )
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
Cc: barebox@lists.infradead.org, Rouven Czerwinski <rcz@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 02/11] RISC-V: make RISCV_SBI and RISCV_M_MODE
 explicitly mutually exclusive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gRnJpLCA3IE1heSAyMDIxIDIwOjA4OjQ4ICswMjAwCkFobWFkIEZhdG91bSA8YS5mYXRvdW1A
cGVuZ3V0cm9uaXguZGU+IHdyb3RlOgoKSGkgQWhtYWQhCgo+IE9uIDA3LjA1LjIxIDE5OjUyLCBB
bnRvbnkgUGF2bG92IHdyb3RlOgo+ID4gT24gRnJpLCA3IE1heSAyMDIxIDE2OjQ0OjI0ICswMjAw
Cj4gPiBBaG1hZCBGYXRvdW0gPGEuZmF0b3VtQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPiA+IAo+
ID4gSGkgQWhtYWQgIQo+ID4gCj4gPj4gSGVsbG8gQW50b255LAo+ID4+Cj4gPj4gT24gMDcuMDUu
MjEgMTY6MjUsIEFudG9ueSBQYXZsb3Ygd3JvdGU6Cj4gPj4+PiBJIHdvdWxkIHJlYWxseSBsaWtl
IHRvIGhhdmUgYSByaXNjdnszMiw2NH1fZGVmY29uZmlnIHRoYXQgY2FuIGp1c3QgYnVpbGQgYWxs
IGJvYXJkcwo+ID4+Pj4gYXQgb25jZS4gRG8geW91IGtub3cgaWYgdGhpcyBjb3VsZCBiZSBkeW5h
bWljYWxseSBkZXRlcm1pbmVkPwo+ID4+Pgo+ID4+PiBBdCB0aGUgbW9tZW50IEkgaGF2ZSBub3Qg
YW5zd2VyLgo+ID4+PiBJJ2xsIHRyeSB0byBpbnZlc3RpZ2F0ZSBkeW5hbWljIG1vZGUgZGV0ZXJt
aW5hdGlvbiwgaXQncyB2ZXJ5IGF0dHJhY3RpdmUgaWRlYS4KPiA+Pj4KPiA+Pj4gT24gdGhlIG90
aGVyIGhhbmQgY29tcGlsZSB0aW1lIG1vZGUgc2VsZWN0aW9uIGlzIG5vdCB0aGUgc2hvdyBzdG9w
cGVyIGZvcgo+ID4+PiAib25lIGRlZmNvbmZpZyB0byBidWlsZCB0aGVtIGFsbCI6IHdlIGhhdmUg
dG8gbWFrZSBTVEFDS19TSVpFIGFuZCBNQUxMT0NfU0laRQo+ID4+PiBwZXItYm9hcmQgcGFyYW1l
dGVycyBub3QgcGVyLWRlZmNvbmZpZyBwYXJhbWV0ZXJzIGxpa2Ugbm93Lgo+ID4+Pgo+ID4+PiBJ
ZiB3ZSBjb3VsZCBtYWtlIFNUQUNLX1NJWkUgYW5kIE1BTExPQ19TSVpFIHBlci1ib2FyZCBjb21w
aWxlLXRpbWUgcGFyYW1ldGVycyB0aGVuCj4gPj4+IHdlIGNhbiBtYWtlIFJJU0MtViBtb2RlIHBl
ci1ib2FyZCBjb21waWxlLXRpbWUgcGFyYW1ldGVyIHRvby4gSXMgdGhpcyBzb2x1dGlvbgo+ID4+
PiBhY2NlcHRhYmxlPwo+ID4+Cj4gPj4gTUFMTE9DX1NJWkUgY2FuIGJlIHNldCBhcyAwIGFuZCBi
YXJlYm94IHdpbGwgZGV0ZXJtaW5lIGl0IGJhc2VkIG9uCj4gPj4gbWVtYmFzZSArIG1lbXNpemUg
dGhhdCBhcmUgc2V0IGJ5IFBCTC4KPiA+Pgo+ID4+IFNUQUNLX1NJWkUgbXVzdCBiZSBzZXQgcGVy
IEtjb25maWcsIGJ1dCBJIHRoaW5rIGV2ZW4gYSBnZW5lcm91cyBkZWZhdWx0IHN0YWNrCj4gPj4g
c2l6ZSBzaG91bGQgYWNjb21tb2RhdGUgYWxsIHRhcmdldHMuCj4gPj4KPiA+PiBJZiB3ZSBkbyB0
aGUgc2FtZSBmb3IgUklTQy1WIG1vZGUgdGhhdCB3b3VsZCBwcm9iYWJseSBtZWFuIGhhdmluZwo+
ID4+IHR3byBmdW5jdGlvbnMgYmFyZWJveF9yaXNjdl9tYWNoaW5lX2VudHJ5KCkgYW5kIGJhcmVi
b3hfcmlzY3Zfc3VwZXJ2aXNvcl9lbnRyeSgpCj4gPj4gaW4gUEJMIHRoYXQgdGFrZSBjYXJlIHRv
IHBhc3MgdGhlIGNvcnJlY3QgaW5mbyB0byBiYXJlYm94IHByb3Blci4KPiA+Pgo+ID4+IEFwcGFy
ZW50bHksIHlvdSBjYW4gZGV0ZXJtaW5lIG1vZGUgaWYgeW91IGNhdGNoIGV4Y2VwdGlvbnM6Cj4g
Pj4gaHR0cHM6Ly9mb3J1bXMuc2lmaXZlLmNvbS90L2hvdy10by1kZXRlcm1pbmUtdGhlLWN1cnJl
bnQtZXhlY3V0aW9uLXByaXZpbGVnZS1tb2RlLzI4MjMKPiA+IAo+ID4gSG1tLCBhbnN3ZXIgaXMg
bW9zdGx5IG5lZ2F0aXZlOgo+ID4gCj4gPiA8PAo+ID4gICBSSVNDLVYgZGVsaWJlcmF0ZWx5IGRv
ZXNu4oCZdCBtYWtlIGl0IGVhc3kgZm9yIGNvZGUgdG8gZGlzY292ZXIKPiA+ICAgd2hhdCBtb2Rl
IGl0IGlzIHJ1bm5pbmcgaXQgYmVjYXVzZSB0aGlzIGlzIGEgdmlydHVhbGlzYXRpb24gaG9sZS4K
PiA+ICAgQXMgYSBnZW5lcmFsIHByaW5jaXBsZSwgY29kZSBzaG91bGQgYmUgZGVzaWduZWQgZm9y
IGFuZCBpbXBsaWNpdGx5Cj4gPiAgIGtub3cgd2hhdCBtb2RlIGl0IHdpbGwgcnVuIGluLiAKPiA+
Pj4KPiA+IAo+ID4+IFdlIGRvbid0IHlldCBpbnN0YWxsIGV4Y2VwdGlvbiBoYW5kbGVycyBpbiBi
YXJlYm94LCBidXQgSSBhbSBmaW5lIHdpdGggdXNpbmcKPiA+PiBkaWZmZXJlbnQgUEJMIGNvbW1v
biBjb2RlIGVudHJ5IGZ1bmN0aW9ucy4KPiA+Pgo+ID4+IFdoYXQgZG8geW91IHRoaW5rPwo+ID4g
Cj4gPiBJIHRoaW5rIHRoYXQgYWRkaW5nIGV4Y2VwdGlvbiBoYW5kbGluZyB0byBiYXJlYm94IHdv
dWxkIGJlIHZlcnkgaGFuZHkuCj4gPiBBdCB0aGUgbW9tZW50IGJhcmVib3ggc29tZXRpbWVzIGhh
bmdzIGR1cmluZyBteSBleHBlcmltZW50cyB3aXRob3V0IGFueSBlcnJvciBtZXNzYWdlLgo+ID4g
RXZlbiB3aXRoIGEgc2ltcGxlIGV4Y2VwdGlvbiBoYW5kbGVyIHRoYXQganVzdCBwcmludHMgb3V0
IGVwYywgc3RhdHVzIGFuZCBjYXVzZSByZWdpc3RlcnMKPiA+IEkgaGF2ZSBtdWNoIG1vcmUgaW5m
b3JtYXRpb24gb24gaGFuZyByZWFzb24uCj4gCj4gRXhjZXB0aW9uIGhhbmRsaW5nIHdvdWxkIGJl
IHVzZWZ1bCwgbm8gZG91YnQuIFJvdXZlbiBpcyBsb29raW5nCj4gaW50byBhZGRpbmcgdGhhdC4K
PiAKPiBJIHdhcyBhc2tpbmcgYWJvdXQgd2hhdCB5b3UgdGhpbmsgYWJvdXQgYWRkaW5nIGJhcmVi
b3hfcmlzY3ZfbWFjaGluZV9lbnRyeSgpCj4gYW5kIGJhcmVib3hfcmlzY3Zfc3VwZXJ2aXNvcl9l
bnRyeSgpLCBzbyBQQkwgZW50cnkgcG9pbnRzIGNhbiBkZWNpZGUgZm9yCj4gdGhlbXNlbHZlcyB3
aGF0IG1vZGUgdGhlIHJlc3Qgb2YgYmFyZWJveCBzaG91bGQgZ2V0IHdoZW4gcmlzY3ZfbW9kZSgp
IGlzCj4gY2FsbGVkLiBJJ2xsIENDIHlvdSBvbiB0aGUgc2VyaWVzLgoKQ2FuIHdlIGp1c3QgYWRk
IG9uZSBtb3JlICdpbnQgbW9kZScgYXJndW1lbnQgdG8gYmFyZWJveF9yaXNjdl9lbnRyeSgpPwoK
LS0gCkJlc3QgcmVnYXJkcywKwqAgQW50b255IFBhdmxvdgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vYmFyZWJveAo=

