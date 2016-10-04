Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1brVOY-0007bP-8Z
 for barebox@lists.infradead.org; Tue, 04 Oct 2016 19:28:55 +0000
Date: Tue, 4 Oct 2016 21:28:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161004192832.uwvcko2lxbqorp33@pengutronix.de>
References: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
 <1475505657-898-11-git-send-email-andrew.smirnov@gmail.com>
 <20161004064923.txvdncnm57xwor5h@pengutronix.de>
 <CAHQ1cqE3UduSbJ5u_y4Rpi4qUcFD3EYzqCDxv5iQckw3cAv9qQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqE3UduSbJ5u_y4Rpi4qUcFD3EYzqCDxv5iQckw3cAv9qQ@mail.gmail.com>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 10/20] i.MX: clk: Port imx_check_clocks() and
 imx_obtain_fixed_clock()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Oct 04, 2016 at 06:43:01AM -0700, Andrey Smirnov wrote:
> >> diff --git a/drivers/clk/imx/clk.c b/drivers/clk/imx/clk.c
> >> new file mode 100644
> >> index 0000000..0357048
> >> --- /dev/null
> >> +++ b/drivers/clk/imx/clk.c
> >
> > We currently have the i.MX clock support in arch/arm/mach-imx/. This may
> > or may not be changed, but until it is, other i.MX clock support code
> > should go to arch/arm/mach-imx/ aswell.
> 
> My preference would be to try to move the rest of i.MX clock code to
> drivers/clk, to reconcile with how it is done in Linux kernel. Is that
> OK with you or would you rather I move everything to
> arch/arm/mach-imx?

I sometimes thought the clk code should be moved to drivers/clk/, but I
never had enough motivation to actually create a patch. If you create
one I'll happily apply it.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
