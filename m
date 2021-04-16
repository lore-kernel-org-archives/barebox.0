Delivery-date: Fri, 16 Apr 2021 19:59:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXSky-0001tL-PI
	for lore@lore.pengutronix.de; Fri, 16 Apr 2021 19:59:52 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXSkx-0003Yk-Ig
	for lore@pengutronix.de; Fri, 16 Apr 2021 19:59:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=j02pvMQDkkpQBrSjrou6TJKT185m4z3MV6E+ZbbJGqM=; b=HINc3KspGza/FuiopKldjLjED
	RkG46QRJNwntuv9WRhaRQIHwxQz3dRYP94BuMiVQT0gFNJqvTFkSYqgD7WQkSgiwfQ82cZXF2xdVP
	dDTZCL41XUAG7HYrY+eo6lnPyV/rkpY90JrTPsxQZEfhwLNi+Fskhef27IOnjX9iYJAbbUiCvYkM6
	5UgvcEUH0darHf9880/EXI1bFy07rqXez16b71EcRVD7/6LVt0uxhJKVX4Yjp/jyD+2RdffP/nDJe
	xek1+aCcTmfERs/jLICacH2Fa05Bh21NpGAqb9GASBzxnpflhBH1P4jCAuWPloUSNgwpRZVzCDCiX
	ZTw5zH49g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXSjl-0030pg-3m; Fri, 16 Apr 2021 17:58:37 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXSjZ-0030n8-OR
 for barebox@desiato.infradead.org; Fri, 16 Apr 2021 17:58:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-ID:Content-Description;
 bh=IoegNwyH+fGE+GSttI3I8NRdB239v/QrbZeGM2GfAnA=; b=giIytLfKsGL3KNw9j1XP64VwLU
 wfBtj4QkVcJmFQZk3ohzi7rVV9or9Bv5LwrP02RVfGXl7pxE0v07Mf1X+DqFMXKehZJcQrYxo/DVx
 pZWbi87kqTuCW+hoPI4oWb5oEhLtlX+gzOsvBdKDNulxzRT+7HJt4Z9oobs2nSGj7kUtluMT+T1ZY
 kdhbOnoanXOlfxrQBGrgeCABYcRr66tV3ZQ2KlYC2C1xYurNq3Us/aOdInHtzc2JkTTwYb5zwQ82A
 hHPpi+GpeRtjfRe91ktFS1IdCgogbrfXqH7ziQAKRyLUoSzWIMpaipbUw1J92QgdPTRu43XnC3won
 Tc8dwspA==;
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXSjU-009bsf-TY
 for barebox@lists.infradead.org; Fri, 16 Apr 2021 17:58:24 +0000
Received: by mail-qk1-x729.google.com with SMTP id t17so1273282qkg.4
 for <barebox@lists.infradead.org>; Fri, 16 Apr 2021 10:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=IoegNwyH+fGE+GSttI3I8NRdB239v/QrbZeGM2GfAnA=;
 b=jfPG2tMMgb5U3YEdVukmLvPAUQuz1wyCU1BRNKVFS5x7Hg+xfxSWsF/YfDLq6Vi4Rh
 zXe7y5Uh4dAGLMxV8Q7Wf9PkSQtrOn0Cbq68bG9EYw1wbNjxaKdBv1ccHoyX1suXBdt1
 fuWBOxb0cey+leqlHvX1wEm2n4ikqZNEQ07Qm5yMJWYb0VGPHLI1q8rZ/n0E9BS90z7w
 XNiB4Qp4cr8GZMqsKC/2lBk1eszW8xxvncj9PcAHPHO3yO50QVtmQECck1UvO7e2m1jJ
 CCVu6jHLemuVn3r3TRr2qVL1QEjNVdD3upbYQ8ncd6EBD9V3pCMqqyWp6Upr5nHBpY/b
 VFZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=IoegNwyH+fGE+GSttI3I8NRdB239v/QrbZeGM2GfAnA=;
 b=sYZOcQcYlBFNLwDFzzjgBtQIDu38AczMUa+oMnqRc8HvmbSYs2g7FNatRXC3SmvXVR
 TRt2hMKSXEl8AoIoWXdyMgJzBxDoL6KMT468FiBYOgTP7f/Cv5dQnKQK9mBvmqSfRRV+
 or8wz7sCZJ6REzXmeTwlfoSFrv6oSmSFIspG1485VG5qZoeH/k3MRPltiOrmZ1xRv9lu
 /ad1lMnZdw+6+feX8DnBuOj/cSHL1R5VZcPVat4v8/ENSumdIOlHboY3avCouiv16mpt
 BsdDUm1OSsF19TETSx3nK+f5kasJXIcmXihHmq8hJdccfSG7qJqB3y8SvOCOXn1sjVIc
 vWhQ==
