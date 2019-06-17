Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqda-0004rE-AK
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 12:21:27 +0000
Date: Mon, 17 Jun 2019 14:21:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190617122123.m24jeihvqfxt7tpf@pengutronix.de>
References: <20190614203438.18900-1-cory.tusar@zii.aero>
 <20190614203438.18900-2-cory.tusar@zii.aero>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614203438.18900-2-cory.tusar@zii.aero>
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
Subject: Re: [PATCH 1/2] common: boot: Instantiate storage for
 global.boot.machine_id
To: Cory Tusar <Cory.Tusar@zii.aero>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Chris Healy <Chris.Healy@zii.aero>

On Fri, Jun 14, 2019 at 08:35:08PM +0000, Cory Tusar wrote:
> There are references throughout the documentation (and elsewhere in the
> boot code) regarding the use of machine-id in a bootloader spec file.
> However, there was no global storage allocated for this variable.
> 
> This commit adds the necessary storage and associated initialization.
> 
> Signed-off-by: Cory Tusar <cory.tusar@zii.aero>
> ---
>  common/boot.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/common/boot.c b/common/boot.c
> index 974eaf5d0..fae2ff935 100644
> --- a/common/boot.c
> +++ b/common/boot.c
> @@ -348,4 +348,13 @@ void bootsources_list(struct bootentries *bootentries)
>  		printf("%-20s %s\n", entry->title, entry->description);
>  }
>  
> +static int boot_init(void)
> +{
> +	globalvar_add_simple("boot.machine_id", NULL);
> +
> +	return 0;
> +}
> +late_initcall(boot_init);

There already is an initcall in this file adding a globalvar. Could you
add this change to the existing initcall and rename
init_boot_watchdog_timeout() to something more suitable?

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
