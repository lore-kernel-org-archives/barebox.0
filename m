Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHLiJ-0001iF-5y
 for barebox@lists.infradead.org; Thu, 26 Mar 2020 06:10:00 +0000
Date: Thu, 26 Mar 2020 07:09:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200326060957.GJ27288@pengutronix.de>
References: <20200324154647.17341-1-jmaselbas@kalray.eu>
 <20200324154647.17341-4-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324154647.17341-4-jmaselbas@kalray.eu>
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
Subject: Re: [PATCH 3/3] usb: gadget: dfu: Reset global variables on unbind
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org

On Tue, Mar 24, 2020 at 04:46:47PM +0100, Jules Maselbas wrote:
> Global variables must be reset to their default value before a new
> dfu_bind is done. Otherwise things wont work and are likely to cause
> a system crash due to a use after free: the global dfu_files was still
> pointing deallocated structure after unbind.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  drivers/usb/gadget/dfu.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
> index 592586db1..5504f4933 100644
> --- a/drivers/usb/gadget/dfu.c
> +++ b/drivers/usb/gadget/dfu.c
> @@ -277,6 +277,15 @@ dfu_unbind(struct usb_configuration *c, struct usb_function *f)
>  {
>  	struct f_dfu		*dfu = func_to_dfu(f);
>  
> +	memset(&dfu_mtdinfo, 0, sizeof(dfu_mtdinfo));
> +	dfu_files = NULL;
> +	dfu_file_entry = NULL;
> +	dfufd = -EINVAL;
> +	dfudetach = 0;
> +	dfu_written = 0;
> +	dfu_erased = 0;
> +	prog_erase = 0;

Ah, ok, here is the missing initialization ;)

Please swap the order of patches 2/3 and 3/3

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
