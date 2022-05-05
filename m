Delivery-date: Thu, 05 May 2022 11:43:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmY1b-002Zrs-MD
	for lore@lore.pengutronix.de; Thu, 05 May 2022 11:43:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmY1a-0007Az-ER
	for lore@pengutronix.de; Thu, 05 May 2022 11:43:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KFryU/qiTbyhSOKjuOPSBon2rLynriE/FB7+TZcPc+c=; b=rIKlERodTeNRgF
	XTecZL5ixxmpME8WXpehitlBOzm3v7NNii9oFhTrsF/qKignn3lx3dTD2lvF0t9cZlGBp3Loc9mPc
	cMBFaX6zxPK74MNm2O7/R3oLHZ19BXDKpb8Gk1iKoIgBzrod0IMWKNpYrCPk61a6BksR8ep6yVrii
	zc+BzooosdZsEGWuMhtxAtwxFl494GcTJVG7l6o38K3apUI6zngR9COlgXcKLCECLL9pMtEID9gH/
	2SS5ir9Ki9r4afFHbG6TZZsodsfT+YHRxXr56iMNhsuTkAQA4sCnH2Izp1mDEAUnt9Crl26S1GNhp
	GVGcRIuz1Co6h6+lNaug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmY0G-00F5Ya-0N; Thu, 05 May 2022 09:42:32 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmY0C-00F5Xr-2L
 for barebox@lists.infradead.org; Thu, 05 May 2022 09:42:29 +0000
Received: by mail-pj1-x1030.google.com with SMTP id p6so3711819pjm.1
 for <barebox@lists.infradead.org>; Thu, 05 May 2022 02:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=MPbctcHFVkmdxaCQXc0IclMIQ1w8OVess5Aaz92Wn/I=;
 b=EeACF0IgXxZFb5tAuOxCbQ8YR3CTZBgF9lWRxy99myizhEiJKDAQUMdlr94facGb2d
 +5PXhzuX8vvAKHX4Ds4TQVQsOXZazIw0Nqbfz2aEKxamreJuRbOtA48yWBnZSA0u6Og5
 Hf+AbjtLwCcp0za9D5hCFeoVy3x85VjTXKthdL91zKfKNVclNkdja+1oiAMOCd90IWn7
 rALl9FT+mRGrpEDUBc2KBLi9vPe+Yi083ClBABeAKqEqQkOQSmzEWnzhytr5vVu4RQyK
 E6S55OsPP10SaWF0tvwvKzWRPQQJV0xIk4GykJuCQ5HQ+RVCnpCR+GpMUAHw6evw7K9P
 P+AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=MPbctcHFVkmdxaCQXc0IclMIQ1w8OVess5Aaz92Wn/I=;
 b=2eRqElT5NEu5kExZ6IRPjGqhXbcwyajSNwFbxe1EbgTkbzEo7WKBZEbnTt8x2kmsHy
 ClMCMCgY9eS3zrUZItQZDXjLqRtuzVbBqSc5AIhhbDS9ZpevY5z1mSkArONZtqW0wxrr
 y9ngtzssS+HaDcssCpSezGwjcc9DSSUSujPEKo00D2OhudYvntrD5bZkko5HHwL6jX2g
 mdOGRz8JPVmlHMzroREf2ndB3zTKrMvH283MsjhtvT0IJeHOxBdcVoAbXVi29nxal+iJ
 B2D3x/BlqauwezcrfxcsaP+vQAD8eiFOt2CYrfuEFm9U5JqWnjM72Hh14YE6cFXCHMNG
 LlTQ==
X-Gm-Message-State: AOAM533zqeI9oiv4Ccu2bi0No2R6By6bHYJ9SASgX6Up0lno7Hg5hW8n
 Mz/8ihndIhDo6Fu0+3qcctqy4ogllFOBDvoPQHczW2jpPe8mUQ==
X-Google-Smtp-Source: ABdhPJzfKOXy4Sp8bwyufV4Y7uu0JMfjsK2m3tgYRXEYMGukaVhyTQILatCWoeZZtYlze4QidIZLJO4Wxa/9mqO+KD4=
X-Received: by 2002:a17:90a:ec16:b0:1da:3249:685b with SMTP id
 l22-20020a17090aec1600b001da3249685bmr4980772pjy.101.1651743746534; Thu, 05
 May 2022 02:42:26 -0700 (PDT)
MIME-Version: 1.0
References: <20220505073604.15065-1-eagle.alexander923@gmail.com>
 <20220505081353.GL4012@pengutronix.de>
In-Reply-To: <20220505081353.GL4012@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 5 May 2022 12:42:13 +0300
Message-ID: <CAP1tNvRjO1o9RT+XgM3tJ37UPbC_Uj8rg6MZhCCULN8XmXUX2A@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_024228_147854_7FD662DF 
X-CRM114-Status: GOOD (  14.16  )
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
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: OMAP: debug_ll: Use Kconfig UART base address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

