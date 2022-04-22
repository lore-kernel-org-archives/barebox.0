Delivery-date: Fri, 22 Apr 2022 09:27:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nhnh6-00Athw-8U
	for lore@lore.pengutronix.de; Fri, 22 Apr 2022 09:27:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nhnh3-0007xw-Of
	for lore@pengutronix.de; Fri, 22 Apr 2022 09:27:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B9joRO7VqJ+4RQG6lbh0l2Tz3ceCRTM8yPTaPK6dejs=; b=VurrflVxQNSjXl
	T2UjVSX7Uw893HCQ2yq4VkcySdCh8LhCwjJ814aWtBuKUVlN3oueSXyF0WzRw39LK9mlGyX2SfgNx
	Z/DCF0N4JgpNoEfXBaih8qkxAaTzUJDRTU6x5PcUYmRtyMfifGBqX9f2X2axyI+Jc9cnvHwu24aUX
	M6I3g1d5vZIQMj6gVdGV8lgcRdUnaKuZhvHsokoMF5+tLHkh9q5VM+f8JQgmz4GkNzeZPVOdDAnoG
	4UZB8nbmH4O2Gt4Qk2KCrn87t1KLW5XxR7wjeSEPnwF9oLubT5DtxIpS4mEwPKjI+Sh8cJg3R5vNZ
	72NJvpbraUVde1AX70MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhnfg-00Gmz3-8L; Fri, 22 Apr 2022 07:25:40 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhnfb-00GmyB-Gd
 for barebox@lists.infradead.org; Fri, 22 Apr 2022 07:25:36 +0000
Received: by mail-pl1-x633.google.com with SMTP id n8so9039979plh.1
 for <barebox@lists.infradead.org>; Fri, 22 Apr 2022 00:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=w8hqjHZq5axi/BqKEPaHmlkQPIf3RNlUWjQqMdLXook=;
 b=IS7btOdacTfGG2Bqq0voovL2J6sdQlxYHNUoxKUkrHJoRjvKyxQG5iMxVwx0h9fLZ6
 +MV+GIYAk8E6cKOq3Kk6VdQBx2Cc7b9tsmLl4DS/sV8xgMxY01dTEEd0D8rMGgH8+an4
 ktkUA8nhfdO5YxYvmCemn/aZMmoizCNQpKtLeoaXVfAMqKtrwkuRd/puqMMOfmoMGZwo
 fYqhYhoGaG8SyhnsctlT6KLcSAmqBA/9nKOkNr0beirT9iMKx6VqyXYiI0uGoL4Sqelb
 ty7qxts0hDkHfh5jMo2FHGic61ZE5KGw9zMlNe5UZKb8pAV+QQgnDDdXH4YKeK5GC5od
 EdKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=w8hqjHZq5axi/BqKEPaHmlkQPIf3RNlUWjQqMdLXook=;
 b=H+5R1ZIlZebu+XjtO4KFD3FqJ0+ZVhde4dsOkRsBqucTX10+MI9g0i+gGFZkK5mrGw
 IZHOMEhGi0xjHPH1JCU5lJ5nCdy5UFbp61HqtFUFBD++R/6LXiBCAhi2xwfw8y9i1S0n
 MaeBessNatMHcCZq4uxy9CdHRdHl/QzxkPkiSWADgKmLiw4riyHARr5kDWGn0zdui7c7
 JjyIbUaBlYKho63kohxszyfNOlw1/aUaQRgiirLcyUz9nxSb7psouO8D+4+e5hY61lgh
 pUbn1gqENOfUZZIxOSS5cMOkGK9cejkJOq5ByrcH3GQSxKsdXYjMu4wp6RcKpgTpIoo6
 q5kw==
X-Gm-Message-State: AOAM5337nnaC30nJ1n/qPB195oiIyEyWJWviOeN18Egojh9eRgMGpbaf
 VZj4yPx9gyido4D+qZOT8xX7y3bGhbkU1Q16wLU=
