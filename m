Delivery-date: Fri, 18 Mar 2022 22:43:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVKNk-00G6yW-9o
	for lore@lore.pengutronix.de; Fri, 18 Mar 2022 22:43:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVKNk-00086y-Tk
	for lore@pengutronix.de; Fri, 18 Mar 2022 22:43:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V+1oMayfJHBs3nQ5+hTrZ7NqcqTC1uxstavwlTbp7GI=; b=EgVN6AyZJOR0Pb
	g8QYof6aCEP3DcG5gwjQgYhIluD/z695Nae0kG0fE7oDrkIHDtBs4dYeHvwkwI58DtYM0ycvnLUjW
	CRDhss/PuHoQIoXMnn29pDgg3cjpMgjNUg30KEKlDvA0j95WW2CsZmjFQbRGt3GmCvJLqoX8koQoB
	Ia2OVAyd+OvIKVXk/vi7zUDi48nHrP9Ea4M959725oC2nl0F9PWrUOdtF6WJ28+D6aTw+gmD25k5Q
	nxx6ZHv86IcczRMxp5CcAgLaRzA8o1QSdOl0pkGNDIdskegoU/jnvBs5HhxVjmxfUTmNC9Ji9NSMO
	MhT4yBwmPF68nGQ7eimQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nVKM4-002uVK-A3; Fri, 18 Mar 2022 21:41:52 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nVKLz-002uUj-7H
 for barebox@lists.infradead.org; Fri, 18 Mar 2022 21:41:48 +0000
Received: by mail-lj1-x233.google.com with SMTP id q5so12848165ljb.11
 for <barebox@lists.infradead.org>; Fri, 18 Mar 2022 14:41:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ssHtMYI+OlCft+C/O3ObPYSlvQx6BxNw9QIhWQlJaEw=;
 b=GDfuVZK+ihV75dfTgyOJhPMNjPJrPJEyG1HurSu7+tMHJ2S/YPgdmV7nAa18vffroB
 VE23bSYYXOy2viqdbKTylVAz09unqudD4tAOaR4TboJ5idKS+Ipo68qSy83zyddCUYaX
 h8V2JapC5Ss2pr+8KYLizqhi28kumKgS0EWp+BHGWaTjfWkO8qCUSd2TeDuibBqxPlSA
 wyXIS8AGm/nnOIOnOwCq6VKMHGc6pzYaRzksb2LSAiCNc8LKu4tqImXdecr21Bv0pMPF
 mDQHubV8pRDc2kyXjHaujHP4Z76f8GrpWscDGMl7rLZoG8xTnkAjkGi/mTe0VgaTaOyl
 mKmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ssHtMYI+OlCft+C/O3ObPYSlvQx6BxNw9QIhWQlJaEw=;
 b=uvKVkNhnbKTTyDfuib/kLML4UxQjE7TRUhu4NOP/aTrYNKX0JrE9ffhC3XWrFQf5E1
 OZq5vglsFiHgYeMF0lhSFNhDo9OV1TVDhlA9lEkGIizT9ykMVokdnrsFuzdCFLnjrvxu
 QyT1N3WndNcexu/pkwEzSBg1ewLio6M+KzUhXUgfVsxebdoqe2B7pcXzc+VWN/SbTzgU
 IJ4EUmFSib0l413r4uxhJyh7tRVLjoS4TXn5Fw2HxjLVkwboZC+bDNDEX6LBemGArROL
 poeUpsT/fJX3mQ6CafFi9sO85crRJV9LEyyL2X7fIEb+gvTIVc18WBu5YpwwAFWUL5c6
 wTtQ==
X-Gm-Message-State: AOAM531ql0iU26cQwA1P7APz26RyWZU0zbYsYIzWvrFCAllozJ009NzN
 us+WuJDgUrc1XvdOI364h6NC61uAWuyO1ySYKlJBOg==
X-Google-Smtp-Source: ABdhPJy5yWMgjc7mGhsHm3p/99fcM2StcuKG2bVULc4Vs9dLlb4I807PjRsPO7+MYT0bKzbjLlwla+6UimshmMmXynw=
X-Received: by 2002:a05:651c:a12:b0:249:6857:99e7 with SMTP id
 k18-20020a05651c0a1200b00249685799e7mr4565699ljq.411.1647639704631; Fri, 18
 Mar 2022 14:41:44 -0700 (PDT)
MIME-Version: 1.0
References: <DB7PR04MB424951EBC916B7A1E0A1B274E8119@DB7PR04MB4249.eurprd04.prod.outlook.com>
 <20220317074628.GT405@pengutronix.de>
 <a4886a48-717f-d970-49af-551f3138e201@basalte.be>
 <20220318115925.GC12181@pengutronix.de>
In-Reply-To: <20220318115925.GC12181@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Fri, 18 Mar 2022 14:41:33 -0700
Message-ID: <CAMHeXxNRB5tLY7W8hj0hvMFj2sjE8c8jtbfSjkPv-LRq7Zohyw@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Tibault Damman <tibault.damman@basalte.be>, 
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220318_144147_492841_2896A2C8 
X-CRM114-Status: GOOD (  16.42  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: nand "BCH decoding failed" when using bch8_hw_romcode ecc mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 18, 2022 at 5:00 AM Sascha Hauer <sha@pengutronix.de> wrote:
>
> On Fri, Mar 18, 2022 at 11:32:36AM +0100, Tibault Damman wrote:
> > Gah, I just saw how that mail was sent, let me try that again:
> >
> >
> > Because the data looks right(?), despite the error prints, I tried
> > ubiformat again from barebox, then booted linux from SD, and attached
> > the ubi nand partition in linux... which worked fine.
> > All volumes and data were there.
> >
> > Very confused about what's going wrong here.
>
> You can correctly write to the NAND and can even correctly read the
> data, that's good news.

Yes, NAND hardware likely works fine.  This looks like a BCH layout flaw to me.

Some background:  (for Tibault, I'm sure Sascha knows this!)

Normal read/writes to NAND use some kind of ECC.  The real data is
written, unmodified, to NAND, and then also some extra bytes of ECC
information.  The real data and the ECC data are probably interleaved
in various complicated ways that are a pain to deal with.

Suppose the ECC data isn't done correctly.  It's generated
incorrectly, *written to the wrong spot*, read from the wrong
location, etc.  It doesn't work.  But we still write the real data
somewhere too.  And can then read it back from that same place.  Maybe
we are writing the real data to the incorrect locations, but as long
as we read it back from the same incorrect locations, it appears to
work.

So what happens?  We can write data, then read it back, but get many
ECC errors, because ECC is broken.

This looks like your problem.

ECC needs to work, as modern MLC/TLC/QLC NAND is not reliable enough
to use without ECC.  You can test one page one time and it worked with
no errors, but test the entire chip many times and it will become
clear it just isn't good enough.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

