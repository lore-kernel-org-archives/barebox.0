Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b00w6-0004eC-ON
 for barebox@lists.infradead.org; Tue, 10 May 2016 06:14:27 +0000
Date: Tue, 10 May 2016 08:14:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160510061404.GX19714@pengutronix.de>
References: <1462791308-32168-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1462791308-32168-1-git-send-email-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] partitions: dos: add partuuid string for logical
 partitions
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, May 09, 2016 at 12:55:08PM +0200, Uwe Kleine-K=F6nig wrote:
> Commit bc31d85c6e23 ("cdev: Add partuuid string to struct cdev") added
> partuuid strings for dos partitions but only for the (up to) four
> primary partitions. Do the same for the logical partitions. Their
> numbers start at 5 independently of the number of available primary
> partitions.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  common/partitions/dos.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/common/partitions/dos.c b/common/partitions/dos.c
> index e0cb35627d33..5f08e253ee59 100644
> --- a/common/partitions/dos.c
> +++ b/common/partitions/dos.c
> @@ -117,11 +117,12 @@ static int dos_get_disk_signature(struct param_d *p=
, void *_priv)
>  }
>  =

>  static void dos_extended_partition(struct block_device *blk, struct part=
ition_desc *pd,
> -		struct partition *partition)
> +		struct partition *partition, uint32_t signature)
>  {
>  	uint8_t *buf =3D dma_alloc(SECTOR_SIZE);
>  	uint32_t ebr_sector =3D partition->first_sec;
>  	struct partition_entry *table =3D (struct partition_entry *)&buf[0x1be];
> +	unsigned partno =3D 5;
>  =

>  	while (pd->used_entries < ARRAY_SIZE(pd->parts)) {
>  		int rc, i;
> @@ -153,7 +154,11 @@ static void dos_extended_partition(struct block_devi=
ce *blk, struct partition_de
>  			get_unaligned_le32(&table[0].partition_start);
>  		pd->parts[n].size =3D get_unaligned_le32(&table[0].partition_size);
>  		pd->parts[n].dos_partition_type =3D table[0].type;
> +		if (signature)
> +			sprintf(pd->parts[n].partuuid, "%08x-%02u",
> +				signature, partno);
>  		pd->used_entries++;
> +		partno++;
>  =

>  		/* the second entry defines the start of the next ebr if !=3D 0 */
>  		if (get_unaligned_le32(&table[1].partition_start))
> @@ -231,7 +236,7 @@ static void dos_partition(void *buf, struct block_dev=
ice *blk,
>  	}
>  =

>  	if (extended_partition)
> -		dos_extended_partition(blk, pd, extended_partition);
> +		dos_extended_partition(blk, pd, extended_partition, signature);
>  =

>  	dsp =3D xzalloc(sizeof(*dsp));
>  	dsp->blk =3D blk;
> -- =

> 2.8.0.rc3
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