0YfRgiwgNSDQvNCw0Y8gMjAyMiDQsy4g0LIgMTE6MTMsIFNhc2NoYSBIYXVlciA8c2hhQHBlbmd1
dHJvbml4LmRlPjoKPiBIaSBBbGV4YW5kZXIsCj4gT24gVGh1LCBNYXkgMDUsIDIwMjIgYXQgMTA6
MzY6MDRBTSArMDMwMCwgQWxleGFuZGVyIFNoaXlhbiB3cm90ZToKPiA+IFNpZ25lZC1vZmYtYnk6
IEFsZXhhbmRlciBTaGl5YW4gPGVhZ2xlLmFsZXhhbmRlcjkyM0BnbWFpbC5jb20+Cj4gPiAtLS0K
PiA+ICBhcmNoL2FybS9ib2FyZHMvYWZpLWdmL2xvd2xldmVsLmMgICAgICAgICAgICB8ICAyICst
Cj4gPiAgYXJjaC9hcm0vYm9hcmRzL2JlYWdsZS9sb3dsZXZlbC5jICAgICAgICAgICAgfCAgMiAr
LQo+ID4gIGFyY2gvYXJtL2JvYXJkcy9iZWFnbGVib25lL2xvd2xldmVsLmMgICAgICAgIHwgIDIg
Ky0KPiA+ICBhcmNoL2FybS9ib2FyZHMvbXlpcnRlY2gteDMzNXgvbG93bGV2ZWwuYyAgICB8ICAy
ICstCj4gPiAgYXJjaC9hcm0vYm9hcmRzL3BoeXRlYy1zb20tYW0zMzV4L2xvd2xldmVsLmMgfCAg
MiArLQo+ID4gIGFyY2gvYXJtL2JvYXJkcy92c2NvbS1iYWx0b3MvbG93bGV2ZWwuYyAgICAgIHwg
IDIgKy0KPiA+ICBhcmNoL2FybS9ib2FyZHMvd2Fnby1wZmMtYW0zNXh4L2xvd2xldmVsLmMgICB8
ICAyICstCj4gPiAgYXJjaC9hcm0vbWFjaC1vbWFwL2luY2x1ZGUvbWFjaC9kZWJ1Z19sbC5oICAg
fCA0MyArKysrKysrKysrKystLS0tLS0tLQo+ID4gIDggZmlsZXMgY2hhbmdlZCwgMzMgaW5zZXJ0
aW9ucygrKSwgMjQgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jv
YXJkcy9hZmktZ2YvbG93bGV2ZWwuYyBiL2FyY2gvYXJtL2JvYXJkcy9hZmktZ2YvbG93bGV2ZWwu
Ywo+ID4gaW5kZXggZGU0MGY2YzVhZi4uOWU4NmIyOWIyZCAxMDA2NDQKPiA+IC0tLSBhL2FyY2gv
YXJtL2JvYXJkcy9hZmktZ2YvbG93bGV2ZWwuYwo+ID4gKysrIGIvYXJjaC9hcm0vYm9hcmRzL2Fm
aS1nZi9sb3dsZXZlbC5jCj4gPiBAQCAtMjMwLDcgKzIzMCw3IEBAIHN0YXRpYyBub2lubGluZSBp
bnQgZ2Zfc3JhbV9pbml0KHZvaWQpCj4gPgo+ID4gICAgICAgYW0zM3h4X3VhcnRfc29mdF9yZXNl
dCgodm9pZCAqKUFNMzNYWF9VQVJUMl9CQVNFKTsKPiA+ICAgICAgIGFtMzN4eF9lbmFibGVfdWFy
dDJfcGluX211eCgpOwo+ID4gLSAgICAgb21hcF91YXJ0X2xvd2xldmVsX2luaXQoKHZvaWQgKilB
TTMzWFhfVUFSVDJfQkFTRSk7Cj4gPiArICAgICBvbWFwX3VhcnRfbG93bGV2ZWxfaW5pdCgpOwo+
Cj4gSSBkb24ndCB0aGluayByZW1vdmluZyB0aGUgYmFzZSBhZGRyZXNzIGZyb20gb21hcF91YXJ0
X2xvd2xldmVsX2luaXQoKQo+IGlzIGEgc3RlcCBmb3J3YXJkLiBDT05GSUdfREVCVUdfTEwgaXMg
b25seSBvbmUgcG9zc2libGUgdXNlY2FzZSBmb3IgdGhpcwo+IGZ1bmN0aW9uLCBhbm90aGVyIG9u
ZSBpcyBmb3IgcmVndWxhciBlYXJseSBjb25zb2xlIHdpdGggcGJsX3NldF9wdXRjKCkuCgpPay4g
UGxlYXNlIHRha2UgYSBsb29rIGF0IHRoZSBwYXRjaCBpbiB0aGUgbmV4dCBtZXNzYWdlLCBpcyB0
aGlzIGhvdwppdCBzaG91bGQgYmU/CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94
Cg==

