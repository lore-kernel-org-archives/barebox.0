Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TzP9t-0001Qj-BW
 for barebox@lists.infradead.org; Sun, 27 Jan 2013 10:08:19 +0000
Date: Sun, 27 Jan 2013 11:08:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130127100813.GU1906@pengutronix.de>
References: <20130125235326.GG26329@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130125235326.GG26329@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/7] globalvar: add multiple device support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Jan 26, 2013 at 12:53:26AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	this will allow to reduce the scope of device and params to search
> 	during boot time
> 
> 	we keep the retro compatibility
> 
> The following changes since commit 2c93912f34ce06585c4ede0298aef7225e096df2:
> 
>   atmel_mci: gpio: request and configure card detect (2013-01-25 19:52:44 +0100)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/globalvar

When compiling this I get:

common/bootargs.c: In function 'linux_bootargs_get':
common/bootargs.c:50:2: warning: passing argument 1 of 'global_get_match' from incompatible pointer type [enabled by default]
In file included from common/bootargs.c:23:0:
include/globalvar.h:19:7: note: expected 'struct device_d *' but argument is of type 'char *'
common/bootargs.c:54:2: warning: passing argument 1 of 'global_get_match' from incompatible pointer type [enabled by default]
In file included from common/bootargs.c:23:0:
include/globalvar.h:19:7: note: expected 'struct device_d *' but argument is of type 'char *'
common/bootargs.c: In function 'bootargs_init':
common/bootargs.c:83:19: warning: assignment from incompatible pointer type [enabled by default]

When starting this I get:

unable to handle NULL pointer dereference at address 0x00000068
pc : [<a7f1f928>]    lr : [<a7f1faf8>]
sp : a6effc18  ip : 00000002  fp : 00000000
r10: a6ffdf2c  r9 : a6ffd704  r8 : a6ffb009
r7 : 00000000  r6 : 00000000  r5 : 00000000  r4 : 00000000
r3 : 00000000  r2 : 00000000  r1 : a6ffb009  r0 : 00000000
Flags: nZCv  IRQs off  FIQs off  Mode SVC_32
[<a7f1f928>] (get_param_by_name+0xc/0xb4) from [<a7f1faf8>] (dev_add_param+0x18/0x94)
[<a7f1faf8>] (dev_add_param+0x18/0x94) from [<a7f07800>] (global_add_simple+0x14/0x18)
[<a7f07800>] (global_add_simple+0x14/0x18) from [<a7f0789c>] (globalvar_add_simple+0x98/0xb0)
[<a7f0789c>] (globalvar_add_simple+0x98/0xb0) from [<a7f1e438>] (do_global+0x110/0x188)
[<a7f1e438>] (do_global+0x110/0x188) from [<a7f05940>] (execute_command+0x38/0x78)
[<a7f05940>] (execute_command+0x38/0x78) from [<a7f02150>] (run_list_real+0x7e0/0x938)
[<a7f02150>] (run_list_real+0x7e0/0x938) from [<a7f01798>] (parse_stream_outer+0x198/0x270)
[<a7f01798>] (parse_stream_outer+0x198/0x270) from [<a7f0190c>] (parse_string_outer+0x9c/0x100)
[<a7f0190c>] (parse_string_outer+0x9c/0x100) from [<a7f022e8>] (source_script+0x40/0x78)
...

Overall I'm not sure this is worth it. I did some measurements on a
400MHz ARM9 board. From startup until booting the kernel barebox spends
about 5.5ms in getenv/setenv. This can be reduced quite easily to 3ms
by moving globalvar_init to a core_initcall.

Anyway, the series is not mergable as is. Also the search through subdevices
of the globalvar device seems to have some undesirable side effects.

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
