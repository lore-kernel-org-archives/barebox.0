Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glVAY-00050V-1Z
 for barebox@lists.infradead.org; Mon, 21 Jan 2019 08:43:01 +0000
Date: Mon, 21 Jan 2019 09:42:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190121084255.j36s6kbljtl6xanu@pengutronix.de>
References: <20190119005051.31656-1-vivien.didelot@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190119005051.31656-1-vivien.didelot@gmail.com>
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
Subject: Re: [PATCH] boot: make it a little bit less verbose
To: Vivien Didelot <vivien.didelot@gmail.com>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

On Fri, Jan 18, 2019 at 07:50:51PM -0500, Vivien Didelot wrote:
> The current boot code prints too much error messages without much value
> in them. This patch prints the error string when it makes sense and
> simplifies the return path of bootscript_boot(). Make use of pr_err()
> in boot_entry() which is the shared code responsible for calling the
> boot_entry->boot callback. Remove the unnecessary print statement
> from bootsource_action() as well.
> 
> This removes a single print statement ATM, allowing us to go from this:
> 
>     booting 'sd'
>     Cannot set parameter mci0.probe: No such device
>     running automount command 'mci${global.sd}.probe=1 && mount /dev/disk${global.sd}.0 /mnt/sd' failed
>     could not open /mnt/sd/zImage: No such device
>     ERROR: Booting 'sd' failed: No such device
>     booting 'sd' failed: No such device
>     boot: No such device
> 
> to this:
> 
>     Booting entry 'sd'
>     Cannot set parameter mci0.probe: No such device
>     running automount command 'mci${global.sd}.probe=1 && mount /dev/disk${global.sd}.0 /mnt/sd' failed
>     could not open /mnt/sd/zImage: No such device
>     ERROR: Booting entry 'sd' failed
>     boot: No such device
> 
> Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>
> ---
>  common/boot.c | 20 ++++++--------------
>  1 file changed, 6 insertions(+), 14 deletions(-)

Yeah, looks better.

Applied, thanks

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
