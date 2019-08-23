Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i15dQ-0006o5-K2
 for barebox@lists.infradead.org; Fri, 23 Aug 2019 09:13:29 +0000
References: <20190822061941.6093-1-ahmad@a3f.at>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <9ed1093b-d4e8-64ce-2013-69a7031dda72@pengutronix.de>
Date: Fri, 23 Aug 2019 11:13:26 +0200
MIME-Version: 1.0
In-Reply-To: <20190822061941.6093-1-ahmad@a3f.at>
Content-Language: en-US
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
Subject: Re: [PATCH 0/5] sandbox: support -fsanitize={address,ubsan}
To: Ahmad Fatoum <ahmad@a3f.at>, barebox@lists.infradead.org
Cc: afa@pengutronix.de



On 8/22/19 8:19 AM, Ahmad Fatoum wrote:
> I get a double free inside of SDL's X11 backend when trying to use the
> sandbox SDL video driver on wayland. I am not sure what to do about this
> yet, but I made these few patches to get nicer looking backtraces for a
> start.

FTR: SDL video driver is broken since b3fbfad7ae ("fs: dentry cache implementation")
Adding -fvisibility=hidden to the sandbox barebox link line fixes it, so I assume the
commit causes some symbol collision with another library that barebox is linked against
on my system. Haven't found out which symbol it is yet though.

> 
> Ahmad Fatoum (5):
>   sandbox: include header to provide missing prototype
>   common: add generic CONFIG_UBSAN_SANITIZE_ALL plumbing
>   common: add generic CONFIG_KASAN option
>   sandbox: support Address and UndefinedBehavior sanitizers
>   commands: fix unaligned accesses of aliased commands on amd64
> 
>  Makefile                     |  5 +++++
>  arch/sandbox/Kconfig         |  2 ++
>  arch/sandbox/Makefile        | 13 ++++++++++++-
>  arch/sandbox/board/devices.c |  1 +
>  common/Kconfig               | 34 ++++++++++++++++++++++++++++++++++
>  common/command.c             |  2 +-
>  scripts/Makefile.lib         |  5 +++++
>  scripts/Makefile.ubsan       | 19 +++++++++++++++++++
>  8 files changed, 79 insertions(+), 2 deletions(-)
>  create mode 100644 scripts/Makefile.ubsan
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
