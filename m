Delivery-date: Fri, 10 Jun 2022 07:10:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzWuS-009dce-Dy
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 07:10:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzWuQ-0003oi-U5
	for lore@pengutronix.de; Fri, 10 Jun 2022 07:10:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ydtbIRUJKZHvYb3Vr0PCTdF73QwzhJUlDRIkYYWhs0g=; b=qYNVM2HiAZbR4W
	aAjX8o88KXsXrda7kSHhnbQXWJlUPI3M3OHjmMLOucwZ7vDcG3GYSw7PaWtnfsrZZErjxj4jnU/Dx
	AsNp2Y3E0cRZJFRiKhB7JepAVvTfPLj5ODEJ6NYoPxUZT7NKO4VffVSpJTl84PQqat3csfh5HKJ0T
	yxqf1QJPbDAXRiR6wKPuk5++7RQZehnRL4JeVe4F5pW85yYPaurDuOZhOAukIG3eBJyUg5iYkST26
	XifoDBbij7j794wetBg3cA4DhaqxNy+G4BLe9QQxWbiTy+ZG9tL0AnH5msIioyEBZ0BB35jMvDiRG
	97ltc86F/qig9VDviJKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzWsb-005ujb-Aw; Fri, 10 Jun 2022 05:08:17 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzWsW-005uiR-RN
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 05:08:14 +0000
Received: by mail-pl1-x62a.google.com with SMTP id t2so21922665pld.4
        for <barebox@lists.infradead.org>; Thu, 09 Jun 2022 22:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=gycW0Vw74I0yqsqOvhNgmt3RNKrXXUnOhYJ2ZgEmP7I=;
        b=XBZUYtd2MNmZ5W3r30h6wsBMF6gen7aNEf6bz+L6TPSfjZg9wMgwprut+6IeY4j190
         /HjxYZryXc42lRy1dymDwdEzhon7XoDhQnFD5wtR1Gq/GLg1TZHo9NR2IOSE43vnyPTN
         exzhINIMCEd9zJ4VN8RE3ml9QoZeCGRDMlxphCHc3KwSPCwkGcR9BIAY85w6tVHoYpnb
         MSUFxRmKevhk5jsRZU8/QGa79EGrP9CjGa3L2/IBCevQl6Xuz5DmzBjQTrsUu5lUrOmu
         JfFDsO2xlkU+PcJ8yRxvR5Pi2uKi7mcnNi4COvtuqH+cildUDR18wEUGr/CGx+5OquN9
         8PRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=gycW0Vw74I0yqsqOvhNgmt3RNKrXXUnOhYJ2ZgEmP7I=;
        b=TLLTHnlfHqDXfZrChQsrao+htQV6Ga9a3CGAQJxXk5lYgh50sPsdIRRILl2PND3Iy/
         lYtvSo91Wo+fcfr2EO3XN1ctUw3xZ5v9tJHFV3dCfzM/wUwvUQ+68yvfMV7tAuM2xOmO
         6HWleV4Gsnj9U2zP7rNcvv5JvBKZbo16o+doFME5Pw4/ebDSLm/kMoAoLm8jVqKs+nQn
         HGulaeDGkbBVooNZIDkguX6uZDQu/H5fCU9Beyo0BRjfyRJx2J65dqGVIgROTNyAnWvF
         CwLr+JsYXJ3c+/8gkj4yXvAGJ66d13pRBOklCclmz5bIf8xi7X9Dkz02C61WA80YdUkW
         mRFA==
X-Gm-Message-State: AOAM531q9HxzclwkX1iArYqBzmRICIXZBNbyKSv7OjZL8jvQmDIpwzC0
	54HmaE/5myoVGbOlSP2rfxKWtEsPh8B7jrjB6yavSW09
X-Google-Smtp-Source: ABdhPJxzh1K4AX1zgQxVyURJX4RmIL1YDWhjtK5rC8Fx33gJ9GAfOW2r/dcQp+3fnonuph+thz+fJIosJN0pw5cgcS4=
X-Received: by 2002:a17:903:22ca:b0:163:e2b6:e10a with SMTP id
 y10-20020a17090322ca00b00163e2b6e10amr42935885plg.32.1654837689829; Thu, 09
 Jun 2022 22:08:09 -0700 (PDT)
MIME-Version: 1.0
References: <20220608051244.2318-1-eagle.alexander923@gmail.com> <aee6c95a-a4c1-19cc-7cf0-c156cbdc31ce@wolfvision.net>
In-Reply-To: <aee6c95a-a4c1-19cc-7cf0-c156cbdc31ce@wolfvision.net>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 10 Jun 2022 08:07:58 +0300
Message-ID: <CAP1tNvRBme69Te+u8NOn1wC7Jc8ztqX0jgJ1E+y=g+2VD=E7GA@mail.gmail.com>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_220812_937857_DAECDAF7 
X-CRM114-Status: GOOD (  16.87  )
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
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: reset_source: Remove of_get_reset_source_priority()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

