Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cvIF3-0005o2-Gb
 for barebox@lists.infradead.org; Tue, 04 Apr 2017 06:47:03 +0000
Date: Tue, 4 Apr 2017 08:46:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170404064639.4bpzano7t57joqwo@pengutronix.de>
References: <1490384122-13960-1-git-send-email-franck.jullien@gmail.com>
 <20170329064253.4rsnyzsfuaxzlm42@pengutronix.de>
 <CAJfOKBxJ0FwF0VBpeDTxe7cvgxmTW2xYHoCgXNAL+q+=9v=O6Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJfOKBxJ0FwF0VBpeDTxe7cvgxmTW2xYHoCgXNAL+q+=9v=O6Q@mail.gmail.com>
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
Subject: Re: [PATCH] openrisc: fix call to restart_handler_register_fn
To: Franck Jullien <franck.jullien@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Wed, Mar 29, 2017 at 03:45:04PM +0200, Franck Jullien wrote:
> 2017-03-29 8:42 GMT+02:00 Sascha Hauer <s.hauer@pengutronix.de>:
> > On Fri, Mar 24, 2017 at 08:35:22PM +0100, Franck Jullien wrote:
> >> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
> >> ---
> >>  arch/openrisc/cpu/cpu.c | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/arch/openrisc/cpu/cpu.c b/arch/openrisc/cpu/cpu.c
> >> index d52b021..e7f9445 100644
> >> --- a/arch/openrisc/cpu/cpu.c
> >> +++ b/arch/openrisc/cpu/cpu.c
> >> @@ -41,6 +41,6 @@ static void __noreturn openrisc_restart_cpu(struct restart_handler *rst)
> >>
> >>  static int restart_register_feature(void)
> >>  {
> >> -     restart_handler_register_fn(openrisc_restart_cpu, NULL, RESET_SCOPE_CPU);
> >> +     return restart_handler_register_fn(openrisc_restart_cpu);
> >>  }
> >
> > Applied, thanks. It seems I have disabled my openrisc autobuild at some
> > point. Just re-enabled it. Normally such build failures shouldn't
> > happen.
> >
> 
> FYI, you can get the lastest toolchain here:
> 
> https://github.com/openrisc/or1k-gcc/releases/tag/or1k-5.4.0-20170218

Thanks for noting. I just updated my toolchain to the latest one. From a
quick test it seems to work.

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
