Delivery-date: Fri, 10 Oct 2025 09:14:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v77L2-006E6l-0F
	for lore@lore.pengutronix.de;
	Fri, 10 Oct 2025 09:14:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v77L1-00021W-2B
	for lore@pengutronix.de; Fri, 10 Oct 2025 09:14:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iKhf6+TSkIX2XL86H8nJHUzMRg5pUHg3Tf0Dw7BrsLA=; b=plwDWfPWVCjFrQ
	N6x5XqRjTNK1prajQDbvnVW16Vf5d5MlNVQ8BQscP9u7whcs42RvPIT1hde9nvCDbKHiNixSz/3h7
	WDzHcgDPDeJo6exYsSTASvYBHucPiIG/jIFMFljbRz/JMDRZmLYao1W9gUv1ZDtkmuFEWtWRoC9pu
	d14yjscO/C35Suq+lf87apP9gIfnGBl1rDNLZX3Pu/albgMIpyfLf4u3ntmBbxBEzDyTGSSqVI2HR
	2dxhiTf/blvaXUuXFbsgNw5r343D9q+VE2pIaznfP/IUariGp2t3WyqtnS8/xHfQKVLflfCcMg6cY
	+e0RAsiLc69W3LAtHU4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v77KW-00000007q4C-2Vdg;
	Fri, 10 Oct 2025 07:14:20 +0000
Received: from mx1.myeers.net ([87.190.7.230])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v77KR-00000007q2A-3LlP
	for barebox@lists.infradead.org;
	Fri, 10 Oct 2025 07:14:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=airbus.com; i=@airbus.com; l=11286; q=dns/txt;
  s=20241106-eers-ng-2048; t=1760080455; x=1791616455;
  h=mime-version:references:in-reply-to:from:date:message-id:
   subject:to:cc:content-transfer-encoding;
  bh=iKhf6+TSkIX2XL86H8nJHUzMRg5pUHg3Tf0Dw7BrsLA=;
  b=hJQ70saynQ+qPsH1nfoFLbGJ7EIH0HxXSCI2yBBad1LljyEgJf2HOiY/
   yb/cWhmQHSQfHp1pMPUK2gAagnNKCIsEwZDVFuKnjQiiIjH5ZqeGTrzw+
   teBEq1fUr8sqNaGA7Ks9prQ2Na63RV1WmkqyJF3IRiaxC7Q09SzlS5ncm
   3RMcNQbSAnJimbpsQARFMExgcW1viraJOscTTOlkrs5k7TFvsMeYRZi/h
   o5mdjpuD4Qwx9R+5Hf5yW2SA01TWkFyY2LwH4GLsnYZtmpeKuo69SqbZv
   5zF9qjHO+kv3XZ5wfHGpp3meb6tFX3jj111smrG+cDFziijptzRSi/3G7
   g==;
X-CSE-ConnectionGUID: F+7svRc9TQGHwmzZ2kTWyQ==
X-CSE-MsgGUID: dbhmrVvOTvS76oOBjA+YCg==
Received-SPF: Fail (MX: domain of christian.thiessen@airbus.com
  does not designate 209.85.218.71 as permitted sender)
  identity=mailfrom; client-ip=209.85.218.71; receiver=MX;
  envelope-from="christian.thiessen@airbus.com";
  x-sender="christian.thiessen@airbus.com";
  x-conformance=spf_only; x-record-type="v=spf1";
  x-record-text="v=spf1 ip4:87.190.7.224/28
  ip4:80.242.167.16/28 ip4:217.239.138.48/28
  ip4:62.217.58.112/28 include:group1._spf.airbus.com
  include:group2._spf.airbus.com include:group3._spf.airbus.com
  include:group4._spf.airbus.com -all"
Received-SPF: None (MX: no sender authenticity information
  available from domain of postmaster@mail-ej1-f71.google.com)
  identity=helo; client-ip=209.85.218.71; receiver=MX;
  envelope-from="christian.thiessen@airbus.com";
  x-sender="postmaster@mail-ej1-f71.google.com";
  x-conformance=spf_only
Authentication-Results: MX; spf=Fail smtp.mailfrom=christian.thiessen@airbus.com; spf=None smtp.helo=postmaster@mail-ej1-f71.google.com; dkim=pass (signature verified) header.i=@airbus.com
X-Ironport-Dmarc-Check-Result: validskip
X-Loop: 1
X-IronPort-AV: E=Sophos;i="6.19,218,1754949600"; 
   d="scan'208";a="446486665"
