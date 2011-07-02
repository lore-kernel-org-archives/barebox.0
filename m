Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from b-pb-sasl-quonix.pobox.com ([208.72.237.35] helo=smtp.pobox.com)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qd0XY-0006Aw-FZ
	for barebox@lists.infradead.org; Sat, 02 Jul 2011 13:47:21 +0000
Message-ID: <4E0F2158.4050505@pobox.com>
Date: Sat, 02 Jul 2011 22:47:04 +0900
From: Shinya Kuribayashi <skuribay@pobox.com>
MIME-Version: 1.0
References: <1309317858-11861-1-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1309317858-11861-1-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/4] Add MIPS arch support to barebox
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On 6/29/11 12:24 PM, Antony Pavlov wrote:
> Barebox can use only uncached memory.

In addition to super-summarized one-liner commit log, I'd like to see
the reason why it is.

> Signed-off-by: Antony Pavlov<antonynpavlov@gmail.com>
> ---
>   arch/mips/Kconfig                   |   54 ++
>   arch/mips/Makefile                  |   63 +++
>   arch/mips/boot/Makefile             |    5 +
>   arch/mips/boot/entry.c              |   79 +++
>   arch/mips/boot/head.S               |  233 ++++++++
>   arch/mips/boot/reset.c              |   32 ++

Is there any reason why head.S, not start.S?  Other archs in the tree
name it start*.[cS].

>   arch/mips/include/asm/barebox.h     |   24 +
>   arch/mips/include/asm/bitops.h      |   32 ++
>   arch/mips/include/asm/byteorder.h   |   30 +
>   arch/mips/include/asm/common.h      |   29 +
>   arch/mips/include/asm/elf.h         |   30 +
>   arch/mips/include/asm/io.h          |   73 +++
>   arch/mips/include/asm/mipsregs.h    |  988 +++++++++++++++++++++++++++++++++++
>   arch/mips/include/asm/module.h      |   36 ++
>   arch/mips/include/asm/posix_types.h |   48 ++
>   arch/mips/include/asm/regdef.h      |  100 ++++
>   arch/mips/include/asm/sections.h    |    1 +
>   arch/mips/include/asm/sgidefs.h     |   44 ++
>   arch/mips/include/asm/string.h      |   31 ++
>   arch/mips/include/asm/swab.h        |   59 ++
>   arch/mips/include/asm/types.h       |   44 ++
>   arch/mips/include/mach/debug_ll.h   |   35 ++

And I would like to know where these kernel headers from.  If it's the
Linux kernel, which version they're based on, and what modifications are
made for barebox.  Such information is useful when we add/remove bits in
the future.  This is why I did for my patches in this regard in a careful
manner.

If it's from U-Boot tree,it's bad idea and let's redo from the scratch.
Starting small is good, starting based on U-Boot is not good in any area.

>   arch/mips/lib/Makefile              |    6 +
>   arch/mips/lib/ashldi3.c             |   27 +
>   arch/mips/lib/ashrdi3.c             |   29 +
>   arch/mips/lib/barebox.lds.S         |   76 +++
>   arch/mips/lib/csrc-r4k.c            |   50 ++
>   arch/mips/lib/libgcc.h              |   25 +
>   arch/mips/lib/lshrdi3.c             |   27 +
>   arch/mips/lib/memory.c              |   34 ++
>   30 files changed, 2344 insertions(+), 0 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
