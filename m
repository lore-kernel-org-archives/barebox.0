Delivery-date: Tue, 05 Jul 2022 14:52:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8i2t-006WXV-SL
	for lore@lore.pengutronix.de; Tue, 05 Jul 2022 14:52:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8i2v-00061M-RY
	for lore@pengutronix.de; Tue, 05 Jul 2022 14:52:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ie02WognSJmFLssZSJeSpaefMLOK3Dkwjp7/CwIaxBk=; b=cX7XTZccf1hnC01XZPEi5K+y0l
	VK8egoVzF3niqaNsdqF0F7w/MY4WmNjWbidEQrnZK2S1IdXKl1pvvUkFBKupOgu770pRMiFXh24wp
	0WvhSmddEMZ5at3FmFzP32nedwxYxK5CsX1v5LkgiOh8098L4cXU9sFXH46KwFD8ailZkqkzb+SL6
	FoTV2NJTqyUDCGFQPavoJz23B7YjVQswBCgReDDjlVFnQ4Ogu7zrtCtn+LfZ46Bhkc42NfHXv9uk4
	Q7gYs2hxnrExFTeNFqqB6x/eLKHH+hFBZBJECW2fJDZoZHubUYADLp8gH7yLhF+tbOPsZiCMDCxjW
	z2MZGN6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8i1Q-000HkR-64; Tue, 05 Jul 2022 12:51:20 +0000
Received: from mail-yb1-xb2d.google.com ([2607:f8b0:4864:20::b2d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8i1L-000Hjc-86
	for barebox@lists.infradead.org; Tue, 05 Jul 2022 12:51:16 +0000
Received: by mail-yb1-xb2d.google.com with SMTP id i7so21602724ybe.11
        for <barebox@lists.infradead.org>; Tue, 05 Jul 2022 05:51:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ie02WognSJmFLssZSJeSpaefMLOK3Dkwjp7/CwIaxBk=;
        b=XWL/z1Ufz8+9RXtyASJKlUj0Cv38fINZby0LFLRoGUZKjbHlU5jefL+zSBe6aBANZ0
         kjv5ZVDdjxPA2DJN1yLjo0uP2qtdd+Ch+KhhmrIZ18esBSe/Cxn/DFthCEZs6WGwZSGH
         W2hSIgVnGgaLlrInLAUbT86sYUya/p7YxZw/ArHFgVgiBmeaV+upU+FCTn2aBuhZb0Di
         zSXKurGgwkaej+fNn9CVLWNqIQVCw0AYjLkLdHpIvkKYePg5SceMC15fC8mSg0a6w9u+
         OTDzjk7aHrm727cweqTJj5aA+7zHktRQa1vLGhNqEj1ggoaQdxEvJro9r7cOP7At/DXz
         c4eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ie02WognSJmFLssZSJeSpaefMLOK3Dkwjp7/CwIaxBk=;
        b=cKxwDT/YAqKtPbghe5HhF9o1fc6L96xf2MGd3L1MBNVQjVlgBGut8BPYOksFZZ9mZj
         qHV7uEySoegxqVWH/sLpxOMOMORH6PtCyDcErzPocQTxoBcuflT3qEZbr10pbjMhxqu7
         5HbWujBHQydPcPXmVD0FafZ8vDahN2BEYa8oGcpJ3yrBthgtz8Ov7I1Hk8Um5tNYPkL6
         IL6ASvrxOXuFLcQkUKoBrHKUKmjD9k9bzVWDsdayTi2ecj4EO77PS+Hk3fxs/fDVzDV5
         vpVmNkfI7VNF4nVLuLcyo04mJYZ22Ik5KeOSgAG1BGcCvoS+tSXCZc8K8l8yIl0hVGr+
         Y7tQ==
X-Gm-Message-State: AJIora+3Ov/d4e9qwEjym1km7LWWiAXdQPOoNmButO355xINPoXoqKo+
	u/jrPaBnZiAd+/NWKWPu3n+AiEk8Pod7REfWEWhbY3To+rlq/g==
X-Google-Smtp-Source: AGRyM1vULdvuFNGNFijGMxXK67+pDOv4UXJn8SffBW2jWzOaVQl2dEwQLwF9ecMREsk0GRrGAcy1pi1uy1zr8BicGYo=
X-Received: by 2002:a25:2182:0:b0:66e:2a27:7d30 with SMTP id
 h124-20020a252182000000b0066e2a277d30mr18420539ybh.491.1657025474279; Tue, 05
 Jul 2022 05:51:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAGm1_kss73npzzCzoD44kO4C24PNwPHZcOV_nZWwq_sW12zxww@mail.gmail.com>
 <20220705085217.GC5208@pengutronix.de>
In-Reply-To: <20220705085217.GC5208@pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Tue, 5 Jul 2022 14:51:03 +0200
Message-ID: <CAGm1_kuWWpkrOojH8zve3YhpAiejBbWf6abA7dnC6S6gG2MYcQ@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_055115_323530_9F8717AA 
X-CRM114-Status: GOOD (  11.45  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: am335x: baltos
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On Tue, Jul 5, 2022 at 10:52 AM Sascha Hauer <sha@pengutronix.de> wrote:
>
> Hi Yegor,
>
> On Mon, Jul 04, 2022 at 02:54:48PM +0200, Yegor Yefremov wrote:
> > am335x-baltos got broken between 2022.06 and the current master. The
> > symptoms: no barebox console output at all i.e. the system freezes.
> >
> > Here is git bisect log but I don't really see the reason for the failure:
> >
> > # first bad commit: [8828e1226981b6a31b12a643768cac63fae3576e] Merge
> > branch 'for-next/imx'
>
> There's nothing in this branch that is even compiled on your board, so I
> would guess that you gave a wrong answer somewhere during bisecting.
> Apart from bisecting again you could enable some debugging:
>
> [*] Low level debug messages (read help)
>     Kernel low-level debugging port (AM33XX Debug UART)  --->
>     (0) OMAP Debug UART Port Selection
>     [*] Trace initcalls

I always forget about this feature. So, the problem was "Compressed
data violation". Changing to CONFIG_CONSOLE_SIMPLE to reduce the NLO
size helped.

Thanks.

Yegor