Received: from mail-ej1-f71.google.com ([209.85.218.71])
  by mx1.myeers.net with ESMTP/TLS/TLS_AES_256_GCM_SHA384; 10 Oct 2025 09:14:11 +0200
Received: by mail-ej1-f71.google.com with SMTP id a640c23a62f3a-b4ed2d44df5so169655266b.2
        for <barebox@lists.infradead.org>; Fri, 10 Oct 2025 00:14:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=airbus.com; s=google; t=1760080451; x=1760685251; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+mVMNsy9LQP5zGEDI7lKw0YGM8SHFdep4mG2TIfHN8E=;
        b=LAw8UH/Cf+utUM4Ztz5LD580+DV8hMpk2Ne3wczhinBcYTzvYK2U9kSnjbm+Q4Ghrz
         qEsmeSpzhsqrGWQgYitX+U2CZkNw/mNLEGZHUNatNJYqez81uET5CfR0akUdYbIz0w3n
         VHIjxnIuXNCM9jUSVbuGHEEJGycm5afopcd4E8KBaj3gXRJR0CIZYXSwaNioKkRNUwea
         vyA6gaGT5t3lEorMY/dQA+z1uP2xluddQjxqLksY6U6p5u8CkY7cvp87lBxtaE7EDCc5
         kq8ldMRXssp8Wg2rVE1nB2xX6syyhLRycZcOce7x2bfvuBtNcl8hH3X9UgPp027J5zBK
         NVnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760080451; x=1760685251;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+mVMNsy9LQP5zGEDI7lKw0YGM8SHFdep4mG2TIfHN8E=;
        b=Oz5t/Wy3OFqClalQ9MgzfeJzg1cc4hP5r0f+Nc1rB6CpJc23nP16JfcQoKOpyZlS2B
         WppkiffqtkwGbgrnVJlB6FnEmy7/xuMnATfE7O41QjlN2WAPOjQ3Sm6i51KG69u/NcaB
         aQozDAx6ws7wPUWzU6WSY7vf7MRO2VohYvoxsRGLdfrcKWY4cd1HmrxkzGBMH6DcGS7m
         jDTJ9xDLGhp1uEAIfQCF7sqFbaiypskuuYoQFAZbN7oyaNgHrqZB9JQMBn1SXRRZasix
         BjTdAgTe+LaI1ZeqPCVZnqa6GR431lrO5zqPKvFcFmXXvVcfsrqdt/fzNwm5KDyL8zgH
         sYpw==
X-Forwarded-Encrypted: i=1; AJvYcCU97XxobwKjn+on0Mw8+bTFdVi8PXn2eP/KmpL5QFecEob4iUSxCBmNAzqHkjUvcArl+WWKOUYy@lists.infradead.org
X-Gm-Message-State: AOJu0Yz7xCRTcQFBg6rakQwCyeUTMNCt7YYwDOJ3LueoWXnxH2LaxmIW
	u3mpdA3fgRpYfm+b09arOkMQzwZDuMpaqqhQHjyAiidZJC/RFgu9P46/mhcR2EeqpDsF00+6voc
	S7x8Z0FTVsnx7Ylj8N+P+46WHriD4vSB6iTWJ93zGrr+Q7/tz70PvUCehFQMPdt0E77qqJWKmZ4
	T6t5fSxzxqxzBMMdlSnBea7ZdbmQnXZH32xj8d3hSPWtwjbpo=
X-Gm-Gg: ASbGnctPQLlQW0tJGSFKrKlGfEPaXeGcxT9akyDen7mN7UWskrn4J0wsapKJG9P+UuX
	53yoIByt4+pho6zPr29g+wr9kZD4CEmbJ5dTf4u2/IhqqTMvKqZjgmsvzsM3SF4TP7I3uRMR1+T
	uhmSeTvZs2qFzL/CFzUEKk
X-Received: by 2002:a17:907:d86:b0:b40:8954:a8a9 with SMTP id a640c23a62f3a-b50ac0cc32amr1095252766b.34.1760080450812;
        Fri, 10 Oct 2025 00:14:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEtF9v5RYkgqCr+BJP1rehDeMlK8VCfpy4IcScdO/A49FSUAMVp9g4FQgSbZu1+xDPHaFW+Zd3gQGvy2aJeLlA=
X-Received: by 2002:a17:907:d86:b0:b40:8954:a8a9 with SMTP id
 a640c23a62f3a-b50ac0cc32amr1095250166b.34.1760080450255; Fri, 10 Oct 2025
 00:14:10 -0700 (PDT)
