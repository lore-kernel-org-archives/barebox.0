Delivery-date: Fri, 10 Jun 2022 11:56:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzbNL-009s9c-N6
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 11:56:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzbNJ-0007K7-PN
	for lore@pengutronix.de; Fri, 10 Jun 2022 11:56:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CTyBvtMdQMYzB7dzEJMkfAm+t/lyUPLN+WY8oClIUXU=; b=RmpuzqcB0eHebU
	k9ueHr7wDCvXe29gUioexGShT45R93UcKM1tfvflB1mi8m3hQ3NIxbHig2X6c6PV/X3neGC5Cow6T
	JWhTYTKM1Tr32v+KKBhwX2ytskKDQOuQ5FYx/rD/O297nia0YACcTUCnnfYLXbf6dvIZDZOIkLgkD
	6LW7rZlCDiW0vhz5NH0/PJ1JmlJN+eV7n7D2FJSKj7XpoaPj2rRAi1qTJMjLBgLAO6lBzs4DcG9AY
	l5rtcxiC2RBFHwTObyzN2MGOb4eyhfcC5xZSXcV7GiA4tpCukVZJEM59xNxK68p3tQ2/VUJNGiGgq
	e5ZGMUJRltOE+vwY6S+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzbLn-007MzM-Pm; Fri, 10 Jun 2022 09:54:44 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzbAe-007HIS-NC
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 09:43:16 +0000
Received: by mail-pf1-x432.google.com with SMTP id x138so1597626pfc.12
        for <barebox@lists.infradead.org>; Fri, 10 Jun 2022 02:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=hGCjrEwgNnJyUskuzLp+wPrEfWeS7s1Te0vZBYfDc4A=;
        b=LMPx9lRCy+IMoaeAvxAlqwtrmij4roo1HatbLaLSbRHoBjhyzDyYUrij/eparn7Ey9
         o4+em0t/HOA/L3EIRUive89nvpxGsRWJnYhJBwcaN0Ll7zGx3mPKtNX306Ffxb1asFLH
         6/L0e4RqwVOhzLGq9kTN0+xlPbAZHXYyCqGmvZVTw92z7R4HpszfrRlo2RFdutaWHBTM
         EzleTJHkujdy2XyHZskPKLK7UstyHJM6YS8Rzdzsy1XZa8iQJzqHNG7JHh6qOsZagZDw
         sCtUu4eX11P+OvxR1yxzqtBSVYy4pLr+4jcpVzcnT17c7alHxn64u1riSuRk/IZqvP6f
         /rnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=hGCjrEwgNnJyUskuzLp+wPrEfWeS7s1Te0vZBYfDc4A=;
        b=6BbicS7JjsLQ7JZuaRouDE4lygsOrSR/7Tw8onur16XlpDEpV1sJ9OAqujz2in1NQ4
         WrWEjMjwm/3ryqcWH8iUOxULv131tzSa9ClPLL0Izo11z8coV3ktufAQ3/dSasRQNfpp
         83MtJznEsD43au5CvxFwhPcBf/hq4bv/qwlUHL7pfZWGG6ifE80hsfp2F48L7BXZBuHd
         SbvsgcOoRtpdhHFof6PPupbn8y0a5jmPhTNJLcOFA/08oF5RhgV1I4URaU5s5tQ97xmS
         ZshFvdaENEzGVqC4Zadar/IAdm/CFC21zG/ZktxyPwAZ2f9wYLbeK0KwiVUTzmE9j356
         VVRg==
X-Gm-Message-State: AOAM530vUaYTL9fgA/ZskrBwSRn9RiUOOwbRybVC8CcarV7ii2LZuYXe
	yZ+bebOPK5b07FAppi5B4Mo6v+aciX5hVIItOM19QFUSpC4=
X-Google-Smtp-Source: ABdhPJxx2T02/dmRQIFHfBOr+rJfR+kUnI5VVRnaY4xUS/q05Z4e5o7K1p5J3LLYBz+E3vGh0gsASRZi5Nk+NE485oc=
X-Received: by 2002:a63:5e47:0:b0:401:a9bc:4add with SMTP id
 s68-20020a635e47000000b00401a9bc4addmr5110365pgb.306.1654854190573; Fri, 10
 Jun 2022 02:43:10 -0700 (PDT)
MIME-Version: 1.0
References: <20220610085633.21606-1-eagle.alexander923@gmail.com> <20220610093513.GL1615@pengutronix.de>
In-Reply-To: <20220610093513.GL1615@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 10 Jun 2022 12:42:58 +0300
Message-ID: <CAP1tNvR5o5GnKzkALRHd5BbR=mewE0u34xEMaVnj=ix2CEryGA@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_024312_828692_77730772 
X-CRM114-Status: GOOD (  10.22  )
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
Subject: Re: [RFC 1/2] clocksource: Introduce a context storage for the
 clocksource structure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

0L/RgiwgMTAg0LjRjtC9LiAyMDIyINCzLiDQsiAxMjozNSwgU2FzY2hhIEhhdWVyIDxzaGFAcGVu
Z3V0cm9uaXguZGU+Ogo+Cj4gT24gRnJpLCBKdW4gMTAsIDIwMjIgYXQgMTE6NTY6MzFBTSArMDMw
MCwgQWxleGFuZGVyIFNoaXlhbiB3cm90ZToKPiA+IFRoaXMgcGF0Y2ggYWRkcyBhIGNvbnRleHQg
ZW50cnkgZm9yIHRoZSBjbG9ja3NvdXJjZSBzdHJ1Y3R1cmUuCj4gPiBUaGlzIGZpZWxkIGNhbiBi
ZSB1c2VkIHRvIHN0b3JlIGFueSBwcml2YXRlIGRyaXZlciBkYXRhLCBhbmQgdG8KPiA+IGRpc3Rp
bmd1aXNoIGJldHdlZW4gbXVsdGlwbGUgZHJpdmVyIGluc3RhbmNlcyBmb3IgZGVidWdnaW5nIHB1
cnBvc2VzLgo+Cj4gWW91IGNvdWxkIGVtYmVkIHN0cnVjdCBjbG9ja3NvdXJjZSBpbiBhIHByaXZh
dGUgc3RydWN0IGFuZCB1c2UKPiBjb250YWluZXJfb2YoKSB0byBnZXQgdGhhdCBmcm9tIHRoZSBz
dHJ1Y3QgY2xvY2tzb3VyY2UgKi4KCk9oIHN1cmUuIEJ1dCBldmVuIGluIHRoaXMgY2FzZSwgd2Ug
bmVlZCB0byBwYXNzIHRoZSBwb2ludGVyIG9mIHRoZQpjbG9ja3NvdXJjZSBzdHJ1Y3R1cmUgdG8g
dGhlIHJlYWQoKSBmdW5jdGlvbi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

