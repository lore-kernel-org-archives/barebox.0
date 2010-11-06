Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.coresystems.de ([80.81.252.135])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PEYTC-0001fe-OL
	for barebox@lists.infradead.org; Sat, 06 Nov 2010 02:25:31 +0000
Received: from localhost ([127.0.0.1] helo=lebigmac.local)
	by ra.coresystems.de with esmtpsa (TLSv1:CAMELLIA256-SHA:256)
	(Exim 4.72) (envelope-from <stefan.reinauer@coresystems.de>)
	id 1PEYT0-0001Mo-6j
	for barebox@lists.infradead.org; Sat, 06 Nov 2010 03:25:18 +0100
Message-ID: <4CD4BC8A.7060502@coresystems.de>
Date: Fri, 05 Nov 2010 19:25:14 -0700
From: Stefan Reinauer <stefan.reinauer@coresystems.de>
MIME-Version: 1.0
References: <AANLkTi=OBTyCqTLhLjzp04714cVzF+GEm0pALiu50Z8S@mail.gmail.com>
In-Reply-To: <AANLkTi=OBTyCqTLhLjzp04714cVzF+GEm0pALiu50Z8S@mail.gmail.com>
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
Subject: Re: BIOS like screen for uboot
To: barebox@lists.infradead.org

On 11/1/10 4:36 AM, Kallol Biswas wrote:
> Hi,
>      We have a customer request that we need to create a BIOS like
> screens for uboot.
>
> For this we have cross compiled curses library under uboot but have
> been getting error in
> linking phase we have expected.
>
> The major effort is to get termcap database into uboot.
Hm.. I hate patronizing people, but are you sure you (or your customers)
want that? BIOS screens are by far the most useless user interface around.

However, I think you have several options.

One, for sure, is the menu command as Robert suggested.

If you really want to go for a curses style interface I suggest that you
look at "libpayload" which is a library containing slimmed down
functions for a lot of things, including a pretty small curses
implementation that works on framebuffers, text consoles and serial
consoles. It's released under a BSD style license.

Check out http://www.coreboot.org/Libpayload

The last option might be to boot a Linux kernel and use real userland
ncurses, if you really need to (i.e. if you want i18n stuff, too). It is
also the most bloated option.

HTH
Stefan


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
