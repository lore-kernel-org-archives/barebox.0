Delivery-date: Tue, 20 Sep 2022 11:49:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaZsf-00AMxi-W3
	for lore@lore.pengutronix.de; Tue, 20 Sep 2022 11:49:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaZse-0001La-CL
	for lore@pengutronix.de; Tue, 20 Sep 2022 11:49:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RJ4q2GT9vnDuR1GSSIy06gTdGBSh3ymU6VGTEDROYTc=; b=rLMJnF41HRmDhWnBY4Z70RbMeE
	TcmDU37UPnhjievomk4Diy2/+1cNszeeH7h6rFSbOLeDzmDlEvFZIKpbJ4i50hC+nYk0pLYtvyrXB
	h4vP/qvP9dUgLH+u5WDUOqVtbm+dKOtJhHmXslBYw5/G/NmzXlupwu19syFV5UwpxvpLxeCosowwp
	pk15vt81mS1D0zgIdxWgRqgIWUHj+0cOG4S18xuFIrfuDTLvb80XlNxhU9bVk1wYRPD5Ps3DYD0tC
	2mppHfMeNK1kLbo7rp0hcxPnMH/q9pBQAl7naOwfoHXrO32rIWrakwusmrXnHtNK32r+0oBlmam0U
	2v7hl8SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaZqw-002aRK-LX; Tue, 20 Sep 2022 09:47:43 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaZqZ-002aMW-HJ
	for barebox@lists.infradead.org; Tue, 20 Sep 2022 09:47:22 +0000
Received: by mail-yb1-xb33.google.com with SMTP id g5so2525469ybg.11
        for <barebox@lists.infradead.org>; Tue, 20 Sep 2022 02:47:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=RJ4q2GT9vnDuR1GSSIy06gTdGBSh3ymU6VGTEDROYTc=;
        b=tMvlTyH8hoKhmqTt0oHqz12+byA9AYpTrjknfOj6Pe4w3n4M33d1UUF8wqa8bStbai
         9egIBujdSzer9YFIOIJh6Rjcf4kBRPPgapXK3tm0wrVv9tLjX1Vt3mpJL8lEHGDBNmR+
         hC4J/s7FQdP8Jy2L+PwKBoAVUV728dYo/Tr/Ppu/Xkarj2IF69pSuStEHmvTdjTlHmf0
         WxkkBx8Xsyjz1SXSIVQ6IBbYXJ9cTfakm+WCTQoUtVdu4wJzL7ELkmpUQi0Wblh4kaWR
         FoGZf8r1nvAaXf3lO6tfCCvM0RMoHKbZOVVAoBO0G3e/YdaUeZDmCikTfCFvGaDtP5Gg
         MaRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=RJ4q2GT9vnDuR1GSSIy06gTdGBSh3ymU6VGTEDROYTc=;
        b=7cEAR4/g+7lAVC8jz61n2UzwYQc3SajiqWqq1vpj3hrLDFKAmV/lUJMH9LaX7+N9pY
         e4VCuwgxQSZ5ouyeZZABNIgiDx/VtKmDVxNgwDczIqP4wYtqjTUelg0miARU3Bn0Zekh
         gfgBd5Ia4dVINKzSM7d1UxJjLawZHsatX3AbTcIfBjPZj1IERBnz7ifDHJdVI1jIfNaQ
         JeoP+Ry5SY9G+DlaC8pc3UoT8npZyYSYVx1MzevHRuHzYvbIiiRXD2w/Jnp+p1ahs3XE
         VmmBUQCPKkkJ8BvtZqZOYpbK+1I7E5LTPBaSl4tYaJa59hMC/I/hio3KuS8YuNC/luII
         JLrA==
X-Gm-Message-State: ACrzQf1BYrGJoPpy7y5QgNM+327ZvZdRe5tzUlVDoh2HiaVKfkgGIOc8
	i+EE0GUjsef5R0cy7usVB65dsJOPMF7BV/qAMWLvlw==
X-Google-Smtp-Source: AMsMyM5KVvgljcT+9k5N7iTgMHQf4S3XbTxzw2S7oz2cRuLLO1u5ZVSHFh6z/fWyVJQyST+ntJsHdWgfILmg7KkVYNQ=
X-Received: by 2002:a25:80d0:0:b0:6b3:f287:93a4 with SMTP id
 c16-20020a2580d0000000b006b3f28793a4mr8152764ybm.427.1663667238118; Tue, 20
 Sep 2022 02:47:18 -0700 (PDT)
MIME-Version: 1.0
References: <20220916124942.3751131-1-s.hauer@pengutronix.de>
 <20220916131606.GZ6477@pengutronix.de> <CAMHeXxOuxZnVcavXvwi1Y13kfRBP+opRgqwyEvSGBjQK6dSX1A@mail.gmail.com>
 <20220920074120.GF6477@pengutronix.de>
In-Reply-To: <20220920074120.GF6477@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Tue, 20 Sep 2022 02:47:07 -0700
Message-ID: <CAMHeXxPJoHO6_eL9sf-_Fu+oqJQv278f9D8RifBkG2YV_yYYmw@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_024720_002517_AA8A49C5 
X-CRM114-Status: GOOD (  19.92  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: Bring up all interfaces before going interactive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Sep 20, 2022 at 12:41 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Mon, Sep 19, 2022 at 10:20:53AM -0700, Trent Piepho wrote:
> > On Fri, Sep 16, 2022 at 6:16 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > >
> > > We could make the user experience even a bit better by doing this call
> > > before waiting for the autoboot timeout which then speeds up netboot a
> > > bit.
> >
> > The Linux phy driver almost invariably does not bother to avoid
> > resetting the network phy when not necessary.  So if network
> > auto-negotiation is started in barebox, it will be reset and then
> > restarted shortly after in Linux.  The link auto-negotiation impacts
> > the LAN's spanning tree if that is in use.
> >
> > So there is a drawback, besides the small added boot time to
> > initialize the network hardware, to adding an unneeded network restart
> > in Barebox in the case where interactive mode is not entered and
> > network boot is not used.
>
> So is this a vote to only do the autonegotiaton when going interactive
> in barebox, or a vote to do autonegotiation only when the network is
> being used in barebox?

I would vote to only do it when going interactive.

It also seems reasonable to bring the network up quickly when network
booting, but I think determining if the system will network boot,
before actually trying to boot, is probably unreasonably difficult to
do.


