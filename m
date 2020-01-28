Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwOeg-0007yY-Ee
 for barebox@lists.infradead.org; Tue, 28 Jan 2020 11:03:41 +0000
References: <49d641a2-d827-885f-64a1-aac54877cfb5@pengutronix.de>
 <20200128104955.10994-1-pmamonov@gmail.com>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <64c9e041-d554-ac17-6326-b50c8eefe51a@pengutronix.de>
Date: Tue, 28 Jan 2020 12:03:35 +0100
MIME-Version: 1.0
In-Reply-To: <20200128104955.10994-1-pmamonov@gmail.com>
Content-Language: en-US
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: MIPS: relocation issue
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org



On 28.01.20 11:49, Peter Mamonov wrote:
> Hi Oleksij,
> 
> Below you will find the patch, which adds the `whereami` command. The command
> prints several addresses belonging to code, data, bss, heap and stack areas.
> I've run it on qemu/malta with relocations enabled and disabled as per Antony's
> mail. Output comparison shows that only the stack is relocated. Looks like
> relocation doesn't work as expected. Also note that the stack was relocated
> from the uncached KSEG1 to the cached KSEG0 segment, which is inconsistent at
> least.
>

ACK. The patch "MIPS: remove .bss to __rel_start overlay" should fix it. Please test :)

> Relocation enabled:
> 
> 	barebox@qemu malta:/ whereami
> 	code   @ a0829bcc (a0829bc0)
> 	data   @ a085f3c0
> 	bss    @ a0861ae0
> 	heap   @ a0428c38
> 	stack  @ 8fb8fd50
> 	barebox@qemu malta:/ version
> 
> 	barebox 2020.01.0-00104-gfe12ba2776 #3 Tue Jan 28 13:34:06 MSK 2020
> 
> 
> Relocation disabled:
> 
> 	barebox@qemu malta:/ whereami
> 	code   @ a0829bcc (a0829bc0)
> 	data   @ a085f1e0
> 	bss    @ a0861900
> 	heap   @ a0428c38
> 	stack  @ a03ffd50

This functionality is available with command iomem.

> Regards,
> Peter
> ---
>   commands/Kconfig    |  5 +++++
>   commands/Makefile   |  1 +
>   commands/whereami.c | 45 +++++++++++++++++++++++++++++++++++++++++++++
>   3 files changed, 51 insertions(+)
>   create mode 100644 commands/whereami.c
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index add0d26ee9..a660e09db4 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -2217,6 +2217,11 @@ config CMD_UBSAN
>   	  This is a test command for the undefined behavior sanitizer.
>   	  It triggers various undefined behavior, and detect it.
>   
> +config CMD_WHEREAMI
> +	tristate "whereami"
> +	depends on MIPS
> +	default y
> +
>   # end Miscellaneous commands
>   endmenu
>   
> diff --git a/commands/Makefile b/commands/Makefile
> index 8e8c449bc1..dfa3d6e447 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -128,6 +128,7 @@ obj-$(CONFIG_CMD_NAND_BITFLIP)	+= nand-bitflip.o
>   obj-$(CONFIG_CMD_SEED)		+= seed.o
>   obj-$(CONFIG_CMD_IP_ROUTE_GET)  += ip-route-get.o
>   obj-$(CONFIG_CMD_UBSAN)		+= ubsan.o
> +obj-$(CONFIG_CMD_WHEREAMI)	+= whereami.o
>   
>   UBSAN_SANITIZE_ubsan.o := y
>   
> diff --git a/commands/whereami.c b/commands/whereami.c
> new file mode 100644
> index 0000000000..3edb070fe8
> --- /dev/null
> +++ b/commands/whereami.c
> @@ -0,0 +1,45 @@
> +#include <common.h>
> +#include <command.h>
> +#include <complete.h>
> +
> +static volatile int data = 1;
> +static volatile int bss;
> +
> +static void* code();
> +static noinline void* code()
> +{
> +	void *ret;
> +	__asm__ __volatile__(
> +		".set	push\n"
> +		".set	noreorder\n"
> +		".set	noat\n"
> +		"	move	$1, $31\n"
> +		"	bal	255f\n"
> +		"	nop\n"
> +		"255:	move	%0, $31\n"
> +		"	move	$31, $1\n"
> +		".set	pop\n"
> +		:"=r" (ret)
> +	);
> +	return ret;
> +}
> +
> +static int do_whereami(int argc, char *argv[])
> +{
> +	volatile int stack;
> +	int *heapp = malloc(sizeof(int));
> +
> +	printf("code   @ %p (%p)\n", code(), &code);
> +	printf("data   @ %p\n", &data);
> +	printf("bss    @ %p\n", &bss);
> +	printf("heap   @ %p\n", heapp);
> +	printf("stack  @ %p\n", &stack);
> +	return 0;
> +}
> +
> +BAREBOX_CMD_START(whereami)
> +	.cmd		= do_whereami,
> +	BAREBOX_CMD_DESC("print addresses from code, stack, heap and data sections")
> +	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
> +	BAREBOX_CMD_COMPLETE(empty_complete)
> +BAREBOX_CMD_END
> 

Kind regards,
Oleksij Rempel

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