X-Google-Smtp-Source: ABdhPJwd+izHt2MHiaDqEVbgSYDgPBjouKuR1zNS4kpz8LV1sf8CxSvzuP2senVDQ32XItzO4Qfz+EIlRwrRvRuhayU=
X-Received: by 2002:a17:902:ecd2:b0:15b:618a:2a8f with SMTP id
 a18-20020a170902ecd200b0015b618a2a8fmr3049020plh.140.1650612331099; Fri, 22
 Apr 2022 00:25:31 -0700 (PDT)
MIME-Version: 1.0
References: <20220420095322.89880-1-eagle.alexander923@gmail.com>
 <20220421073546.GV4012@pengutronix.de>
 <CAP1tNvQOpnGwOUtHVTcxcMnv_GR=FNK3EuEFvBxDDcF-Fb9x3w@mail.gmail.com>
 <20220421083003.GY4012@pengutronix.de>
 <CAP1tNvS4L7ZM7dYK+VZej56MdyMVXJiMVg3oLj2iYMVk9n0xcQ@mail.gmail.com>
 <20220422065050.GA4012@pengutronix.de>
In-Reply-To: <20220422065050.GA4012@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 22 Apr 2022 10:25:17 +0300
Message-ID: <CAP1tNvQ2uMqQ++d1N2Ow+6A=ko1zQcwwfShz2RT5tkb3YvzR3A@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_002535_588073_DB72D9D8 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
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

0L/RgiwgMjIg0LDQv9GALiAyMDIyINCzLiDQsiAwOTo1MCwgU2FzY2hhIEhhdWVyIDxzaGFAcGVu
Z3V0cm9uaXguZGU+Ogo+IE9uIFRodSwgQXByIDIxLCAyMDIyIGF0IDExOjU4OjI2QU0gKzAzMDAs
IEFsZXhhbmRlciBTaGl5YW4gd3JvdGU6Cj4gPiDRh9GCLCAyMSDQsNC/0YAuIDIwMjIg0LMuINCy
IDExOjMwLCBTYXNjaGEgSGF1ZXIgPHNoYUBwZW5ndXRyb25peC5kZT46Cj4gPiA+IE9uIFRodSwg
QXByIDIxLCAyMDIyIGF0IDEwOjU3OjMzQU0gKzAzMDAsIEFsZXhhbmRlciBTaGl5YW4gd3JvdGU6
Cj4gPiA+ID4g0YfRgiwgMjEg0LDQv9GALiAyMDIyINCzLiDQsiAxMDozNSwgU2FzY2hhIEhhdWVy
IDxzaGFAcGVuZ3V0cm9uaXguZGU+Ogo+ID4gPiA+ID4gT24gV2VkLCBBcHIgMjAsIDIwMjIgYXQg
MTI6NTM6MjJQTSArMDMwMCwgQWxleGFuZGVyIFNoaXlhbiB3cm90ZToKLi4uCj4gPiA+ICZuYW5k
MCB7Cj4gPiA+ICAgICAgICAgcGFydGl0aW9uQDAgewo+ID4gPiAgICAgICAgICAgICAgICAgbGFi
ZWwgPSAiTUxPIjsKPiA+ID4gICAgICAgICAgICAgICAgIHJlZyA9IDwweDAwMDAwIDB4MjAwMDA+
Owo+ID4gPiAgICAgICAgIH07Cj4gPiA+Cj4gPiA+ICAgICAgICAgcGFydGl0aW9uQDIwMDAwIHsK
PiA+ID4gICAgICAgICAgICAgICAgIGxhYmVsID0gImJvb3QiOwo+ID4gPiAgICAgICAgICAgICAg
ICAgcmVnID0gPDB4MjAwMDAgMHg4MDAwMD47Cj4gPiA+ICAgICAgICAgfTsKPiA+ID4gfTsKLi4u
Cj4gRG8gaXQgbG9jYWxseSBmb3Igbm93LiBCVFcgeW91IHVzZWQgYSBsZWdhY3kgYmluZGluZyBo
ZXJlLiBOb3dhZGF5cyB0aGUKPiBwYXJ0aXRpb25zIGFyZSB1bmRlciBhIHBhcnRpdGlvbnMgbm9k
ZSB3aXRoIGNvbXBhdGlibGUKPiAiZml4ZWQtcGFydGl0aW9ucyIuCgpUaGFua3MgZm9yIHRoZSBo
aW50LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFy
ZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

