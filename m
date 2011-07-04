Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.98.mail-out.ovh.net ([178.32.125.3] helo=98.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qdf7z-0004KV-Li
	for barebox@lists.infradead.org; Mon, 04 Jul 2011 09:07:42 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by 98.mail-out.ovh.net (Postfix) with SMTP id DAF2B54EDBD
	for <barebox@lists.infradead.org>;
	Mon,  4 Jul 2011 11:07:07 +0200 (CEST)
Date: Mon, 4 Jul 2011 10:52:07 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110704085207.GB27790@game.jcrosoft.org>
References: <1309317858-11861-1-git-send-email-antonynpavlov@gmail.com>
	<1309317858-11861-2-git-send-email-antonynpavlov@gmail.com>
	<4E0F2E23.4000801@pobox.com>
	<20110702164500.GA28000@game.jcrosoft.org>
	<CAA4bVAH34-QDdMd2FObqc9XquErT13UDSi8MDAN7ZhARruZyow@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAH34-QDdMd2FObqc9XquErT13UDSi8MDAN7ZhARruZyow@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/4] MIPS: add Malta machine support to barebox
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Shinya Kuribayashi <skuribay@pobox.com>

On 12:54 Mon 04 Jul     , Antony Pavlov wrote:
> On 2 July 2011 20:45, Jean-Christophe PLAGNIOL-VILLARD
> <plagnioj@jcrosoft.com> wrote:
> 
> > Barebox is GPLv2 Only project
> >
> > So Nack GPLv3
> 
> See file barebox.git/arch/x86/mach-i386/reset.c:
> --- begin ---
> * This program is free software; you can redistribute it and/or
> * modify it under the terms of the GNU General Public License as
> * published by the Free Software Foundation; either version 2 of
> * the License, or (at your option) any later version.
> --- end ---
> 
> I think that this text does not conform with the proposition "Barebox
> is GPLv2 Only project" (there are the words "or any later version").
the project is GPLv2 Only does not means you can not have GPLv2 or later code
but does mean you can NOT have GPLv3 inside

Same as in the kernel

as we have GPLv2 Only licence inside

and a switch to the GPLv3 MUST be discuss before and not FORCED anyway

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
