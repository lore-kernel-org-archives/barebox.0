Delivery-date: Thu, 21 Apr 2022 11:00:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nhSfn-009wum-In
	for lore@lore.pengutronix.de; Thu, 21 Apr 2022 11:00:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nhSfk-0003fn-WA
	for lore@pengutronix.de; Thu, 21 Apr 2022 11:00:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6FWTXlnfwWwpHHwLqnrfSODwqg8kShHTMlixOgz/JM0=; b=Kvkyojy3MNnGQE
	GOILR9LnT4bp0GJzg9Cw+18d+V+5U4igJCzVwgt/k7YxVK0yvhbcE1qVhTttbnHVaG5wXKCqzIJoa
	1aQEIwzQTzd1BYLSx+9QjzxfOxEYXeNEsew9KHjMP4HAjKJHqylswdHD6RvtM8W0Mhdg9u7JKnNBD
	SN+chTLTYzU+Uhe7TqJBwki5mSvRdSzmYw+0y1RFLkLqM4SBjFVrkaovxCzODOxxTlRMYKv1/ye8F
	u5Cyp3bpMDnSymj7GTDyZB650rHPh4IrLgnQDOgUgcEbKmoohq9lRhE2j2pP63DLYrvSX3e1+PpV5
	gUDqvcJS6ruL5azFWNCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhSeF-00CYTZ-Ec; Thu, 21 Apr 2022 08:58:47 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhSeA-00CYRa-2j
 for barebox@lists.infradead.org; Thu, 21 Apr 2022 08:58:43 +0000
Received: by mail-pg1-x52a.google.com with SMTP id bg9so4093433pgb.9
 for <barebox@lists.infradead.org>; Thu, 21 Apr 2022 01:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=4XiC/7F6ezuJhsKDtk/VbpkvnHVdYP1sQLVkYYBCh9Y=;
 b=hgajEV6qf76ZlpOhk8pxS1hZoHR0/ZzqLDeMW9PZMG6pZT4R0mzCfs16QOpRf94SSU
 lo71AGE5nQwGLTZcdxBwXWfDI3rv18RHNvcGw1T7OsxGBKAOMv2jzAfBwN5RHZHfH2j0
 31WHc1e1zisVm0DIG346vv2lvaHkTV3uBx2ahaPOAoklskiaCYWLo/5e1uoPdrOeX9dz
 Pds79B7G3oS9acIfjvdxNAs+wzAXU/wOGjiptVR5aw8XjcpzK+/ko111yBVmTc/Kr11h
 hHBJvV/zTQU9C0T64m89gTfHWj/4SoNYdrMrrLMxxE2GJlYDjn4iAaJzms1CVr3iYRYk
 NYPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=4XiC/7F6ezuJhsKDtk/VbpkvnHVdYP1sQLVkYYBCh9Y=;
 b=WiBVPbYzrhZGTQeo/Mm280NcXm+W7YG6sDrEshuvXHwKWUez9ASwFYP+EQAGGmkJNS
 s6lgZ5CdDOers7Cnzt02Kiv0zJLF95xkO/efN1kyWk+45qT1bmT1IsTUJ2MbX8S69Zwa
 yfYfCNvSM2Sb+L00W+0cz9Z7uzpOgjE+rIDhBGVq6dhzSZLZWGcoXljn2BGUqNi8YLrJ
 FrYascU+JMyh8TWckc9vpiqYBl0y4fBnjfpWwKFWUu/AniDe3QtrOfYgcp9g89AnWkGK
 7zOlJrzo1mFNCswh/KHWHaeT94DmuzpKs1/NrKFnGd0yZ/YtRZjgo9XQXMS1O3hEcYiA
 RrKQ==
X-Gm-Message-State: AOAM533k+itZsYjhW5LWy+zI8+rmJdcDxCVx+4zqh2Ng18G7lgzTjO44
 EHi2cPUgLTwXbPC6uoiXBZfEwS5AwpZOgMSsS39lzjIg6xKOng==