MIME-Version: 1.0
References: <20250903-fec_imx-fix-enodev-v1-1-0dd4c42fc293@airbus.com>
 <aL_0o86zNN1vRH4f@pengutronix.de> <a0f39695-1318-4359-84b1-8f8a0260a2b2@pengutronix.de>
In-Reply-To: <a0f39695-1318-4359-84b1-8f8a0260a2b2@pengutronix.de>
From: =?UTF-8?Q?Christian_Thie=C3=9Fen?= <christian.thiessen@airbus.com>
Date: Fri, 10 Oct 2025 09:13:58 +0200
X-Gm-Features: AS18NWBaVaGevftPv-Ve5MtojVBz7uoGfPgppzfXS1JV4QTib0UPfhyD8Oi2ROQ
Message-ID: <CAM6Jo-1YL1XVrBPOtKOVXwP_bgtLJKQXS1YZt_vsDFinWVNoVg@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251010_001416_715932_BF11FC52 
X-CRM114-Status: GOOD (  50.59  )
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
Cc: BAREBOX <barebox@lists.infradead.org>, =?UTF-8?Q?Christian_Thie=C3=9Fen_via_B4_Relay?= <devnull+christian.thiessen.airbus.com@kernel.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fec_imx: Fix ENODEV in fec_probe on i.MX27
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

