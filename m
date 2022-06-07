Delivery-date: Tue, 07 Jun 2022 09:49:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nyTxX-0069Ok-HS
	for lore@lore.pengutronix.de; Tue, 07 Jun 2022 09:49:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nyTxV-0007wi-NL
	for lore@pengutronix.de; Tue, 07 Jun 2022 09:49:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jcnVWaJWZ/NjH+/LHLrdRAskvSuuxIUuKS2qLO4IZdM=; b=DsIpuApnKEgW/9
	Jg36/TyNL4lM85ByF7X8bSAOfd59W9LSTchdla81B+P+OPppgpC1c5RVMmDMCE4B/YAWNBEUHMd9z
	gro5iM6gyXirBgmN1sjbDjcTyYgr1QtBSbfDJSw5y6I8HPmYy//1nb65/sAhddEkOSpv2vWRgIyA6
	PsL/nYqcSNNdI55Ie6nmjpm8hUfOrkgdK4Gyo6OfHt4m/PBcU3Jb0DR71IoV/frjidFyD3JmAlMeJ
	tjF5J1i0ugT1cF97SmakkamnaHKECIMGK3nsr9h7gce95sze1QUijUeA4COD84ZMnFtnoFSHc0PuY
	C5t3u1U2AFBwcfevDK7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyTwC-005ZcU-GK; Tue, 07 Jun 2022 07:47:40 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyTw7-005ZaM-JI
	for barebox@lists.infradead.org; Tue, 07 Jun 2022 07:47:36 +0000
Received: by mail-pf1-x431.google.com with SMTP id z17so14823554pff.7
        for <barebox@lists.infradead.org>; Tue, 07 Jun 2022 00:47:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=lZoS9T8qbbB/SEL/qBwAyBl22wLiVsvObt9913CCcR8=;
        b=nFynrpQMn1/qWxkYhEdBwri5ozH5NQ3by7crgV3drZM5gvjwu5ehCLbk/G2IE90y8z
         xeqJcTbOIs1GynJGKEDH2Ee2q5UN6se8KaLi0tr3t9kUc0LKV/dlbhSSkzg7njaO22A0
         Ttqg7vrpj8QXgrXtZ35xlMvY9rJqLmukyMci8DE8fdpKKF5Hr2FURF364qRKWPg0roMs
         nsJO0FxwNiZmeiTl6wzRvzkZcgekeigBDyNFDDRwFLjhVhUc5fnVMmLnx3yQdZWAnWvW
         rLvScBfJCrJLSiv10sRe0Lx0s2QH7QBFnsNdAhIXAXYubbRkaD4mcCMGdgbfav+FNiSe
         Ko9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=lZoS9T8qbbB/SEL/qBwAyBl22wLiVsvObt9913CCcR8=;
        b=JjXPIKXFBooc0kYbw5l8BzDVxcQITNefgDOUGdta0zvA2ecA9qb41lkWuUaRmrS8ay
         HGJtTDmZ6YBfRSFY1EpFKl2jpXIaH9mHe8gr31Gj5ynV2p1s7Dm9JTCUnK9A/8oKDfev
         kejboJPZB2QVj+oMNvKf9R0t2XHVDU5p+RMO9IS7mNRf4HuGkaGLZpb/BsPHnmhmm5Z7
         O6RTJ4as/CuBtZTyN0AbrPEmAzHAQk/c+p5GOBfVeO2sDOe+lFB/DMQstgYB0MoU3h1K
         CF5SiFbZzuFQTqIb+R4dRoyb+XOucp4plWhzD55u9P/aF6vsi2BcjMheq4Upqk1MNmSy
         E3dw==
X-Gm-Message-State: AOAM531BkGdGo7NI7wRySdf6tjVQwnAgFjclpHYMlqF8YvQlf+NJSVNE
	Ncse0Vp7+GwMkUVIl086FMrgFgKRStiJCRDT7Ac=
X-Google-Smtp-Source: ABdhPJxwV2ON9tUhpCMut/Fky7cyMvTHmAUZJDK5HZHOZruvyuWgCOYXx7Dr2SFVi56FQv5uILYDzsLHubr2phZb5+g=
X-Received: by 2002:a05:6a00:124d:b0:51b:f2ac:ef8a with SMTP id
 u13-20020a056a00124d00b0051bf2acef8amr17124466pfi.72.1654588053287; Tue, 07
 Jun 2022 00:47:33 -0700 (PDT)