X-Gm-Message-State: AOAM532WPAc3mWG2dKI0pMhtinGd/jOLlnsTZ4Ob5VFnv0VD70Bmh0E/
 0LjIaWDY36WoxYwDcViXq7Je7OXFIl58iQgrxM0=
X-Google-Smtp-Source: ABdhPJzEDA8O80jfmMwru0WlrtWLCgSnxnsrqEz8uJq79eslqIZS5ja9SdaIGd3C+49MkqwzNVM199K//9Bk6c1jP/U=
X-Received: by 2002:ae9:e8d5:: with SMTP id a204mr387755qkg.409.1618595896702; 
 Fri, 16 Apr 2021 10:58:16 -0700 (PDT)
MIME-Version: 1.0
References: <CANi4_RVykfmmyPAcDbBAz2O134kB8d7h0nzPr7H1o92jWBe6Ow@mail.gmail.com>
 <acf0a309-ab9c-c082-ccc1-358216a68232@pengutronix.de>
In-Reply-To: <acf0a309-ab9c-c082-ccc1-358216a68232@pengutronix.de>
From: Neeraj Pal <neerajpal09@gmail.com>
Date: Fri, 16 Apr 2021 23:28:05 +0530
Message-ID: <CANi4_RW3TxRf+EghmEqfUGH3pBB48=1S5D2+0O00CuAn-279Mg@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_105820_978968_DD553F16 
X-CRM114-Status: GOOD (  18.31  )
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
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: network configuration setup - dhcp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGksCgpPbiBXZWQsIEFwciAxNCwgMjAyMSBhdCAxMjozNyBBTSBBaG1hZCBGYXRvdW0gPGEuZmF0
b3VtQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPgo+IFRoZXJlIGlzIG1vcmUgZG9jdW1lbnRhdGlv
biBiZXNpZGVzIHRoZSBSRUFETUUuIEZvciBuZXR3b3JraW5nIHNlZQo+IGh0dHBzOi8vYmFyZWJv
eC5vcmcvZG9jL2xhdGVzdC91c2VyL25ldHdvcmtpbmcuaHRtbAoKVGhhbmsgeW91IGZvciB0aGUg
ZG9jdW1lbnRhdGlvbi4gSSByZWFkIHRoZW0gYW5kIGNvbmZpZ3VyZWQgdGhlIHZhbHVlcwpidXQg
aXQgaXMgbm90IHdvcmtpbmcsIHNvIGl0IG1heSBiZSBwb3NzaWJsZSB0aGF0IEkgYW0gbm90IGRv
aW5nIGl0CmNvcnJlY3RseS4KCj4gVGhlIGRlZmF1bHQgYmFyZWJveCBib290IHRhcmdldCBpcyB0
byBuZXQgYm9vdC4gSXQnbGwgdHJ5IHRvIGdldAo+IGEgREhDUCBhZGRyZXNzIGFuZCB0aGVuIGxv
YWQgc29tZSBwcmVkZWZpbmVkIGZpbGVzIG92ZXIgVEZUUAo+IChJZiBpdCBmYWlscywgaXQnbGwg
dGVsbCB5b3Ugd2hpY2ggb25lcykuCj4KPiBJZiB0aGF0IGRpZG4ndCB3b3JrLCB5b3UnbGwgbmVl
ZCB0byB0ZWxsIG1vcmUgYWJvdXQgeW91ciBzZXR1cD8KPiBXaGF0IGJvYXJkIGFyZSB5b3UgdXNp
bmcgYmFyZWJveCBvbj8KClRoYW5rIHlvdSBmb3IgdGhlIGluZm9ybWF0aW9uLiBBdCBwcmVzZW50
LCBJIGhhdmVuJ3QgdHJpZWQgaXQgb24gYW55CmJvYXJkIGFzIEkgYW0gdXNpbmcgaXQgYXMgU2Fu
ZGJveCBidXQgSSBoYXZlIEJlYWdsZUJvbmUgQmxhY2sgYW5kClJhc3BiZXJyeSBQaSAzQi4KCj4g
UGFydCBvZiB0aGUgcXVlc3Rpb24gcmVhZHMgbGlrZSB5b3UgYXJlIHVzaW5nIGl0IHdoaWxlIExp
bnV4IGlzCj4gcnVubmluZyAoc2FuZGJveCkgYW5kIHNvbWUgb3RoZXIgbGlrZSB5b3UnZCBydW4g
aXQgZGlyZWN0bHkgYXMKPiBib290bG9hZGVyLiBBbHNvIHdoYXQga2luZCBvZiBlcnJvcnMgZG8g
eW91IGdldCwgY2FuIHlvdSBjb3B5IHRoZW0gaGVyZT8KClllcywgSSBhbSB0cnlpbmcgdG8gZXhl
Y3V0ZSBpdCBhcyBTYW5kYm94IGFuZCB3aGlsZSBleGVjdXRpbmcgdGhyb3VnaApzdWRvIHBsZWFz
ZSBmaW5kIHRoZSBpbmZvcm1hdGlvbiBnaXZlbiBiZWxvdzoKCnN1ZG8gLi9iYXJlYm94CgphZGQg
c3RpY2t5cGFnZSBpbml0aWFsbHkgdW5iYWNrZWQgYnkgZmlsZQoKCmJhcmVib3ggMjAyMS4wNC4w
LTAwMDU2LWdhZjBmMDY4YTYgIzEgRnJpIEFwciAxNiAyMzoxMTowMSBJU1QgMjAyMQoKCkJvYXJk
OiBTYW5kYm94CmNvbnNvbGU6IHJlZ2lzdGVyZWQgYXMgY3MwCm5ldGNvbnNvbGU6IHJlZ2lzdGVy
ZWQgYXMgbmV0Y29uc29sZS0xCmhvc3RmaWxlIDdmNDU1YjA5YTAwMC5zdGlja3lwYWdlLm9mOiBy
ZWdpc3RlcmVkIGFzIGNoYXJhY3RlciBkZXZpY2UKc2FuZGJveC13YXRjaGRvZyB3YXRjaGRvZy5v
ZjogcHJvYmVkCm1hbGxvYyBzcGFjZTogMHg3ZjQ1NTllMjEwMTAgLT4gMHg3ZjQ1NWFlMjEwMGYg
KHNpemUgMTYgTWlCKQpzdGF0ZTogTmV3IHN0YXRlIHJlZ2lzdGVyZWQgJ3N0YXRlJwpFUlJPUjog
c3RhdGU6IE5vIG1ldGEgZGF0YSBoZWFkZXIgZm91bmQKRVJST1I6IHN0YXRlOiBObyBtZXRhIGRh
dGEgaGVhZGVyIGZvdW5kCkVSUk9SOiBzdGF0ZTogTm8gbWV0YSBkYXRhIGhlYWRlciBmb3VuZApF
UlJPUjogc3RhdGU6IEZhaWxlZCB0byBmaW5kIGFueSB2YWxpZCBzdGF0ZSBjb3B5IGluIGFueSBi
dWNrZXQKRVJST1I6IHN0YXRlOiBGYWlsZWQgdG8gcmVhZCBzdGF0ZSB3aXRoIGZvcm1hdCByYXcs
IC0yCldBUk5JTkc6IHN0YXRlIHN0YXRlLm9mOiBGYWlsZWQgdG8gbG9hZCBwZXJzaXN0ZW50IHN0
YXRlLCBjb250aW51aW5nCndpdGggZGVmYXVsdHMsIC0yCnN1cGVyOiBKRkZTIHZlcnNpb24gMi4y
LiDCqSAyMDAxLTIwMDYgUmVkIEhhdCwgSW5jLgplbnZmczogbm8gZW52ZnMgKG1hZ2ljIG1pc21h
dGNoKSAtIGVudmZzIG5ldmVyIHdyaXR0ZW4/CgoqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqCioqKiAgIEluY29uc2lzdGVudCBiYXJlYm94IHN0
YXRlIGJ1Y2tldHMgZGV0ZWN0ZWQgICAqKioKKioqICAgICAgICAgVGhpcyBpcyBub3JtYWwgZm9y
IGEgZmlyc3QgYm9vdCAgICAgICAgICoqKgoqKiogYmFyZWJveCB3aWxsIHJlcGFpciB0aGVtIG9u
IG5leHQgcG93ZXJvZmYvcmVzZXQgKioqCioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioKYmFyZWJveEBTYW5kYm94Oi8gcGluZyBnb29nbGUuY29t
CkVSUk9SOiBkbnM6IG5vIG5hbWVzZXJ2ZXIgc3BlY2lmaWVkIGluICRuZXQubmFtZXNlcnZlcgpw
aW5nIGZhaWxlZDogTm8gcm91dGUgdG8gaG9zdApiYXJlYm94QFNhbmRib3g6LyBkaGNwCldBUk5J
Tkc6IGV0aDA6IE5vIE1BQyBhZGRyZXNzIHNldC4gVXNpbmcgcmFuZG9tIGFkZHJlc3MgOWU6NDc6
ZTA6MGI6Y2I6YWIKVCBUIFQgVCBUIFQgVCBUIFQgVCBUIFQgVCBUIFQgVCBUIFQgVCBUIGRoY3A6
IENvbm5lY3Rpb24gdGltZWQgb3V0CmJhcmVib3hAU2FuZGJveDovIHBpbmcgZ29vZ2xlLmNvbQpF
UlJPUjogZG5zOiBubyBuYW1lc2VydmVyIHNwZWNpZmllZCBpbiAkbmV0Lm5hbWVzZXJ2ZXIKcGlu
ZyBmYWlsZWQ6IE5vIHJvdXRlIHRvIGhvc3QKYmFyZWJveEBTYW5kYm94Oi8KCmJhcmVib3hAU2Fu
ZGJveDovIGRldmluZm8KYC0tIGdsb2JhbApgLS0gbnYKYC0tIHBsYXRmb3JtCiAgIGAtLSBtYWNo
aW5lCiAgIGAtLSBzdGF0ZS5vZgogICBgLS0gN2Y0NTViMDlhMDAwLnN0aWNreXBhZ2Uub2YKICAg
ICAgYC0tIDB4MDAwMDAwMDAtMHgwMDAwMGZmZiAoICAgICA0IEtpQik6IC9kZXYvc3RpY2t5cGFn
ZQogICAgICBgLS0gMHgwMDAwMDQwMC0weDAwMDAwYmZmICggICAgIDIgS2lCKTogL2Rldi9zdGlj
a3lwYWdlLmVudgogICAgICBgLS0gMHgwMDAwMGMwMC0weDAwMDAwZmZmICggICAgIDEgS2lCKTog
L2Rldi9zdGlja3lwYWdlLnN0YXRlCiAgICAgIGAtLSBibW9kZQogICAgICBgLS0gN2Y0NTViMDlh
MDAwLnN0aWNreXBhZ2U6cGFydGl0aW9ucy5vZgogICBgLS0gcG93ZXIub2YKICAgYC0tIHdhdGNo
ZG9nLm9mCiAgICAgIGAtLSB3ZG9nMAogICBgLS0gc291bmQub2YKICAgYC0tIGxlZC5vZgogICBg
LS0gY29uc29sZTAKICAgICAgYC0tIGNzMAogICAgICAgICBgLS0gMHgwMDAwMDAwMC0weGZmZmZm
ZmZmZmZmZmZmZmYgKCAgIDAgQnl0ZXMpOiAvZGV2L2NzMAogICBgLS0gbWVtMAogICAgICBgLS0g
MHgwMDAwMDAwMC0weGZmZmZmZmZmZmZmZmZmZmYgKCAgIDAgQnl0ZXMpOiAvZGV2L21lbQogICBg
LS0gbmV0Y29uc29sZQogICAgICBgLS0gMHgwMDAwMDAwMC0weGZmZmZmZmZmZmZmZmZmZmYgKCAg
IDAgQnl0ZXMpOiAvZGV2L25ldGNvbnNvbGUtMQogICBgLS0gdGFwMAogICAgICBgLS0gZXRoMAog
ICBgLS0gc2RsZmIwCiAgIGAtLSBkZXZyYW5kb20wCiAgIGAtLSBjaG9zZW46ZW52aXJvbm1lbnQu
b2YKYC0tIHNwaQpgLS0gaTJjCmAtLSBmcwogICBgLS0gcmFtZnMwCiAgIGAtLSBkZXZmczAKICAg
YC0tIHBzdG9yZTAKYC0tIHN0YXRlCmJhcmVib3hAU2FuZGJveDovCgpJIGFtIGRvaW5nIHBpbmcg
YnV0IGl0IGRvZXNuJ3QgaGF2ZSBhbnkgZG5zIGVudHJ5IGFuZCByb3V0ZSB0byByZXNvbHZlIGl0
LgoKUGxlYXNlIGxldCBtZSBrbm93IGZvciBhbnkgb3RoZXIgaW5mb3JtYXRpb24uCgpUaGFua3Mg
YW5kIHJlZ2FyZHMsCk5lZXJhagoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

