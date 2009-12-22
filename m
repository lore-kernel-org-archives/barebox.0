Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NN66W-00030L-Mn
	for barebox@lists.infradead.org; Tue, 22 Dec 2009 14:52:56 +0000
Date: Tue, 22 Dec 2009 09:52:21 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <4B30DC1F.6060305@pengutronix.de>
Message-ID: <alpine.LFD.2.00.0912220952010.4266@localhost>
References: <alpine.LFD.2.00.0912220923160.3291@localhost>
	<4B30DC1F.6060305@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH] drivers:  use "menuconfig" consistently for all
	selections.
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Tue, 22 Dec 2009, Marc Kleine-Budde wrote:

> Robert P. J. Day wrote:
> > Use the "menuconfig" directive to make all top-level driver choices
> > 1-touch selectable, and standardize the menuconfig names.
>
> If you change the symbol names you have to change the Makefiles, too.
>
> Have a look at drivers/Makefile and drivers/*/Makefile

  oh, cr*p, of course, i missed that totally.  my bad.

rday
--

========================================================================
Robert P. J. Day                               Waterloo, Ontario, CANADA

            Linux Consulting, Training and Kernel Pedantry.

Web page:                                          http://crashcourse.ca
Twitter:                                       http://twitter.com/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
