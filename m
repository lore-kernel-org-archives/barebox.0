Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSd3u-000151-Dk
 for barebox@lists.infradead.org; Fri, 30 Nov 2018 07:18:08 +0000
Date: Fri, 30 Nov 2018 08:17:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181130071754.ffr6t7mmysbhsj3h@pengutronix.de>
References: <20181129113048.31857-1-s.trumtrar@pengutronix.de>
 <20181129113048.31857-8-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181129113048.31857-8-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 07/15] Makefile: link of barebox moved to script
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Steffen,

Nice work overall. I thought the compile test would break earlier, but
we came up to the seventh patch already ;)

On Thu, Nov 29, 2018 at 12:30:40PM +0100, Steffen Trumtrar wrote:
> Adoption of the linux v3.4 patch: 1f2bfbd00e466ff3489b2ca5cc75b1cccd14c123
> 
>     Move the final link of vmlinux to a script to improve
>     readability and maintainability of the code.
> 
>     The Makefile fragments used to link vmlinux has over the
>     years seen far too many changes and the logic had become
>     hard to follow.
> 
>     As the process by nature is serialized there was
>     nothing gained including this in the Makefile.
> 
>     "um" has special link requirments - and the
>     only way to handle this was to hard-code the linking
>     of "um" in the script.
>     This was better than trying to modularize it only for the
>     benefit of "um" anyway.
> 
>     The shell script has been improved after input from:
>     Arnaud Lacombe <lacombar@gmail.com>
>     Nick Bowler <nbowler@elliptictech.com>
> 
>     Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
>     Cc: Arnaud Lacombe <lacombar@gmail.com>
>     Cc: Nick Bowler <nbowler@elliptictech.com>
>     Cc: Richard Weinberger <richard@nod.at>
>     Signed-off-by: Michal Marek <mmarek@suse.cz>
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  Makefile                | 187 ++++-----------------------------
>  scripts/link-barebox.sh | 223 ++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 242 insertions(+), 168 deletions(-)
>  create mode 100755 scripts/link-barebox.sh

This one breaks two defconfigs. efi_defconfig failes with:

arch/x86/mach-efi/built-in.o: In function `_start':
(.text+0x94): undefined reference to `_DYNAMIC'

And sandbox_defconfig:

ld: warning: cannot find entry symbol _start; defaulting to
0000000000401000
ld: arch/sandbox/os/built-in.o: in function `rawmode':
common.c:(.text+0x11): undefined reference to `tcgetattr'
ld: common.c:(.text+0xdd): undefined reference to `tcsetattr'
ld: arch/sandbox/os/built-in.o: in function `cookmode':
common.c:(.text+0xeb): undefined reference to `stdout'
ld: common.c:(.text+0xf3): undefined reference to `fflush'
ld: common.c:(.text+0x109): undefined reference to `tcsetattr'
ld: arch/sandbox/os/built-in.o: in function `linux_tstc':
(.text+0x1cd): undefined reference to `select'
ld: arch/sandbox/os/built-in.o: in function `linux_get_time':
(.text+0x236): undefined reference to `clock_gettime'
ld: arch/sandbox/os/built-in.o: in function `linux_exit':
(.text+0x265): undefined reference to `exit'
ld: arch/sandbox/os/built-in.o: in function `linux_read':
(.text+0x29e): undefined reference to `read'
ld: (.text+0x2bf): undefined reference to `printf'
ld: (.text+0x2d0): undefined reference to `__errno_location'
...

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
