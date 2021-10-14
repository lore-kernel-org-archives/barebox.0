Delivery-date: Thu, 14 Oct 2021 22:34:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mb7Qw-0004FB-El
	for lore@lore.pengutronix.de; Thu, 14 Oct 2021 22:34:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mb7Qv-0008Th-IH
	for lore@pengutronix.de; Thu, 14 Oct 2021 22:34:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OYCG1kA0BULHlvvU2Sus+j3sN9GQx12JHDESn7C1Vsc=; b=Pgk0DhxJdMB39P
	5id6wy+pSBMwtoIXoHYSrkmn7/uFkOPNkkZgNgmUxsDSyDmSH+JNilS03ssYdhBy5AkSLa2QtyT+t
	LwwdXHwUm7aNGthVgNSzq5nhCrg/3P9q4xp61kiUUBiTgK7a8eD395C2duK+Y0B3OGj56KtcmkIDp
	7tWe3PCX9/6R8jSewp98MOGI0g2LvvRbC4FSsQeFxoCCjRtKDVEZcg7ozKlD5HZsNWvUc+3zrOKTl
	irORifVcarFyW52yMRxfjKKCExn3jVOdqqbNv/PTIthOUU+jlc2SnE1O1egScvzoG1uzcb4jBdtji
	MxBpc8Rswf5fKx2mbJ9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mb7PC-004MBR-V6; Thu, 14 Oct 2021 20:32:47 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mb7P7-004MB3-KJ
 for barebox@lists.infradead.org; Thu, 14 Oct 2021 20:32:43 +0000
Received: by mail-lf1-x135.google.com with SMTP id x27so32426427lfu.5
 for <barebox@lists.infradead.org>; Thu, 14 Oct 2021 13:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UgGTwwSf6J6/bs08hdU16bFAKY5rmhPcxYXqwXw5Jn4=;
 b=pfmkwVxNKE4nmyvpBYpuiGWpXkqXpJ4sBcf580OHjh9P5CK8V1Kq9RW2R7mUbH1wOH
 8MZ0hMNNygoz8uWQSMhWZCFOSrkBtXIAbVtKGzuDrAwR7u3PY574zeEsSOJKeLW4SjW1
 bcEcoTNYB2Y0iK4ZHliaoxToQmQozLTzZG6sxjGgPsB6NUfUoRenAnn11EzOJsuVkLL3
 Jg2fVRON+RJv5SIrpBFxUPMZ3XV5HoUj/nGL3DhPMYWG1p0+Ldpo8sakxRpgRGoUH4og
 w7Mrn4T5zqKwezuMPm4Ua0zOTfjxbsZ9DOiL3K0Id/nrN2sdpsl7v49WX9ehq1zPWm4H
 xovQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UgGTwwSf6J6/bs08hdU16bFAKY5rmhPcxYXqwXw5Jn4=;
 b=F5qaiC4d/4TAxqSEvToHqeOsRxhu0g5rlO7NJNd7bu1LjS8tB+YN7/EmihUYRCOzOd
 l+9tWLNtT0kXZORw06HGgBjZxhdshanZWpN+pxnIL/kijn0BdxUwmNmEObjfRAbstdpL
 P/EH14CHZpql5LKYj5mqx6kn3CqtwfIBnC2RbJFs/gKSHfpJ0Zad100BeHQeLFUAKmjl
 XWTvMN+htfzDRyivt/bQtEzCaMSd2J9xDGoayVOClFgIbCfSDcfjtYKPUpdZrS9n17Sq
 lIsD2awd3FyR4LuY8Pm9CBc+e1N3Try6Y7D/Gtp8nSdcj4iKuSoLfzsqWX+1xqVZBqhC
 Tfpg==
X-Gm-Message-State: AOAM530l3EH6lBBOf2EiSbtefuzwafc21uomfZJGvFqXu6QoSVQD4Mzy
 NR0qWhX0hcVPJixIupbD1DhrQ/QL3ttd4N+m0AwnvQ==
X-Google-Smtp-Source: ABdhPJwBf5mg04JEuA1EB8yv6pkVWEIDNqZpdpXHU5kkECnGAIh8bd883O3/NLObZSsGgRAEXNLmB+KlceqDJEp2RvA=
X-Received: by 2002:a2e:90cf:: with SMTP id o15mr8260477ljg.241.1634243558482; 
 Thu, 14 Oct 2021 13:32:38 -0700 (PDT)
MIME-Version: 1.0
References: <20211013075327.28225-1-o.rempel@pengutronix.de>
 <20211013075327.28225-2-o.rempel@pengutronix.de>
 <CAMHeXxPE0Y71XOLLmMfSiVVA1T51+z_Afi9Kzn3-9qX=hxKOFQ@mail.gmail.com>
 <20211013111951.GD17532@pengutronix.de>
In-Reply-To: <20211013111951.GD17532@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Thu, 14 Oct 2021 13:32:27 -0700
Message-ID: <CAMHeXxMuEMF5yuBkxkNHBVNfO6Yk66mw+5++yesqsOOGSGrBeA@mail.gmail.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211014_133241_871078_7E367BFE 
X-CRM114-Status: GOOD (  17.43  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] net: phy: micrel: sync init code for ksz80xx
 variants with the kernel driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Oct 13, 2021 at 4:19 AM Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> On Wed, Oct 13, 2021 at 03:25:17AM -0700, Trent Piepho wrote:
> > On Wed, Oct 13, 2021 at 2:43 AM Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> > >
> > > Sync part of barebox micrel driver with the kernel v5.15-rc1.
> > > This change will affect most of by barebox supported 100Mbit/ksz80xx PHY
> > > variants and provide unified devicetree support for LED and clock configuration.
> >
> > I already added LED mode OF support to this driver.
>
> Yes, it was partially incorrect. It attempted to write to not existing or not
> documented register of PHY_ID_KS8737.

That is not true.  KS8737 would only attempt to set the led mode bits
if the device tree tries to set the led mode.  Since KS8737 does not
have a led mode selection, the device tree should not have this, and
there is no problem.

If you want a device tree validator, then use the yaml dts spec to do
this in the proper way, at build time.  The bootloader has the the
most constrained size of any part of a Linux system and is also the
most critical for device start up time.  It is the worst possible
place to put a dts validator.

> This is the reason why I prefer to share driver code base with kernel,
> where possible.

You again ignore there are two ways to do this.  Make the kernel match
Barebox where the Barebox code is better.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

