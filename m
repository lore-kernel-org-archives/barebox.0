Delivery-date: Thu, 09 Jun 2022 09:40:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzCmR-008WGr-C7
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 09:40:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzCmP-0000af-MQ
	for lore@pengutronix.de; Thu, 09 Jun 2022 09:40:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V8QKcahfzh4X4q9HQkQFHLRBUhNlzokUKb3IAdoEPzw=; b=SA26Dr6ZaW6HRn
	i32B1so470e+LihcEM/bS4hFjCfj+71l3aoTBl5oRBnGsTjverGc55xc/A9kAiiFzYypWfWTkdhxO
	w0gIYvsJiK1GKlqcRciO8cOSGrM0S6j0/dFCs4JBBjTt9lyqrRreb3VNa1mrQsVk6D3SVqifAZuut
	fbtwO+ahgfJbrO8P/sg5m8CphTVybfZGLxmIzVzTLYjdh5Egb5iR0zowBIBWXEnfMdLfV/SsXPakS
	pMcwBcVCZHxjSOFzNrZa+pMqGQf+Mqq7Wwtgj0nGYJaRTZcdJ4fIVhz0AdJyJzlILYN89s87oxb12
	6W0Uf5wjxrvk1AYWAJlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzClA-00HUSu-6c; Thu, 09 Jun 2022 07:39:16 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzCl2-00HUQf-Tm
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 07:39:10 +0000
Received: by mail-pj1-x1034.google.com with SMTP id o6-20020a17090a0a0600b001e2c6566046so26000374pjo.0
        for <barebox@lists.infradead.org>; Thu, 09 Jun 2022 00:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=plXtvTkk41JqLr9XyX5ZLcCVkz7iDoC+DfYqMMX17FU=;
        b=VL2vJuDqPfBt509zUUaM+xVUCdXstxCARL9N9mwfBMIdtBPvglbJBMAcP2ebuYPUrc
         O+6Fa9c3W+kEISjw7LG8IwsSq+cWMAcTtKKVR2lmecBfpXcLEGvliCxmvrAY+brik783
         1nnTNdbUp3RcjXNNVl2fSPtUM58BD2sXneeLoooECln2vGL0vuhnqfwMkpVBj+6HaFIR
         CBA3LED9HIWoIleOA2snzO/BdD8BIH4EsobOcDr88f7IqvQSSK0WonshxqwZ17jrPoll
         JCLOQ/8yTEFqVpPCjJEmUpUURXjaJxFxiWcFl+RZ3hZs1GEyxS3cywWIC1aFTYMKRC7m
         5YvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=plXtvTkk41JqLr9XyX5ZLcCVkz7iDoC+DfYqMMX17FU=;
        b=IsOgYSmJdceaUwzWflRZr0yRPyTXkD0vUTsO5cwFPjVVNlbbtrRsvsOmvKbH2pY0Au
         dLaAAUK6w0HUpGye4jRPrtXYYrhhKiQN38rq8d9lH5/6sqtpuhkL16VqmO6cle2x5YQk
         EJOuhw12ei1w17JNfDICbUZ+uN2duEqlGEvZ0PGjc34zh473UR3wjZQoGX+Q5ih04Gh8
         8jdq9LSsAcT+nsf9vQe6+Ok5JGRXae68GEfFdXrXVolyVQcpFs/JAuxQwcpZVMgiBAJ1
         Ijig72fMX4Tu/9527YYVAddjjxLqgnTKXHge8FD9FnEkn0wD8YhPhgzeFDPw4SbHExvf
         V/3A==
X-Gm-Message-State: AOAM5325z0QHVz5unCeWv/86TVBAbr4w47OgAKDeB2BG79rgfpWaEUxn
	LjQa8mGvc8JYoXrvcG+59Q5pfDazwYQmjR7cLlDwBnL1POo=
X-Google-Smtp-Source: ABdhPJxdTRStQoFmR7pGco0EFbo7pUBomLkuZRHacqwcLSmyrFPhkFUGDSzzSuA2jceXH8cgcQ6xoHoFKnwyBLjky2Y=
X-Received: by 2002:a17:90b:3c6:b0:1e2:e9fc:4e79 with SMTP id
 go6-20020a17090b03c600b001e2e9fc4e79mr2162413pjb.192.1654760348057; Thu, 09
 Jun 2022 00:39:08 -0700 (PDT)
