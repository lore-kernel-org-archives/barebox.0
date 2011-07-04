Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 28.98.mail-out.ovh.net ([87.98.167.241]
	helo=98.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qdbgh-0008MI-Lq
	for barebox@lists.infradead.org; Mon, 04 Jul 2011 05:27:16 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by 98.mail-out.ovh.net (Postfix) with SMTP id 6C70F54FDC2
	for <barebox@lists.infradead.org>;
	Mon,  4 Jul 2011 07:26:44 +0200 (CEST)
Date: Mon, 4 Jul 2011 07:11:45 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110704051145.GI28000@game.jcrosoft.org>
References: <1309317858-11861-1-git-send-email-antonynpavlov@gmail.com>
	<1309317858-11861-2-git-send-email-antonynpavlov@gmail.com>
	<4E0F2E23.4000801@pobox.com>
	<20110702164500.GA28000@game.jcrosoft.org>
	<CAA4bVAEJ=UOBE75Z-jEWeDz06uxoJFvbFmcrjCCNx8WTB9rd-w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAEJ=UOBE75Z-jEWeDz06uxoJFvbFmcrjCCNx8WTB9rd-w@mail.gmail.com>
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
Subject: Re: [PATCH 2/4] MIPS: add Malta machine support to barebox
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Shinya Kuribayashi <skuribay@pobox.com>

On 00:44 Mon 04 Jul     , Antony Pavlov wrote:
> On 2 July 2011 20:45, Jean-Christophe PLAGNIOL-VILLARD
> <plagnioj@jcrosoft.com> wrote:
> =

> > Barebox is GPLv2 Only project
> >
> > So Nack GPLv3
> =

> Hmmm.
> =

> There are some GPLv3 licensed files.
so this was a mistake
> =

> $ cd barebox.git
> $ grep -RHn "either version 3" .
> Software Foundation, either version   of the License, or
> ./arch/arm/mach-versatile/include/mach/debug_ll.h:7: * the Free
> Software Foundation, either version 3 of the License, or
we will drop them or relicence it
> ./scripts/kconfig/zconf.tab.c:11:   the Free Software Foundation,
> either version 3 of the License, or
> ./scripts/kconfig/zconf.tab.c_shipped:11:   the Free Software
> Foundation, either version 3 of the License, or
it's host tool from the kernel

it does not impact Barebox it self
> =

> -- =

> Best regards,
> =A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
