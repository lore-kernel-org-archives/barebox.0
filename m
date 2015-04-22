Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YkpwY-0000uk-NV
 for barebox@lists.infradead.org; Wed, 22 Apr 2015 08:23:40 +0000
Date: Wed, 22 Apr 2015 10:23:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150422082313.GE6325@pengutronix.de>
References: <1429519419-20325-1-git-send-email-mkl@pengutronix.de>
 <1429519419-20325-3-git-send-email-mkl@pengutronix.de>
 <20150420111302.GN6325@pengutronix.de>
 <553752A1.8070701@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <553752A1.8070701@pengutronix.de>
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
Subject: Re: [PATCH 3/5] timeout: factor out wait-for-key-press loop into
 separate file
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 22, 2015 at 09:49:53AM +0200, Marc Kleine-Budde wrote:
> On 04/20/2015 01:13 PM, Sascha Hauer wrote:
> > On Mon, Apr 20, 2015 at 10:43:37AM +0200, Marc Kleine-Budde wrote:
> >> This patch factors out the wait-for-key-press loop from the shell command
> >> "timeout" into a sparate file, so that it can be used from C, too.
> >>
> >> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> >> ---
> >>  commands/Kconfig         |  1 +
> >>  commands/timeout.c       | 62 ++++++++++-----------------------------------
> >>  common/Kconfig           |  3 +++
> >>  common/Makefile          |  1 +
> >>  common/simple_timeout.c  | 66 ++++++++++++++++++++++++++++++++++++++++++++++++
> >>  include/simple_timeout.h | 11 ++++++++
> >>  6 files changed, 95 insertions(+), 49 deletions(-)
> >>  create mode 100644 common/simple_timeout.c
> >>  create mode 100644 include/simple_timeout.h
> >>
> >> diff --git a/commands/Kconfig b/commands/Kconfig
> >> index 847ff76d1d8b..1c9083381fac 100644
> >> --- a/commands/Kconfig
> >> +++ b/commands/Kconfig
> >> @@ -1487,6 +1487,7 @@ config CMD_READLINE
> >>  config CMD_TIMEOUT
> >>  	tristate
> >>  	prompt "timeout"
> >> +	select SIMPLE_TIMEOUT
> > 
> > Since the linker throws away unused functions anyway I think we don't
> > need an option for this.
> > 
> >> +#include <clock.h>
> >> +#include <command.h>
> >> +#include <errno.h>
> >> +#include <simple_timeout.h>
> >> +#include <stdio.h>
> >> +
> >> +int is_simple_timeout(int timeout_s, unsigned flags, char *out_key)
> > 
> > I don't like the name very much since we already have a is_timeout
> > function which does something completely different. Also is_xxx_timeout
> > seems to imply that this function doesn't wait but only returns a
> > status.
> > 
> > How about console_countdown() or similar?
> 
> What about the return value?
> 
> Return -EINTR + set out_key on interruption by user, return 0 otherwise?

Sounds good.

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