MIME-Version: 1.0
References: <20220603112540.51644-1-eagle.alexander923@gmail.com> <20220607073841.GO1615@pengutronix.de>
In-Reply-To: <20220607073841.GO1615@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 7 Jun 2022 10:47:21 +0300
Message-ID: <CAP1tNvQTD5QjJf18ChCBOJBc_FKG3TavyL_9ayXuJmfvY5HHxA@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_004735_654562_68E9FD0B 
X-CRM114-Status: GOOD (  18.07  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [RFC 1/8] ARM: OMAP: Rearranging EMIF4 definitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

0LLRgiwgNyDQuNGO0L0uIDIwMjIg0LMuINCyIDEwOjM4LCBTYXNjaGEgSGF1ZXIgPHNoYUBwZW5n
dXRyb25peC5kZT4KPiBPbiBGcmksIEp1biAwMywgMjAyMiBhdCAwMjoyNTozM1BNICswMzAwLCBB
bGV4YW5kZXIgU2hpeWFuIHdyb3RlOgo+ID4gQ3VycmVudGx5IHdlIGhhdmUgdGhyZWUgZGlmZmVy
ZW50IGRlZmluaXRpb25zIGZvciBFTUlGIG1hbmFnZW1lbnQ6Cj4gPiAtIE9mZnNldHMKPiA+IC0g
T2Zmc2V0cyByZWxhdGl2ZSB0byB0aGUgYmFzZSBhZGRyZXNzCj4gPiAtIE9mZnNldHMgaW4gdGhl
IHN0cnVjdHVyZQo+ID4KPiA+IFRoZSBwYXRjaCByZXByZXNlbnRzIHRoZSBmaXJzdCBhdHRlbXB0
IHRvIHVuaWZ5IHRoaXMuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQWxleGFuZGVyIFNoaXlhbiA8
ZWFnbGUuYWxleGFuZGVyOTIzQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIGFyY2gvYXJtL2JvYXJk
cy9hZmktZ2YvbG93bGV2ZWwuYyAgICAgICAgICAgICB8IDM5ICsrKysrKysrKy0tLS0tLS0tLQo+
ID4gIGFyY2gvYXJtL21hY2gtb21hcC9hbTMzeHhfZ2VuZXJpYy5jICAgICAgICAgICB8IDQxICsr
KysrKysrKy0tLS0tLS0tLS0KPiA+ICAuLi4vbWFjaC1vbWFwL2luY2x1ZGUvbWFjaC9hbTMzeHgt
c2lsaWNvbi5oICAgfCAxMCArLS0tLQo+ID4gIDMgZmlsZXMgY2hhbmdlZCwgNDIgaW5zZXJ0aW9u
cygrKSwgNDggZGVsZXRpb25zKC0pCj4KPiBMb29rcyBhbGwgZ29vZCBhbmQgaXMgYSBuaWNlIGNs
ZWFudXAsIHNvIGFwcGxpZWQgZGVzcGl0ZSBpdHMgUkZDIHN0YXR1cy4KPgo+IE9uZSB0aGluZyBJ
IGZvdW5kIGluIHRoZSBjb250ZXh0IG9mIHRoaXMgcGF0Y2g6Cj4KPiA+ICBzdGF0aWMgdm9pZCBi
b2FyZF9jb25maWdfZW1pZl9kZHIodm9pZCkKPiA+ICB7Cj4gPiArICAgICBjb25zdCB2b2lkIF9f
aW9tZW0gKmVtaWY0ID0gSU9NRU0oQU0zM1hYX0VNSUY0X0JBU0UpOwo+ID4gICAgICAgdTMyIGk7
Cj4KPiBbLi4uXQo+Cj4gPgo+ID4gICAgICAgZm9yIChpID0gMDsgaSA8IDUwMDA7IGkrKykgewo+
ID4KPiA+ICAgICAgIH0KPgo+IEkgd29uZGVyIGlmIHRoaXMgd29ya3MuIEkgbWFkZSB0aGUgZXhw
ZXJpZW5jZSB0aGF0IHRoZSBjb21waWxlcgo+IG9wdGltaXplcyBzdWNoIGxvb3BzIGF3YXkgd2hl
biB0aGUgY291bnRlciBpc24ndCBkZWNsYXJlZCBhcyB2b2xhdGlsZS4KCkhlbGxvLgoKSSBkaWQg
bm90IHRvdWNoIHRoZSBsb2dpYyBvZiB0aGUgcHJvY2VkdXJlcywgdGhpcyBpcyBhIHRvcGljIGZv
ciBvdGhlciBwYXRjaGVzLAphbHRob3VnaCB5ZXMsIEkgdGhpbmsgdGhpcyBlbXB0eSBsb29wIGNh
biBiZSByZW1vdmVkLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