SGkgQWhtYWQsIFNhc2NoYSwKCmhhdmUgeW91IHJlYWNoZWQgYSBjb25jbHVzaW9uIHdoaWNoIHdh
eSB5b3Ugd2FudCB0byB0YWtlIGhlcmU/IEVpdGhlcgp3YXkgSSdkIGJlIGhhcHB5IHRvIGhlbHAs
IGJ1dCBhcyB0aGUgaW1wbGVtZW50YXRpb24gaXMgcmF0aGVyIHNpbXBsZSwKSSBndWVzcyB5b3Ug
d291bGQgYmUgZmFzdGVyIGRvaW5nIGl0IHlvdXJzZWxmIHRoYW4gZXhwbGFpbmluZyBpdCB0byBt
ZQphbmQgZG9pbmcgYSByZXZpZXcgY3ljbGUgYWZ0ZXJ3YXJkcy4KCkNocmlzdGlhbgoKCk9uIFR1
ZSwgU2VwIDE2LCAyMDI1IGF0IDExOjMy4oCvQU0gQWhtYWQgRmF0b3VtIDxhLmZhdG91bUBwZW5n
dXRyb25peC5kZT4gd3JvdGU6Cj4KPiBIaSwKPgo+IE9uIDkvOS8yNSAxMTozNCBBTSwgU2FzY2hh
IEhhdWVyIHdyb3RlOgo+ID4gT24gV2VkLCBTZXAgMDMsIDIwMjUgYXQgMDQ6NDY6MDVQTSArMDIw
MCwgQ2hyaXN0aWFuIFRoaWXDn2VuIHZpYSBCNCBSZWxheSB3cm90ZToKPiA+PiBGcm9tOiBDaHJp
c3RpYW4gVGhpZcOfZW4gPGNocmlzdGlhbi50aGllc3NlbkBhaXJidXMuY29tPgo+ID4+Cj4gPj4g
VGhlIGZlY19pbXggZHJpdmVyIHN0b3JlcyBhbiBlbnVtIGZlY190eXBlIHZhbHVlIGluIHRoZSBt
YXRjaCBkYXRhCj4gPj4gcG9pbnRlci4gV2hlbiByZXRyaWV2aW5nIHRoaXMgdmFsdWUgaW4gZmVj
X3Byb2JlKCksIGl0IGhhbmRsZXMKPiA+PiBGRUNfVFlQRV9JTVgyNyAod2hpY2ggaXMgMCkgbGlr
ZSBhbiBlcnJvciByZXN1bHQgZnJvbQo+ID4+IGRldmljZV9nZXRfbWF0Y2hfZGF0YSBhbmQgcmV0
dXJucyAtRU5PREVWLgo+ID4+Cj4gPj4gVG8gYmUgYWJsZSB0byBkaWZmZXJlbnRpYXRlIE5VTEwg
ZnJvbSBlcnJvcnMsIGludHJvZHVjZSBhIG5ldyBmdW5jdGlvbgo+ID4+IGRldmljZV9nZXRfbWF0
Y2hfZGF0YV9kZWZhdWx0IHdoaWNoIHJldHVybnMgaXRzIGRlZmF1bHR2YWwgYXJndW1lbnQKPiA+
PiBpbnN0ZWFkIG9mIE5VTEwgaW4gY2FzZSBvZiBlcnJvcnMuCj4gPj4gQWRkIGFuIEZFQ19UWVBF
X0NPVU5UIHZhbHVlIHRvIHRoZSBmZWNfdHlwZSBlbnVtLgo+ID4+IEluIGZlY19wcm9iZSwgcGFz
cyBGRUNfVFlQRV9DT1VOVCBhcyBkZWZhdWx0dmFsIGFuZCByZXR1cm4gLUVOT0RFViBmb3IKPiA+
PiBhbGwgdHlwZSB2YWx1ZXMgZ3JlYXRlciBvciBlcXVhbCB0byB0aGF0Lgo+ID4+Cj4gPj4gRml4
ZXM6IDIwZDg3MTIzYTYgKCJ0cmVld2lkZTogcmVwbGFjZSBkZXZfZ2V0X2RydmRhdGEgd2l0aCAg
ICAgICAgZGV2aWNlX2dldF9tYXRjaF9kYXRhIikKPiA+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3Rp
YW4gVGhpZcOfZW4gPGNocmlzdGlhbi50aGllc3NlbkBhaXJidXMuY29tPgo+ID4+IC0tLQo+ID4+
IEhpIGFnYWluLAo+ID4+Cj4gPj4gdGhpcyBwYXRjaCBhZGRyZXNzZXMgdGhlIGlzc3VlIGRpc2N1
c3NlZCBpbgo+ID4+IGh0dHBzOi8vZ2l0aHViLmNvbS9iYXJlYm94L2JhcmVib3gvaXNzdWVzLzQw
ICgiZmVjX2lteCAoYW5kIHBvc3NpYmx5Cj4gPj4gb3RoZXJzKTogUHJvYmUgZmFpbHMgd2l0aCBF
Tk9ERVYiKS4KPiA+Pgo+ID4+IENoZWVycywKPiA+PiBDaHJpc3RpYW4KPiA+PiAtLS0KPiA+PiAg
ZHJpdmVycy9iYXNlL2RyaXZlci5jIHwgMTMgKysrKysrKysrKysrKwo+ID4+ICBkcml2ZXJzL25l
dC9mZWNfaW14LmMgfCAxMiArKysrKy0tLS0tLS0KPiA+PiAgZHJpdmVycy9uZXQvZmVjX2lteC5o
IHwgIDEgKwo+ID4+ICBpbmNsdWRlL2RyaXZlci5oICAgICAgfCAxMCArKysrKysrKysrCj4gPj4g
IDQgZmlsZXMgY2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPiA+Pgo+
ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Jhc2UvZHJpdmVyLmMgYi9kcml2ZXJzL2Jhc2UvZHJp
dmVyLmMKPiA+PiBpbmRleCA2MTExODM4NWYxZGYwZjhkMzYyMDhkMjM2YmU2NmIwNzdmYTVlNTRk
Li42MTRjM2MyNmIwNGM2ZjI1MmUzOTcwZTAxNGE0M2JhZTZhMWQ5YzJiIDEwMDY0NAo+ID4+IC0t
LSBhL2RyaXZlcnMvYmFzZS9kcml2ZXIuYwo+ID4+ICsrKyBiL2RyaXZlcnMvYmFzZS9kcml2ZXIu
Ywo+ID4+IEBAIC02OTAsNiArNjkwLDE5IEBAIGNvbnN0IHZvaWQgKmRldmljZV9nZXRfbWF0Y2hf
ZGF0YShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gPj4gIH0KPiA+PiAgRVhQT1JUX1NZTUJPTChkZXZp
Y2VfZ2V0X21hdGNoX2RhdGEpOwo+ID4+Cj4gPj4gK2NvbnN0IHZvaWQgKmRldmljZV9nZXRfbWF0
Y2hfZGF0YV9kZWZhdWx0KHN0cnVjdCBkZXZpY2UgKmRldiwKPiA+PiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBjb25zdCB2b2lkICpkZWZhdWx0dmFsKQo+ID4+ICt7Cj4g
Pj4gKyAgICBpZiAoZGV2LT5vZl9pZF9lbnRyeSkKPiA+PiArICAgICAgICAgICAgcmV0dXJuIGRl
di0+b2ZfaWRfZW50cnktPmRhdGE7Cj4gPj4gKwo+ID4+ICsgICAgaWYgKGRldi0+aWRfZW50cnkp
Cj4gPj4gKyAgICAgICAgICAgIHJldHVybiAoY29uc3Qgdm9pZCAqKWRldi0+aWRfZW50cnktPmRy
aXZlcl9kYXRhOwo+ID4+ICsKPiA+PiArICAgIHJldHVybiBkZWZhdWx0dmFsOwo+ID4+ICt9Cj4g
Pj4gK0VYUE9SVF9TWU1CT0woZGV2aWNlX2dldF9tYXRjaF9kYXRhX2RlZmF1bHQpOwo+ID4KPiA+
IFRoaXMgbW9yZSBnb2VzIHRvIEFobWFkLCBiZWNhdXNlIGhlIHN1Z2dlc3RlZCB0aGlzIHNvbHV0
aW9uOgo+ID4KPiA+IEkgZG9uJ3QgbGlrZSB0aGlzIHZlcnkgbXVjaC4gV2l0aCB0aGlzIHNvbHV0
aW9uIHRoZSBkcml2ZXIgd3JpdGVyIG11c3QKPiA+IHN0aWxsIGtub3cgdGhhdCBoZSBoYXMgdG8g
Y2FsbCBkZXZpY2VfZ2V0X21hdGNoX2RhdGFfZGVmYXVsdCgpIGluc3RlYWQKPiA+IG9mIHBsYWlu
IGRldmljZV9nZXRfbWF0Y2hfZGF0YSgpLgo+Cj4gRm9yIGRyaXZlcnMgdGhhdCBhcmUgYWxyZWFk
eSB3cml0dGVuLCBpdCdzIGVhc2llciB0byBkZXNpZ25hdGUgYW4gZXJyb3IKPiBjb2RlIHRoYXQg
c2hvdWxkbid0IGhhcHBlbiB0aGFuIHNoaWZ0IGFyb3VuZCBhbGwgZXhpc3RpbmcgdmFsdWVzIGFu
ZAo+IGhvcGUgeW91IGRvbid0IG1pc3MgYW55dGhpbmcuCj4KPiA+IEluIG90aGVyIHdvcmRzLCB0
aGUgZHJpdmVyIHdyaXRlciBtdXN0IGJlIGF3YXJlIG9mIHRoaXMgcHJvYmxlbSwgc28gaGUKPiA+
IGNvdWxkIGVxdWFsbHkgd2VsbCBhdm9pZCAwIGFzIHZhbGlkIHZhbHVlIGFuZCBkZWNsYXJlCj4g
Pgo+ID4gZW51bSBmZWNfdHlwZSB7Cj4gPiAgICAgICBGRUNfVFlQRV9JTVgyNyA9IDEsCj4gPiAg
ICAgICAuLi4KPiA+IH07Cj4KPiBMaW51eCBhbHJlYWR5IGhhcyBkZXZpY2VfZ2V0X21hdGNoX2Rh
dGEoKSB3aXRoIHRoZSBzYW1lIHNlbWFudGljcyB3ZQo+IGhhdmUgaW4gYmFyZWJveCBub3csIHNv
IGlmIHdlIHdpbGwgbm90IHJ1biBpbnRvIGFkZGl0aW9uYWwgaXNzdWVzIHdoZW4KPiBjb2RlIGlz
IHBvcnRlZCBmcm9tIExpbnV4Lgo+Cj4gPiBpbiB0aGlzIGNhc2UuIEkgaGF2ZSBsb29rZWQgdXAg
YWxsIGNhc2VzIHRoYXQgcGFzcyBhbiBpbnRlZ2VyIGludG8gZGF0YQo+ID4gaW4gdGhlIHRyZWUg
YW5kIHRoZXNlIGFyZSBub3QgbWFueSwgd2UgY291bGQgY2hhbmdlIHRoZW0gZWFzaWx5Lgo+ID4K
PiA+IEFub3RoZXIgcG9zc2liaWxpdHkgd291bGQgYmUgdG8gcmV0dXJuIGFuIGVycm9yIHBvaW50
ZXIgaW5zdGVhZCBvZiBOVUxMCj4gPiBmcm9tIGRldmljZV9nZXRfbWF0Y2hfZGF0YSgpLCBidXQg
dGhhdCB3b3VsZCByZXF1aXJlIHNvbWUgcmVmYWN0b3JpbmcKPiA+IHRocm91Z2hvdXQgdGhlIHRy
ZWUuCj4KPiBUaGF0IHdvdWxkIGNoYW5nZSB0aGUgc2VtYW50aWNzIG9mIHRoZSBmdW5jdGlvbiBk
aWZmZXJlbnQgdG8gd2hhdCdzIGRvbmUKPiBpbiBMaW51eCBhbmQgd2UgZG9uJ3Qgd2FudCB0aGF0
Lgo+Cj4gPiBVbmxlc3MgQWhtYWQgb2JqZWN0cyBJIHdvdWxkIHByZWZlciBjb252ZXJ0aW5nIHRo
ZSBpbiB0cmVlIHVzZXJzIG5vdCB0bwo+ID4gdXNlIHplcm8uCj4KPiBJIHN0aWxsIHRoaW5rIHRo
ZSBhcHByb2FjaCBoZXJlIGlzIGVhc2llciB0byByZWFzb24gYWJvdXQgZm9yIGNvbnZlcnRpbmcK
PiBkcml2ZXJzLCBidXQgaWYgeW91IGhhdmUgaW52ZXN0ZWQgdGhlIHRpbWUgdG8gc2hpZnQgYXJv
dW5kIGVudW1lcmF0aW9ucwo+IGluIGFsbCB0aGUgZHJpdmVycywgd2UgY2FuIGdvIHdpdGggdGhh
dCB0b28uCj4KPiA+IEFobWFkIGlzIG9uIGhvbGlkYXkgdGhpcyB3ZWVrLCBzbyBpdCdsbCBsaWtl
bHkgdGFrZSBzb21lIHRpbWUsIGJ1dAo+ID4gYW55d2F5LCB3ZSdsbCBzb2x2ZSB0aGlzIGlzc3Vl
IGJlZm9yZSB0aGUgbmV4dCByZWxlYXNlLgo+Cj4gWWVzLCBwcmlvcml0eSBpcyBnZXR0aW5nIHRo
aXMgZml4ZWQgaW4gdGhlIG5leHQgcmVsZWFzZS4KPgo+IFRoYW5rcywKPiBBaG1hZAo+Cj4gPgo+
ID4gU2FzY2hhCj4gPgo+ID4KPiA+PiArCj4gPj4gIHN0YXRpYyB2b2lkIGRldmljZV9zZXRfZGVm
ZXJyZWRfcHJvYmVfcmVhc29uKHN0cnVjdCBkZXZpY2UgKmRldiwKPiA+PiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgdmFfZm9ybWF0ICp2YWYp
Cj4gPj4gIHsKPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZmVjX2lteC5jIGIvZHJpdmVy
cy9uZXQvZmVjX2lteC5jCj4gPj4gaW5kZXggODQ3NGU2ZDViZTljNjIyNWFmNTcwOGQyMWIwMjQ5
YjI2MThkMzZmNi4uZmFjMTkwZTZlYTUxOTUwZWQ2MDg1MjY0ZTEyNjE3OTY5ODQ3YWNiZiAxMDA2
NDQKPiA+PiAtLS0gYS9kcml2ZXJzL25ldC9mZWNfaW14LmMKPiA+PiArKysgYi9kcml2ZXJzL25l
dC9mZWNfaW14LmMKPiA+PiBAQCAtNzYzLDIwICs3NjMsMTggQEAgc3RhdGljIGludCBmZWNfcHJv
YmUoc3RydWN0IGRldmljZSAqZGV2KQo+ID4+ICAgICAgc3RydWN0IGZlY19wcml2ICpmZWM7Cj4g
Pj4gICAgICB2b2lkICpiYXNlOwo+ID4+ICAgICAgaW50IHJldDsKPiA+PiAtICAgIGVudW0gZmVj
X3R5cGUgdHlwZTsKPiA+PiAtICAgIHZvaWQgY29uc3QgKnR5cGVfdjsKPiA+PiArICAgIHVpbnRw
dHJfdCB0eXBlX3Y7Cj4gPj4gICAgICBpbnQgcGh5X3Jlc2V0Owo+ID4+ICAgICAgdTMyIG1zZWMg
PSAxLCBwaHlfcG9zdF9kZWxheSA9IDA7Cj4gPj4gICAgICB1MzIgcmVnOwo+ID4+Cj4gPj4gLSAg
ICB0eXBlX3YgPSBkZXZpY2VfZ2V0X21hdGNoX2RhdGEoZGV2KTsKPiA+PiAtICAgIGlmICghdHlw
ZV92KQo+ID4+ICsgICAgdHlwZV92ID0gKHVpbnRwdHJfdClkZXZpY2VfZ2V0X21hdGNoX2RhdGFf
ZGVmYXVsdChkZXYsCj4gPj4gKyAgICAgICAgICAgIChjb25zdCB2b2lkICopRkVDX1RZUEVfQ09V
TlQpOwo+ID4+ICsgICAgaWYgKHR5cGVfdiA+PSBGRUNfVFlQRV9DT1VOVCkKPiA+PiAgICAgICAg
ICAgICAgcmV0dXJuIC1FTk9ERVY7Cj4gPj4KPiA+PiAtICAgIHR5cGUgPSAodWludHB0cl90KSh0
eXBlX3YpOwo+ID4+IC0KPiA+PiAgICAgIGZlYyA9IHh6YWxsb2Moc2l6ZW9mKCpmZWMpKTsKPiA+
PiAtICAgIGZlYy0+dHlwZSA9IHR5cGU7Cj4gPj4gKyAgICBmZWMtPnR5cGUgPSB0eXBlX3Y7Cj4g
Pj4gICAgICBmZWMtPmRldiA9IGRldjsKPiA+PiAgICAgIGVkZXYgPSAmZmVjLT5lZGV2Owo+ID4+
ICAgICAgZGV2LT5wcml2ID0gZmVjOwo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9mZWNf
aW14LmggYi9kcml2ZXJzL25ldC9mZWNfaW14LmgKPiA+PiBpbmRleCAxYWFmZjg3ZmRkZmI0NGNm
NTU4NDM2YWI0YTg0Njc1N2M2Y2Q1MWFhLi45NTQ5ZGFiMGY4ZTg4Mjg4YmQ5ZmUzYTAyZmY4YmQ1
NTczMTQ3ODQyIDEwMDY0NAo+ID4+IC0tLSBhL2RyaXZlcnMvbmV0L2ZlY19pbXguaAo+ID4+ICsr
KyBiL2RyaXZlcnMvbmV0L2ZlY19pbXguaAo+ID4+IEBAIC0xMTcsNiArMTE3LDcgQEAgZW51bSBm
ZWNfdHlwZSB7Cj4gPj4gICAgICBGRUNfVFlQRV9JTVgyNywKPiA+PiAgICAgIEZFQ19UWVBFX0lN
WDI4LAo+ID4+ICAgICAgRkVDX1RZUEVfSU1YNiwKPiA+PiArICAgIEZFQ19UWVBFX0NPVU5ULAo+
ID4+ICB9Owo+ID4+Cj4gPj4gIGVudW0gZmVjX2Nsb2NrIHsKPiA+PiBkaWZmIC0tZ2l0IGEvaW5j
bHVkZS9kcml2ZXIuaCBiL2luY2x1ZGUvZHJpdmVyLmgKPiA+PiBpbmRleCBjMTMwYTNjZDYzZmQ1
ZTZkYzM2NWEzM2M3NjVhMjJkYzRlMmNhOTBhLi4yMjM3OTkyOTRmYzBlMzJjZWIxM2ZjNWJkYTJl
M2I4YTc4ZDcxNjQ3IDEwMDY0NAo+ID4+IC0tLSBhL2luY2x1ZGUvZHJpdmVyLmgKPiA+PiArKysg
Yi9pbmNsdWRlL2RyaXZlci5oCj4gPj4gQEAgLTY1MCw2ICs2NTAsMTYgQEAgaW50IGNkZXZmc19k
ZWxfcGFydGl0aW9uKHN0cnVjdCBjZGV2ICpjZGV2KTsKPiA+PiAgICovCj4gPj4gIGNvbnN0IHZv
aWQgKmRldmljZV9nZXRfbWF0Y2hfZGF0YShzdHJ1Y3QgZGV2aWNlICpkZXYpOwo+ID4+Cj4gPj4g
Ky8qKgo+ID4+ICsgKiBkZXZpY2VfZ2V0X21hdGNoX2RhdGFfZGVmYXVsdCAtIGdldCBkcml2ZXIg
bWF0Y2ggZGF0YSBhc3NvY2lhdGVkIHdpdGggZGV2aWNlCj4gPj4gKyAqIEBkZXY6IGRldmljZSBp
bnN0YW5jZQo+ID4+ICsgKiBAZGVmYXVsdHZhbDogVmFsdWUgdG8gcmV0dXJuIGlmIG5vIG1hdGNo
IGRhdGEgaXMgYXNzb2NpYXRlZCB3aXRoIGRldgo+ID4+ICsgKgo+ID4+ICsgKiBSZXR1cm5zIG1h
dGNoIGRhdGEgb24gc3VjY2VzcyBhbmQgZGVmYXVsdHZhbCBvdGhlcndpc2UKPiA+PiArICovCj4g
Pj4gK2NvbnN0IHZvaWQgKmRldmljZV9nZXRfbWF0Y2hfZGF0YV9kZWZhdWx0KHN0cnVjdCBkZXZp
Y2UgKmRldiwKPiA+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb25z
dCB2b2lkICpkZWZhdWx0dmFsKTsKPiA+PiArCj4gPj4gIGludCBkZXZpY2VfbWF0Y2hfb2ZfbW9k
YWxpYXMoc3RydWN0IGRldmljZSAqZGV2LCBjb25zdCBzdHJ1Y3QgZHJpdmVyICpkcnYpOwo+ID4+
Cj4gPj4gIHN0cnVjdCBkZXZpY2UgKmRldmljZV9maW5kX2NoaWxkKHN0cnVjdCBkZXZpY2UgKnBh
cmVudCwgdm9pZCAqZGF0YSwKPiA+Pgo+ID4+IC0tLQo+ID4+IGJhc2UtY29tbWl0OiA3Njg5MzE0
ZDBhNzg2MDVlN2Q0YTBjM2NlNDk1M2Q5ZDc2OGFhMzQzCj4gPj4gY2hhbmdlLWlkOiAyMDI1MDkw
My1mZWNfaW14LWZpeC1lbm9kZXYtZjdhOTA4NzA1NGM4Cj4gPj4KPiA+PiBCZXN0IHJlZ2FyZHMs
Cj4gPj4gLS0KPiA+PiBDaHJpc3RpYW4gVGhpZcOfZW4gPGNocmlzdGlhbi50aGllc3NlbkBhaXJi
dXMuY29tPgo+ID4+Cj4gPj4KPiA+Pgo+ID4+Cj4gPgo+Cj4gLS0KPiBQZW5ndXRyb25peCBlLksu
ICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+IFN0ZXVl
cndhbGRlciBTdHIuIDIxICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUv
ICB8Cj4gMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIx
LTIwNjkxNy0wICAgIHwKPiBBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgfCBGYXg6
ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAo+ClRoZSBpbmZvcm1hdGlvbiBpbiB0aGlzIGUtbWFp
bCBpcyBjb25maWRlbnRpYWwuIFRoZSBjb250ZW50cyBtYXkgbm90IGJlIGRpc2Nsb3NlZCBvciB1
c2VkIGJ5IGFueW9uZSBvdGhlciB0aGFuIHRoZSBhZGRyZXNzZWUuIEFjY2VzcyB0byB0aGlzIGUt
bWFpbCBieSBhbnlvbmUgZWxzZSBpcyB1bmF1dGhvcmlzZWQuCklmIHlvdSBhcmUgbm90IHRoZSBp
bnRlbmRlZCByZWNpcGllbnQsIHBsZWFzZSBub3RpZnkgQWlyYnVzIGltbWVkaWF0ZWx5IGFuZCBk
ZWxldGUgdGhpcyBlLW1haWwuCkFpcmJ1cyBjYW5ub3QgYWNjZXB0IGFueSByZXNwb25zaWJpbGl0
eSBmb3IgdGhlIGFjY3VyYWN5IG9yIGNvbXBsZXRlbmVzcyBvZiB0aGlzIGUtbWFpbCBhcyBpdCBo
YXMgYmVlbiBzZW50IG92ZXIgcHVibGljIG5ldHdvcmtzLiBJZiB5b3UgaGF2ZSBhbnkgY29uY2Vy
bnMgb3ZlciB0aGUgY29udGVudCBvZiB0aGlzIG1lc3NhZ2Ugb3IgaXRzIEFjY3VyYWN5IG9yIElu
dGVncml0eSwgcGxlYXNlIGNvbnRhY3QgQWlyYnVzIGltbWVkaWF0ZWx5LgpBbGwgb3V0Z29pbmcg
ZS1tYWlscyBmcm9tIEFpcmJ1cyBhcmUgY2hlY2tlZCB1c2luZyByZWd1bGFybHkgdXBkYXRlZCB2
aXJ1cyBzY2FubmluZyBzb2Z0d2FyZSBidXQgeW91IHNob3VsZCB0YWtlIHdoYXRldmVyIG1lYXN1
cmVzIHlvdSBkZWVtIHRvIGJlIGFwcHJvcHJpYXRlIHRvIGVuc3VyZSB0aGF0IHRoaXMgbWVzc2Fn
ZSBhbmQgYW55IGF0dGFjaG1lbnRzIGFyZSB2aXJ1cyBmcmVlLgo=



