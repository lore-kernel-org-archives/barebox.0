Delivery-date: Mon, 20 Sep 2021 21:43:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSPCh-0001ID-Lg
	for lore@lore.pengutronix.de; Mon, 20 Sep 2021 21:43:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSPCg-0007qi-Eg
	for lore@pengutronix.de; Mon, 20 Sep 2021 21:43:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MsUolVFVOK0VKLB/usmYPGfbgbgSVbB9DzomVXiR8CY=; b=NLSehq1o+G5dI/
	37xY74+Iv0ftu2E9jhS5UqfJvbqkTjK5F4c/cutHdO4+RavP7CdUrcYDREzLi5LvF8VHXHbuJOEyv
	gI6pQHdMkAPl0g3r0lbtJVnf4sPHZzXTlg3SvQKwWeVC+oW4mtX022xt3rjizYYf8k3kQcAfg386k
	1uUF32y7hamyzu11o95DEbMGXRWf9PVjDGDiKrzbbv7CSpzGcQ6moRRUNlwIDP9QS423nc7sLF/YQ
	xWdmktNXZYJ8JII4wRNSIRB4nJIGHEPHaZNUoExqoEHnMGW39YqUmIuWzZ8Fx9iBF2r0aPypLfVaI
	7ocYsdIXKA0zvEaavazg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSPAz-002xLx-ET; Mon, 20 Sep 2021 19:42:05 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSPAu-002xLB-Nn
 for barebox@lists.infradead.org; Mon, 20 Sep 2021 19:42:02 +0000
Received: by mail-lf1-x12a.google.com with SMTP id g41so39628819lfv.1
 for <barebox@lists.infradead.org>; Mon, 20 Sep 2021 12:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cartesi-io.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tp3qh50Y3oyQOTcxnbNtUqkbBDnpkdKrRcRZMbxfLDk=;
 b=4+cJvVuNnJ6lnN8cKPAND5EapQ0G1ow/BZ1bzYknMuNWQG/K4pNk3TkFpQ3vd/xqZR
 hjyH2cQkvOeAA2VQlsiONPaApEXk05tIdNSS5niI7Qe2eBERiQZ8q3w3LTDRw3fBRt9H
 QbP27CMCWaL1KSKINWKM6hSAPnU20Jk8snjO+GQIKD0WrH/yBkWrJ4b4Nm8hIyJ7nDSq
 D8AX6II5sKo8ZfHHzy6M4k1N0l43jrLVyubtq2N++JHquZ6fR3dHA3X8XRmZoPO6xmue
 FdEBICDlB60uS5Hs91szgX0yy4CuFXd+nqNts2WqznZsc1MFYNyidicBzhv0prWLGXYq
 Ca+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tp3qh50Y3oyQOTcxnbNtUqkbBDnpkdKrRcRZMbxfLDk=;
 b=YfLc7nAGT8N4RVYxAs5FV+nFjBDZtlX9V4OFvuCdnPn3NfUHvJd/4PxvIljnmM7pxN
 vhRkjDdVd13FwH+HqkXkToxUhigA4hkJmN+A7ARUl9iwQqMRU6ktCpcoj5R0mg4f/9/q
 lxEpWYM/QzrHYQQiC+CeMLatCfEXAbEUs20tCXexBE/inYayJWRlfu9u15YhO5xjreS6
 XU7KpI8vK6vMJ9vl9J0jAebwjjeVgBs/pkciC/UeP0+VEIolZsSCMDJvy8CzxH6jtS0K
 x+fwpeqJVz2bwtScqeszDzz7KFO7do7MZn9bEOMsasp/RbNCNBgNEdXAlA2md4E4wVyy
 Arzg==
X-Gm-Message-State: AOAM530n8Fo/plMKmo+7i4O1gnSiXhxnbT64B5msNtm00KfAxPq1wV62
 5M/jUrsdi16TgtHntpwJ9IgABH8PRL93ORrbnH6ZTr8Z9bimFA==
X-Google-Smtp-Source: ABdhPJx3adF9qpRippyjU263LJr7+z7TjerwRZCCKPgPDjFmb3i52ZQO9uwE/jelzlEjpWQxhwUV7xFND8TdsPoqCF0=
X-Received: by 2002:a2e:461a:: with SMTP id t26mr23870331lja.147.1632166918440; 
 Mon, 20 Sep 2021 12:41:58 -0700 (PDT)
MIME-Version: 1.0
References: <CA+cd6D476jyxKGWZUqLbFizW_TvGCpfqvS6-vC8T3sX=nzS5kg@mail.gmail.com>
 <129de0c3-64d9-c2f7-18e0-b3764446b875@pengutronix.de>
 <CA+cd6D6pqMn=DhjPgDGske9u+t3P1zSS0PvK5L2TdAtRfi8FTw@mail.gmail.com>
 <38f21108-d380-d299-e9cd-311b2ef4c3c8@pengutronix.de>
 <CA+cd6D6ezjN3p_PRPkgq2q8ZmyjcL19S=5kqg14MFLEPAAV4wQ@mail.gmail.com>
 <c6139ced-b5c8-e74a-7a98-d14234ac2e72@pengutronix.de>
In-Reply-To: <c6139ced-b5c8-e74a-7a98-d14234ac2e72@pengutronix.de>
From: Marcelo Politzer <marcelo.politzer@cartesi.io>
Date: Mon, 20 Sep 2021 16:41:11 -0300
Message-ID: <CA+cd6D5=H4A3KCZbdRqj0h8rxCXLpPRrnNHODj0txgTUS0L+Tg@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_124200_869016_0B3FBE81 
X-CRM114-Status: GOOD (  27.06  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: New RISCV board (cartesi-machine)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

I Just thought I should let you know that I won't be able to act on
your feedback for a while since something else came along with a
higher priority.
I'll send the patches with corrections at a later date.

best,
Marcelo

On Thu, Sep 16, 2021 at 6:21 PM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Hi Marcelo,
>
> On 16.09.21 20:01, Marcelo Politzer wrote:
> >> Like this? :-)
> >>
> >> https://www.barebox.org/jsbarebox/
> >
> > That is cool!
>
> :>
>
> >>> OK, I'll clean this up and send it as two patches:
> >>> - serial_sbi
> >>> - cartesi (board)
> >>
> >> Sounds good.
> >
> > Patches attached, please review at your convenience.
>
> Please resend without attachment if possible (e.g. with git send-email).
> This makes it easier to review.
>
> Some comments:
>
> - Signed-off-by is required, just as with Linux. See https://developercertificate.org/
> - A short commit message would be nice
> - BOARD_CARTESI should depend on SOC_VIRT for uniformity with other boards
> - Can you change device tree compatible? Generic boards should remain generic
>   and not contain vendor-specific stuff.
> - Please add your new Kconfig options to virt64_defconfig. That way you can build
>   and use the same image for all Virt-based boards (You can still use a different
>   config in your BSP of course)
>
> Serial driver:
>
> - remove DEBUG defines
> - depends on RISCV (otherwise there is no <asm/sbi.h>)
> - You don't need to implement flush and setbrg
> - ucb,htif0 is an unrelated device, but there is no device tree
>   node, you can bind to. You can register a device in sbi_init
>   and match against that. See riscv-timer for an example
> - I don't understand the point of the ring buffer. A command would
>   be nice (e.g. This is needed, because SBI lacks a FIFO or such)
> - to_priv unused
>
> Cheers,
> Ahmad
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

