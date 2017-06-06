Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dI8JD-0002zR-PE
 for barebox@lists.infradead.org; Tue, 06 Jun 2017 06:49:45 +0000
Date: Tue, 6 Jun 2017 08:49:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170606064921.7jebs4phfdemombf@pengutronix.de>
References: <CAAP7ucJ9m2SvZ29nNbQF7HRKcGSQ0O_RVFKF63Xv79CCR=uA_g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAP7ucJ9m2SvZ29nNbQF7HRKcGSQ0O_RVFKF63Xv79CCR=uA_g@mail.gmail.com>
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
Subject: Re: RFC: barebox RATP C library?
To: Aleksander Morgado <aleksander@aleksander.es>
Cc: barebox@lists.infradead.org

On Mon, Jun 05, 2017 at 07:17:27PM +0200, Aleksander Morgado wrote:
> Hey,
> 
> I've been playing a bit with the possibility of having a C library to
> talk RATP with barebox, totally equivalent to what bbremote does in
> python, but as a general C lib with a stable API that may be
> integrated in other C/C++ applications.
> 
> From my POV I see two options to try:
>    a) build a library based on lib/ratp.c and common/ratp.c but
> without directly sharing the source code; i.e. just take bits and
> pieces from those implementations where necessary, and write the
> library as any other userspace library.
>    b) build a small library that allows including lib/ratp.c (and
> maybe common/ratp.c) directly in the build, but which would require
> those files to be updated in a way that allow being shared by a
> separate library that isn't running in the whole barebox runtime
> context.
> 
> I'm not sure if anyone has thoughts on this; I initially thought b)
> would be definitely the way to go, but the current implementation
> seems too tied to the actual barebox runtime, so maybe it's just
> easier to setup a) and just share e.g. the barebox RATP message format
> structs, enums and so on.

b) should be the goal, but the way leads over a) anyway ;)

Where are the problems with sharing the code? I think the different
timers might be a problem. Anything else? Maybe you could start
modifying the code to fit to a userspace library while still trying
to keep the diff to the original files small. From the resulting diff
between the files we can decide if it's worth going to b) or
if the different APIs are just too different. We could also modify
barebox to fit more to the userspace API.

I'm not sure if it's worth sharing the build system though. We could
still copy the ratp code, but keep both versions in sync.

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
