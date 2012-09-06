Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9cXR-0001Jt-QN
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 13:54:34 +0000
Received: from mail626.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 1D63FDC6ECE
 for <barebox@lists.infradead.org>; Thu,  6 Sep 2012 15:59:50 +0200 (CEST)
Date: Thu, 6 Sep 2012 15:54:25 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120906155425.027ab55f@eb-e6520>
In-Reply-To: <4875438356E7CA4A8F2145FCD3E61C0B3074AA38F2@MEP-EXCH.meprolight.com>
References: <1346935710-23360-1-git-send-email-alexg@meprolight.com>
 <20120906152754.355b7078@eb-e6520>
 <4875438356E7CA4A8F2145FCD3E61C0B3074AA38F2@MEP-EXCH.meprolight.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] i.mx35pdk add nand identification
To: Alex Gershgorin <alexg@meprolight.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Alex,

Le Thu, 6 Sep 2012 16:39:33 +0300,
Alex Gershgorin <alexg@meprolight.com> a =E9crit :
> > Without this patch I get following messages
> >
> > Board: Freescale MX35 3Stack
> > NAND type unknown: ec,d7
> > No NAND device found (-19)!
> >
> what is the part number of the NAND ?
> =

> If I'm not mistaken
>  K9LBG08U0D-PCB0
>  =

this seems to be a 4GiB flash with 4k page + 218 OOB, not a 512MiB

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
