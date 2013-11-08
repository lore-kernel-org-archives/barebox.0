Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VeaHr-0007Qi-5g
 for barebox@lists.infradead.org; Fri, 08 Nov 2013 00:51:00 +0000
Date: Fri, 8 Nov 2013 01:50:37 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20131108005037.GZ14892@pengutronix.de>
References: <1383869791-25857-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1383869791-25857-1-git-send-email-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] partitions: dos: improve guess of disk size
To: barebox@lists.infradead.org
Cc: jbe@pengutronix.de

On Fri, Nov 08, 2013 at 01:16:31AM +0100, Uwe Kleine-K=F6nig wrote:
> The code used to ineffectively take the end of the last partition as guess
> for the disk size. Better use the end of the partition that has its end
> rearmost.
> =

> Also return an unsigned type instead of int as the result is always
> non-negative.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
> Hello,
> =

> note this is only compile tested.
... and the introduced warning ignored. I really shouldn't send patches
out that late ...

see below
> --- a/common/partitions/dos.c
> +++ b/common/partitions/dos.c
> @@ -27,19 +27,23 @@
>   * @param table partition table
>   * @return sector count
>   */
> -static int disk_guess_size(struct device_d *dev, struct partition_entry =
*table)
> +static uint64_t disk_guess_size(struct device_d *dev,
> +		struct partition_entry *table)
>  {
>  	uint64_t size =3D 0;
>  	int i;
>  =

>  	for (i =3D 0; i < 4; i++) {
> -		if (table[i].partition_start !=3D 0) {
> -			size +=3D get_unaligned_le32(&table[i].partition_start) - size;
> -			size +=3D get_unaligned_le32(&table[i].partition_size);
> +		if (get_unaligned_le32(table[i].partition_start) !=3D 0) {
There is an & missing before table.

Best regards
Uwe

> +			uint64_t part_end =3D get_unaligned_le32(&table[i].partition_start) +
> +				get_unaligned_le32(&table[i].partition_size);
> +
> +			if (size < part_end)
> +				size =3D part_end;
>  		}
>  	}
>  =

> -	return (int)size;
> +	return size;
>  }
>  =

>  static void *read_mbr(struct block_device *blk)

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
