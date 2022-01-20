Delivery-date: Thu, 20 Jan 2022 11:39:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nAUrA-007ZHq-G7
	for lore@lore.pengutronix.de; Thu, 20 Jan 2022 11:39:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nAUr9-0005f4-89
	for lore@pengutronix.de; Thu, 20 Jan 2022 11:39:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AN3xBJePjJWoyrjkIvo7xownfP3xcyF94Ik0aG7jAR4=; b=kUQqYlDSp7vvCu
	aUBmIY8tyAqjYdiISPiBlJ17AnU/56T8+qyW36KnMYa2+WnWA0ht7MCaPo8K2TWhSil1lVsy50+kp
	Mjv5oR/HaxZN2ziy3dVbzR53svuZR8dzLCMSgoHdZl7Jl12bhQBVA4ZpIFwwiwImAITd75jFikQ5S
	kiv25FrMxYaXTdZ+LDueyymegysxYc7L0ZfU59UPoGJoZSsfL4M6CQc6n8zjpVLIRDr6hmyGSai8N
	3ozkQP0DlucO+Tuy6gnQiehHQXnl0MvIPAMF5KGv6TmWBwtfPwk+KktZg0Wv70TxpsiHLrUU4MZH0
	kIlupU+Elg5JJrdAuGWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nAUpZ-00AmT8-BQ; Thu, 20 Jan 2022 10:38:13 +0000
Received: from smtpout140.security-mail.net ([85.31.212.145]
 helo=fx405.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nAUpT-00AmRL-1L
 for barebox@lists.infradead.org; Thu, 20 Jan 2022 10:38:09 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx405.security-mail.net (Postfix) with ESMTP id 402F3323741
 for <barebox@lists.infradead.org>; Thu, 20 Jan 2022 11:38:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1642675082;
 bh=RkJAixg+gtfHJgnP2Ly0QMUMP2OHw7ue21yS4YTfqmQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=Ucvl0RBgtI6rhhqJqTF59i4s/cg/Rg0OHKo95uO+CCtk746XZDv7j2UOaXg/6kaDx
 8Hr+VyfaS9x6O15W1JZEQAJpgjs654nqBb3SR26Qtt9PLKmJ1Oh875Y5FqKTjgXKOz
 8IM3Hm1oUBEor6+HxSFR9bzcfhXaRt19XOqUzvoA=
Received: from fx405 (localhost [127.0.0.1]) by fx405.security-mail.net
 (Postfix) with ESMTP id E9790323740; Thu, 20 Jan 2022 11:38:01 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx405.security-mail.net (Postfix) with ESMTPS id 7AB5232370A; Thu, 20 Jan
 2022 11:38:01 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 5B38927E03DD; Thu, 20 Jan 2022
 11:38:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id 442FE27E03E1; Thu, 20 Jan 2022 11:38:01 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 2obJDfVTuMk1; Thu, 20 Jan 2022 11:38:01 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id 3385627E03DD; Thu, 20 Jan 2022
 11:38:01 +0100 (CET)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <76f2.61e93b89.798c1.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 442FE27E03E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642675081;
 bh=7+dZD8lGSr8AXEHKRwJ2dtFpg+E21WyMuehVtXi/WAk=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=MVhA3Z9Po404n+JzQ2EwzR1jd9+v4YoUH3skevqdYVNb1Xcbcv+Y9MJfd9S9kqhCr
 uAOt1cN60RSkQ7Uq+e78iBtPNP7PtLkA13/kGC2F0R8kT4CKQoB0x98SfpbsNkSpma
 gmH9qzAjbhuBwiVmJxyAcT54RSDEidWlKxPn+NUs=
Date: Thu, 20 Jan 2022 11:38:00 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Trent Piepho <trent.piepho@igorinstitute.com>, barebox@lists.infradead.org
Message-ID: <20220120103800.GG29876@tellis.lin.mbt.kalray.eu>
References: <20220117230235.13549-1-jmaselbas@kalray.eu>
 <20220117230235.13549-5-jmaselbas@kalray.eu>
 <CAMHeXxOQXTTd=u8M9fbtQeB6OAFnC+1t=Sx=CtwzocNc=HaDMg@mail.gmail.com>
 <20220120081341.GI23490@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220120081341.GI23490@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220120_023807_878316_94DBB300 
X-CRM114-Status: GOOD (  12.62  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 4/5] logo: Enable image format selection for the logo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jan 20, 2022 at 09:13:41AM +0100, Sascha Hauer wrote:
> On Mon, Jan 17, 2022 at 03:28:17PM -0800, Trent Piepho wrote:
> > On Mon, Jan 17, 2022 at 3:03 PM Jules Maselbas <jmaselbas@kalray.eu> wrote:
> > >
> > > +choice
> > > +       prompt "Logo image encoding format to be used"
> > > +       default BAREBOX_LOGO_PNG
> > > +
> > > +config BAREBOX_LOGO_PNG
> > > +       bool "png"
> > > +       select PNG
> > > +       help
> > > +         Encode logo with the PNG image format
> > > +
> > > +config BAREBOX_LOGO_BMP
> > > +       bool "bmp"
> > > +       select BMP
> > > +       help
> > > +         Encode logo with the BMP image format
> > 
> > You might say why one might want one format or ther other.  What's the
> > point of adding bmp support?
> 
> The point could be that for a small logo a bmp image + renderer is
> smaller than a better compressed image + a bigger renderer. I don't know
> if that's actually the case though.

bmp images are ~3 times to ~25 times bigger than png, while qoi images
are at most twice as big as png images.

Using the sandbox config (target x86), the final binary, is compared to
using png:
  - bmp: +1.31MB in total file size (~45%)
  - qoi: +44.0KB in total file size (~1%)
         roughly (+55KB from images, -10KB from .text/.rodata)

The intresting part is that qoi image can be futher compressed, using
lz4 or lzop, and have a file size very close (even smaller) than png
images (not further compressed).

best,
Jules





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

