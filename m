Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Ymc6e-0007eb-4z
 for barebox@lists.infradead.org; Mon, 27 Apr 2015 06:01:25 +0000
Date: Mon, 27 Apr 2015 08:00:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150427060059.GV6325@pengutronix.de>
References: <20150426173831.c6246f01a64d316351f3ce54@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150426173831.c6246f01a64d316351f3ce54@gmail.com>
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
Subject: Re: RFC: of_device_id: use pointer for the data field
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Apr 26, 2015 at 05:38:31PM +0300, Antony Pavlov wrote:
> Hi!
> 
> Just now barebox' of_device_id struct uses unsigned long type for data field:
> 
>   struct of_device_id {
>           char *compatible;
>           unsigned long data;
>   };
> 
> Here is of_device_id struct in linux kernel:
> 
>   struct of_device_id {
>           char name[32];
>           char type[32];
>           char compatible[128];
>           const void *data;
>   };
> 
> Just all data fields are used as pointers and need 'unsigned long' casting.
> E.g. see 'git grep -A 4 of_device_id drivers/' output:
> 
>   drivers/ata/sata-imx.c:static __maybe_unused struct of_device_id imx_sata_dt_ids[] = {
>   drivers/ata/sata-imx.c- {
>   drivers/ata/sata-imx.c-         .compatible = "fsl,imx6q-ahci",
>   drivers/ata/sata-imx.c-         .data = (unsigned long)&data_imx6,
>   drivers/ata/sata-imx.c- }, {
> 
> Could we use 'const void *' type for data field as linux kernel does?

Yes, good idea.

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
