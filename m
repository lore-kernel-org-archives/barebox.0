Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TT85Z-00038X-1L
 for barebox@lists.infradead.org; Tue, 30 Oct 2012 09:26:26 +0000
Date: Tue, 30 Oct 2012 10:26:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121030092617.GG1641@pengutronix.de>
References: <1351415710-19380-1-git-send-email-plagnioj@jcrosoft.com>
 <1351415710-19380-2-git-send-email-plagnioj@jcrosoft.com>
 <20121029205503.GX24458@pengutronix.de>
 <20121030084423.GD29599@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121030084423.GD29599@game.jcrosoft.org>
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
Subject: Re: [PATCH 2/2] console: display Switch to console [csxx] when
 switching from debug_ll to real console
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Oct 30, 2012 at 09:44:23AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 21:55 Mon 29 Oct     , Sascha Hauer wrote:
> > On Sun, Oct 28, 2012 at 10:15:10AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > ---
> > >  common/console.c |    3 +++
> > >  1 file changed, 3 insertions(+)
> > 
> > Dropped this one as it breaks most defconfigs with:
> > 
> > common/console.c: In function 'console_std_set':
> > common/console.c:90:3: warning: implicit declaration of function 'PUTS_LL' [-Wimplicit-function-declaration]
> > common/built-in.o: In function `console_std_set':
> > bootargs.c:(.text.console_std_set+0xf8): undefined reference to `PUTS_LL'
> > bootargs.c:(.text.console_std_set+0x104): undefined reference to `PUTS_LL'
> > bootargs.c:(.text.console_std_set+0x10c): undefined reference to `PUTS_LL'
> I try here on next no break
> 
> PUTS_LL is not defined if DEBUG_LL is not enabled
> 
> did you put in over the previous patch I send for the debug_ll and console

Ok, that was probably it. Reordered and compile testing again.

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