X-Google-Smtp-Source: ABdhPJzDfwrhyJgUEe0ZTgUy0HflIWPCF88gCVvRtEq912EDzLozDRMAZfzTRfJIRI8w+3Lpp1snKg/iFCVjg7b6HD8=
X-Received: by 2002:a05:6a00:1a01:b0:505:b3e5:b5fc with SMTP id
 g1-20020a056a001a0100b00505b3e5b5fcmr27652568pfv.53.1650531520117; Thu, 21
 Apr 2022 01:58:40 -0700 (PDT)
MIME-Version: 1.0
References: <20220420095322.89880-1-eagle.alexander923@gmail.com>
 <20220421073546.GV4012@pengutronix.de>
 <CAP1tNvQOpnGwOUtHVTcxcMnv_GR=FNK3EuEFvBxDDcF-Fb9x3w@mail.gmail.com>
 <20220421083003.GY4012@pengutronix.de>
In-Reply-To: <20220421083003.GY4012@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 21 Apr 2022 11:58:26 +0300
Message-ID: <CAP1tNvS4L7ZM7dYK+VZej56MdyMVXJiMVg3oLj2iYMVk9n0xcQ@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_015842_155794_770AE2CD 
X-CRM114-Status: GOOD (  23.22  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] arm: boards: Add support for MYIR MYD-AM335X Development
 Board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

