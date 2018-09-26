Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g54wJ-0005kY-Ui
 for barebox@lists.infradead.org; Wed, 26 Sep 2018 08:12:58 +0000
Date: Wed, 26 Sep 2018 10:12:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180926081226.GR4097@pengutronix.de>
References: <20180925195016.3683-1-m.niestroj@grinn-global.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180925195016.3683-1-m.niestroj@grinn-global.com>
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
Subject: Re: [PATCH] fs: improve ramfs_truncate speed
To: Marcin Niestroj <m.niestroj@grinn-global.com>
Cc: Maciej Zagrabski <m.zagrabski@grinn-global.com>, barebox@lists.infradead.org

Hi Marcin,

On Tue, Sep 25, 2018 at 09:50:16PM +0200, Marcin Niestroj wrote:
> During sequential writes into single file, fs layer is consequently
> calling ramfs_truncate() function. When file size grows
> ramfs_truncate() takes more and more time to complete, due to
> interations through all already written data chunks. As an example
> loading ~450M image using usb fastboot protocol took over 500s to
> complete.
> 
> Use ramfs_find_chunk() function to search for last chunk of data in
> ramfs_truncate() implementation, which saves a lot of loop
> iterations. As a result loading ~450M image using usb fastboot
> protocol takes around 25s now.
> 
> Tested-by: Maciej Zagrabski <m.zagrabski@grinn-global.com>
> Signed-off-by: Marcin Niestroj <m.niestroj@grinn-global.com>
> ---
>  fs/ramfs.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/fs/ramfs.c b/fs/ramfs.c
> index 7548bdac9..6f4aa0675 100644
> --- a/fs/ramfs.c
> +++ b/fs/ramfs.c
> @@ -362,6 +362,9 @@ static int ramfs_truncate(struct device_d *dev, FILE *f, ulong size)
>  			if (!node->data)
>  				return -ENOMEM;
>  			data = node->data;
> +		} else {
> +			data = ramfs_find_chunk(node, oldchunks - 1);
> +			newchunks -= (oldchunks - 1);
>  		}

It took me a bit to understand why you have to call ramfs_find_chunk()
with "oldchunks - 1" instead of just "oldchunks" I just sent out a patch
which changes that, so you should now be able to use oldchunks directly.
Could you rebase your patch ontop of that and resend?

Also, could you rearrange to use if (data) rather than if (!data)? Positive
logic is easier to read.

Thanks
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