MIME-Version: 1.0
References: <20220608051244.2318-1-eagle.alexander923@gmail.com> <20220609073210.GA1615@pengutronix.de>
In-Reply-To: <20220609073210.GA1615@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 9 Jun 2022 10:38:55 +0300
Message-ID: <CAP1tNvTqwH+Fwfw395oC2wUXHHNnz6BfnGPuDBuK7uBayZHLVg@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_003909_026744_5AADF07F 
X-CRM114-Status: GOOD (  13.87  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: reset_source: Remove of_get_reset_source_priority()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

0YfRgiwgOSDQuNGO0L0uIDIwMjIg0LMuINCyIDEwOjMyLCBTYXNjaGEgSGF1ZXIgPHNoYUBwZW5n
dXRyb25peC5kZT46Cj4gT24gV2VkLCBKdW4gMDgsIDIwMjIgYXQgMDg6MTI6NDRBTSArMDMwMCwg
QWxleGFuZGVyIFNoaXlhbiB3cm90ZToKPiA+IG9mX2dldF9yZXNldF9zb3VyY2VfcHJpb3JpdHko
KSBoYXMgbm8gdXNlcnMsCj4gPiBzbyBpdCBjYW4gYmUgc2FmZWx5IHJlbW92ZWQuCj4gPgo+ID4g
U2lnbmVkLW9mZi1ieTogQWxleGFuZGVyIFNoaXlhbiA8ZWFnbGUuYWxleGFuZGVyOTIzQGdtYWls
LmNvbT4KPiA+IC0tLQo+ID4gIGNvbW1vbi9yZXNldF9zb3VyY2UuYyAgfCAyMCArKystLS0tLS0t
LS0tLS0tLS0tLQo+ID4gIGluY2x1ZGUvcmVzZXRfc291cmNlLmggfCAgNyAtLS0tLS0tCj4gPiAg
MiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDI0IGRlbGV0aW9ucygtKQo+ID4KPiA+
IGRpZmYgLS1naXQgYS9jb21tb24vcmVzZXRfc291cmNlLmMgYi9jb21tb24vcmVzZXRfc291cmNl
LmMKPiA+IGluZGV4IDM1NTRjYmQwZmIuLmRjY2I2ODMyMzEgMTAwNjQ0Cj4gPiAtLS0gYS9jb21t
b24vcmVzZXRfc291cmNlLmMKPiA+ICsrKyBiL2NvbW1vbi9yZXNldF9zb3VyY2UuYwo+ID4gQEAg
LTc2LDcgKzc2LDkgQEAgRVhQT1JUX1NZTUJPTChyZXNldF9zb3VyY2Vfc2V0X3ByaW5zdCk7Cj4g
Pgo+ID4gIHZvaWQgcmVzZXRfc291cmNlX3NldF9kZXZpY2Uoc3RydWN0IGRldmljZV9kICpkZXYs
IGVudW0gcmVzZXRfc3JjX3R5cGUgc3QpCj4gPiAgewo+ID4gLSAgICAgaW50IHByaW9yaXR5ID0g
b2ZfZ2V0X3Jlc2V0X3NvdXJjZV9wcmlvcml0eShkZXYtPmRldmljZV9ub2RlKTsKPiA+ICsgICAg
IHVuc2lnbmVkIGludCBwcmlvcml0eSA9IFJFU0VUX1NPVVJDRV9ERUZBVUxUX1BSSU9SSVRZOwo+
Cj4gWW91IHNhaWQgb2ZfZ2V0X3Jlc2V0X3NvdXJjZV9wcmlvcml0eSgpIGhhcyBubyB1c2Vycywg
YnV0IGhlcmUgeW91IGFyZQo+IHJlbW92aW5nIG9uZS4KCkhlbGxvLgoKSGVyZSBJIG1lYW50IHVz
ZXJzIG91dHNpZGUgb2YgdGhlIHVuaXQgOikKClNob3VsZCBJIGNyZWF0ZSB2Mj8KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBs
aXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

