Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jt51l-0005vv-QQ
 for barebox@lists.infradead.org; Wed, 08 Jul 2020 08:02:02 +0000
References: <20200707135608.31901-1-pmamonov@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <c50f7807-9bfa-bc70-d771-f798422760e1@pengutronix.de>
Date: Wed, 8 Jul 2020 10:02:00 +0200
MIME-Version: 1.0
In-Reply-To: <20200707135608.31901-1-pmamonov@gmail.com>
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
Subject: Re: RFC: types conflicts
To: Peter Mamonov <pmamonov@gmail.com>, s.hauer@pengutronix.de, antonynpavlov@gmail.com
Cc: barebox@lists.infradead.org

Hello Peter,

On 7/7/20 3:56 PM, Peter Mamonov wrote:
> Hello,
> 
> I tried to build MicroPython using barebox toolchain and found a number of
> conflicts between barebox and compiler headers. Below you will find the patch
> which demostrates some of them. In this particular example the problem arises
> due to simultaneous inclusion of some compiler headers along with barebox
> version of `strings.h`, which in turn includes barebox analogs of those headers
> from `include/linux`. I belive there should be a segregation between headers in
> `include` and in `include/linux`, i.e. headers from `include/` should not
> reference <linux/*.h> headers. Yet I understand this is somewhat problematic.
> What do you think?

barebox code shouldn't make use of any compiler headers at all, except for <stdarg.h>.
The only exception are arch/sandbox/os and scripts/, which reference libc headers.
Everything else should comes out of barebox' include/ directory.

If you have foreign code that you want to port into barebox, either modify it
to use barebox headers or change the include order when building it to use _local_
versions of the headers it requires.


> 
> Regards,
> Peter
> 
> ---
>  commands/Makefile         |  1 +
>  commands/types_conflict.c | 12 ++++++++++++
>  2 files changed, 13 insertions(+)
>  create mode 100644 commands/types_conflict.c
> 
> diff --git a/commands/Makefile b/commands/Makefile
> index 817fc36e96..4e0cf34560 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -1,3 +1,4 @@
> +obj-y				+= types_conflict.o
>  obj-$(CONFIG_STDDEV)		+= stddev.o
>  obj-$(CONFIG_CMD_DIGEST)	+= digest.o
>  obj-$(CONFIG_COMPILE_HASH)	+= hashsum.o
> diff --git a/commands/types_conflict.c b/commands/types_conflict.c
> new file mode 100644
> index 0000000000..70fee8d6f4
> --- /dev/null
> +++ b/commands/types_conflict.c
> @@ -0,0 +1,12 @@
> +#include <stdbool.h>
> +#include <stdint.h>
> +#include <stddef.h>
> +
> +#include <string.h>

barebox (except sandbox) is meant to be compiled with freestanding C implementations
that aren't required to provide a <string.h>. So no barebox code should depend on
compiler-provided <string.h>.

> +
> +int test(void);
> +
> +int test()
> +{
> +	return 0;
> +}
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