0YfRgiwgMjEg0LDQv9GALiAyMDIyINCzLiDQsiAxMTozMCwgU2FzY2hhIEhhdWVyIDxzaGFAcGVu
Z3V0cm9uaXguZGU+Ogo+IE9uIFRodSwgQXByIDIxLCAyMDIyIGF0IDEwOjU3OjMzQU0gKzAzMDAs
IEFsZXhhbmRlciBTaGl5YW4gd3JvdGU6Cj4gPiDRh9GCLCAyMSDQsNC/0YAuIDIwMjIg0LMuINCy
IDEwOjM1LCBTYXNjaGEgSGF1ZXIgPHNoYUBwZW5ndXRyb25peC5kZT46Cj4gPiA+Cj4gPiA+IE9u
IFdlZCwgQXByIDIwLCAyMDIyIGF0IDEyOjUzOjIyUE0gKzAzMDAsIEFsZXhhbmRlciBTaGl5YW4g
d3JvdGU6Cj4gPiA+ID4gVGhlIE1ZRC1BTTMzNVggRGV2ZWxvcG1lbnQgQm9hcmQgZGVzaWduZWQg
YnkgTVlJUiBpcyBhIGhpZ2gtcGVyZm9ybWFuY2UKPiA+ID4gPiBBUk0gRXZhbHVhdGlvbiBNb2R1
bGUgKEVWTSkgdXNpbmcgdGhlIE1ZQy1BTTMzNVggQ1BVIG1vZHVsZSBhcyB0aGUgY29yZQo+ID4g
PiA+IGNvbnRyb2xsZXIgYm9hcmQuIEl0IGlzIGJhc2VkIG9uIHVwIHRvIDFHSHogVGV4YXMgSW5z
dHJ1bWVudHMgKFRJKQo+ID4gPiA+IFNpdGFyYSBBTTMzNXggZmFtaWx5IG9mIEFSTSBDb3J0ZXgt
QTggTWljcm9wcm9jZXNzb3JzIChNUFVzKSB0aGF0IGRlbGl2ZXIKPiA+ID4gPiBoaWdoIERNSVBz
IGF0IGEgbG93IGNvc3Qgd2hpbGUgYWxzbyBkZWxpdmVyaW5nIG9wdGlvbmFsIDNEIGdyYXBoaWNz
Cj4gPiA+ID4gYWNjZWxlcmF0aW9uIGFuZCBrZXkgcGVyaXBoZXJhbHMuCj4gPiA+ID4KPiA+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBBbGV4YW5kZXIgU2hpeWFuIDxlYWdsZS5hbGV4YW5kZXI5MjNAZ21h
aWwuY29tPgo+ID4gLi4uCj4gPiA+ID4gK3N0YXRpYyBzdHJ1Y3Qgb21hcF9iYXJlYm94X3BhcnQg
bXlpcl9iYXJlYm94X3BhcnQgPSB7Cj4gPiA+ID4gKyAgICAgLm5hbmRfb2Zmc2V0ID0gU1pfMTI4
SywKPiA+ID4gPiArICAgICAubmFuZF9zaXplID0gU1pfNTEySywKPiA+ID4gPiArfTsKPiA+ID4K
PiA+ID4gSXNuJ3QgdGhpcyBhIGJpdCB0b28gc21hbGw/IFB1dHRpbmcgYSBiYXJlYm94IGludG8g
MTI4ayBzZWVtcyB2ZXJ5Cj4gPiA+IGFtYmljb3VzLgo+ID4KPiA+IFRoZSBib290IGltYWdlIChN
TE8pIHNob3VsZCBub3QgZXhjZWVkIDEyOCBLQiBpbiBzaXplLAo+ID4gc28gSSB0aGluayB0aGlz
IHNob3VsZCBiZSBlbm91Z2guCj4gPiBJbiBhbnkgY2FzZSB0aGlzIHNpemUgaXMgYWxyZWFkeSBz
cGVjaWZpZWQgZm9yIHRoZSBib290IHBhcnRpdGlvbgo+ID4gaW4ga2VybmVsIERUUyBmb3IgdGhp
cyBib2FyZC4gOikKPgo+IE9oLCBJIGFjY2lkZW50bHkgbWlzcmVhZCBuYW5kX3NpemUgYXMgU1pf
MTI4Sy4gSW5kZWVkIGl0J3MgU1pfNTEySyB3aGljaAo+IGlzIHNtYWxsLCBidXQgc3VmZmljaWVu
dC4gQW55d2F5LCB0aGUgQkJVIGNvZGUgYXNzdW1lcyA0IGVyYXNlYmxvY2tzIGZvcgo+IHRoZSBm
b3VyIE1MTyBpbWFnZXMuIFRoYXQgd291bGQgYmUgYSBuYW5kX29mZnNldCBvZiBTWl81MTJLIGFs
c28sIHdoaWNoCj4gd291bGQgdGhlbiBhbHNvIG1hdGNoIHRoZSB1cHN0cmVhbSBkZXZpY2UgdHJl
ZSBmb3IgdGhlIGJvYXJkOgo+Cj4gJm5hbmQwIHsKPiAgICAgICAgIHBhcnRpdGlvbkAwIHsKPiAg
ICAgICAgICAgICAgICAgbGFiZWwgPSAiTUxPIjsKPiAgICAgICAgICAgICAgICAgcmVnID0gPDB4
MDAwMDAgMHgyMDAwMD47Cj4gICAgICAgICB9Owo+Cj4gICAgICAgICBwYXJ0aXRpb25AMjAwMDAg
ewo+ICAgICAgICAgICAgICAgICBsYWJlbCA9ICJib290IjsKPiAgICAgICAgICAgICAgICAgcmVn
ID0gPDB4MjAwMDAgMHg4MDAwMD47Cj4gICAgICAgICB9Owo+IH07Cj4KPiA1MTJrIGlzIHN0aWxs
IHZlcnkgc21hbGwgbm93YWRheXMuIFRoZSBpbWFnZXMgYnVpbHQgd2l0aCBvbWFwX2RlZmNvbmZp
Zwo+IGFyZSBqdXN0IGEgYml0IHNtYWxsZXIgdGhhbiB0aGF0LgoKRG8geW91IHByZWZlciB0aGF0
IHdlIGZpeCB0aGlzIGluIHRoZSBsb2NhbCBvdmVybGF5IG5vdywKb3IgbGVhdmUgaXQgYXMgaXMg
dW50aWwga2VybmVsIERUUyB1cHN0cmVhbSBjaGFuZ2VzPwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vYmFyZWJveAo=

