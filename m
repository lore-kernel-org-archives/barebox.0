Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctsCP-0003Ae-0x
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 08:46:27 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1ctsC3-0002Ie-3I
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 10:46:03 +0200
Received: from sha by pty.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1ctsC2-0002gt-Sk
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 10:46:02 +0200
Date: Fri, 31 Mar 2017 10:46:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170331084602.6ytfjepjlm3lyljz@pengutronix.de>
References: <20170331053323.17821-1-s.hauer@pengutronix.de>
 <20170331053323.17821-7-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170331053323.17821-7-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 06/14] mtd: partition: set cdev->offset to the actual
 offset
To: Barebox List <barebox@lists.infradead.org>

On Fri, Mar 31, 2017 at 07:33:15AM +0200, Sascha Hauer wrote:
> cdev->offset is currently not used, but can be useful later when
> we separate the of_partition_fixup from mtd, because then we will
> need the offset of the partition.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mtd/partition.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
> index 777cb758ce..745834384f 100644
> --- a/drivers/mtd/partition.c
> +++ b/drivers/mtd/partition.c
> @@ -225,6 +225,8 @@ struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset,
>  	if (ret)
>  		goto err;
>  
> +	part->cdev.offset = offset;
> +

Nah, this does not work. Will drop this one.

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