0YfRgiwgOSDQuNGO0L0uIDIwMjIg0LMuINCyIDIzOjA4LCBNaWNoYWVsIFJpZXNjaCA8bWljaGFl
bC5yaWVzY2hAd29sZnZpc2lvbi5uZXQ+Ogo+Cj4gSGkgQWxleGFuZGVyLAo+IE9uIDYvOC8yMiAw
NzoxMiwgQWxleGFuZGVyIFNoaXlhbiB3cm90ZToKPiA+IG9mX2dldF9yZXNldF9zb3VyY2VfcHJp
b3JpdHkoKSBoYXMgbm8gdXNlcnMsCj4gPiBzbyBpdCBjYW4gYmUgc2FmZWx5IHJlbW92ZWQuCj4g
Pgo+ID4gU2lnbmVkLW9mZi1ieTogQWxleGFuZGVyIFNoaXlhbiA8ZWFnbGUuYWxleGFuZGVyOTIz
QGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIGNvbW1vbi9yZXNldF9zb3VyY2UuYyAgfCAyMCArKyst
LS0tLS0tLS0tLS0tLS0tLQo+ID4gIGluY2x1ZGUvcmVzZXRfc291cmNlLmggfCAgNyAtLS0tLS0t
Cj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDI0IGRlbGV0aW9ucygtKQo+
ID4KPiA+IGRpZmYgLS1naXQgYS9jb21tb24vcmVzZXRfc291cmNlLmMgYi9jb21tb24vcmVzZXRf
c291cmNlLmMKPiA+IGluZGV4IDM1NTRjYmQwZmIuLmRjY2I2ODMyMzEgMTAwNjQ0Cj4gPiAtLS0g
YS9jb21tb24vcmVzZXRfc291cmNlLmMKPiA+ICsrKyBiL2NvbW1vbi9yZXNldF9zb3VyY2UuYwo+
ID4gQEAgLTc2LDcgKzc2LDkgQEAgRVhQT1JUX1NZTUJPTChyZXNldF9zb3VyY2Vfc2V0X3ByaW5z
dCk7Cj4gPgo+ID4gIHZvaWQgcmVzZXRfc291cmNlX3NldF9kZXZpY2Uoc3RydWN0IGRldmljZV9k
ICpkZXYsIGVudW0gcmVzZXRfc3JjX3R5cGUgc3QpCj4gPiAgewo+ID4gLSAgICAgaW50IHByaW9y
aXR5ID0gb2ZfZ2V0X3Jlc2V0X3NvdXJjZV9wcmlvcml0eShkZXYtPmRldmljZV9ub2RlKTsKPiA+
ICsgICAgIHVuc2lnbmVkIGludCBwcmlvcml0eSA9IFJFU0VUX1NPVVJDRV9ERUZBVUxUX1BSSU9S
SVRZOwo+ID4gKwo+ID4gKyAgICAgb2ZfcHJvcGVydHlfcmVhZF91MzIobm9kZSwgInJlc2V0LXNv
dXJjZS1wcmlvcml0eSIsICZwcmlvcml0eSk7Cj4KPiBUaGlzIHNlZW1zIHRvIGJyZWFrIG15IGJ1
aWxkOgo+IGJhcmVib3gvY29tbW9uL3Jlc2V0X3NvdXJjZS5jOjgxOjMwOiBlcnJvcjogJ25vZGUn
IHVuZGVjbGFyZWQgKGZpcnN0IHVzZQo+IGluIHRoaXMgZnVuY3Rpb24pCj4gICAgODEgfCAgICAg
ICAgIG9mX3Byb3BlcnR5X3JlYWRfdTMyKG5vZGUsICJyZXNldC1zb3VyY2UtcHJpb3JpdHkiLAo+
ICZwcmlvcml0eSk7Cj4gICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn4K
Pgo+IFNob3VsZCAibm9kZSIgYmUgcmVwbGFjZWQgYnkgImRldi0+ZGV2aWNlX25vZGUiPwoKSGVs
bG8uCgpZb3UncmUgcmlnaHQuClVuZm9ydHVuYXRlbHksIEkgZG8gbm90IHlldCBzZWUgdGhpcyBw
YXRjaCBpbiB0aGUgbmV4dCBicmFuY2ggdG8gY3JlYXRlIGEgZml4dXAuCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApi
YXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9iYXJlYm94Cg==

