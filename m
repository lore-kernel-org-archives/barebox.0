Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VenDA-0005DO-Vu
 for barebox@lists.infradead.org; Fri, 08 Nov 2013 14:39:02 +0000
Date: Fri, 8 Nov 2013 15:38:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131108143839.GY24559@pengutronix.de>
References: <20131108005153.GA14892@pengutronix.de>
 <1383905621-29034-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1383905621-29034-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH v2] partitions: dos: parse extended partition
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Nov 08, 2013 at 11:13:41AM +0100, Uwe Kleine-K=F6nig wrote:
> DOS MBRs might contain an extended partition that holds several logical
> partitions. Add these to the partitions of the block device.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Applied, thanks

Sascha

> ---
>  common/partitions/dos.c | 76 +++++++++++++++++++++++++++++++++++++++++++=
+++++-
>  1 file changed, 75 insertions(+), 1 deletion(-)
> =

> diff --git a/common/partitions/dos.c b/common/partitions/dos.c
> index 64314a8..37addfd 100644
> --- a/common/partitions/dos.c
> +++ b/common/partitions/dos.c
> @@ -116,12 +116,64 @@ static int dos_get_disk_signature(struct param_d *p=
, void *_priv)
>  	return 0;
>  }
>  =

> +static void dos_extended_partition(struct block_device *blk, struct part=
ition_desc *pd,
> +		struct partition *partition)
> +{
> +	uint8_t *buf =3D dma_alloc(SECTOR_SIZE);
> +	uint32_t ebr_sector =3D partition->first_sec;
> +	struct partition_entry *table =3D (struct partition_entry *)&buf[0x1be];
> +
> +	while (pd->used_entries < ARRAY_SIZE(pd->parts)) {
> +		int rc, i;
> +		int n =3D pd->used_entries;
> +
> +		dev_dbg(blk->dev, "expect EBR in sector %x\n", ebr_sector);
> +
> +		rc =3D block_read(blk, buf, ebr_sector, 1);
> +		if (rc !=3D 0) {
> +			dev_err(blk->dev, "Cannot read EBR partition table\n");
> +			goto out;
> +		}
> +
> +		/* sanity checks */
> +		if (buf[0x1fe] !=3D 0x55 || buf[0x1ff] !=3D 0xaa) {
> +			dev_err(blk->dev, "sector %x doesn't contain an EBR signature\n", ebr=
_sector);
> +			goto out;
> +		}
> +
> +		for (i =3D 0x1de; i < 0x1fe; ++i)
> +			if (buf[i]) {
> +				dev_err(blk->dev, "EBR's third or fourth partition non-empty\n");
> +				goto out;
> +			}
> +		/* /sanity checks */
> +
> +		/* the first entry defines the extended partition */
> +		pd->parts[n].first_sec =3D ebr_sector +
> +			get_unaligned_le32(&table[0].partition_start);
> +		pd->parts[n].size =3D get_unaligned_le32(&table[0].partition_size);
> +		pd->parts[n].dos_partition_type =3D table[0].type;
> +		pd->used_entries++;
> +
> +		/* the second entry defines the start of the next ebr if !=3D 0 */
> +		if (get_unaligned_le32(&table[1].partition_start))
> +			ebr_sector =3D partition->first_sec +
> +				get_unaligned_le32(&table[1].partition_start);
> +		else
> +			break;
> +	}
> +
> +out:
> +	dma_free(buf);
> +	return;
> +}
> +
>  /**
>   * Check if a DOS like partition describes this block device
>   * @param blk Block device to register to
>   * @param pd Where to store the partition information
>   *
> - * It seems at least on ARM this routine canot use temp. stack space for=
 the
> + * It seems at least on ARM this routine cannot use temp. stack space fo=
r the
>   * sector. So, keep the malloc/free.
>   */
>  static void dos_partition(void *buf, struct block_device *blk,
> @@ -129,6 +181,7 @@ static void dos_partition(void *buf, struct block_dev=
ice *blk,
>  {
>  	struct partition_entry *table;
>  	struct partition pentry;
> +	struct partition *extended_partition =3D NULL;
>  	uint8_t *buffer =3D buf;
>  	int i;
>  	struct disk_signature_priv *dsp;
> @@ -150,11 +203,32 @@ static void dos_partition(void *buf, struct block_d=
evice *blk,
>  			pd->parts[n].size =3D pentry.size;
>  			pd->parts[n].dos_partition_type =3D pentry.dos_partition_type;
>  			pd->used_entries++;
> +			/*
> +			 * Partitions of type 0x05 and 0x0f (and some more)
> +			 * contain extended partitions. Only check for type 0x0f
> +			 * here as this is the easiest to parse and common
> +			 * enough.
> +			 */
> +			if (pentry.dos_partition_type =3D=3D 0x0f) {
> +				if (!extended_partition)
> +					extended_partition =3D &pd->parts[n];
> +				else
> +					/*
> +					 * An DOS MBR must only contain a single
> +					 * extended partition. Just ignore all
> +					 * but the first.
> +					 */
> +					dev_warn(blk->dev, "Skipping additional extended partition\n");
> +			}
> +
>  		} else {
>  			dev_dbg(blk->dev, "Skipping empty partition %d\n", i);
>  		}
>  	}
>  =

> +	if (extended_partition)
> +		dos_extended_partition(blk, pd, extended_partition);
> +
>  	dsp =3D xzalloc(sizeof(*dsp));
>  	dsp->blk =3D blk;
>  =

> -- =

> 1.8.4.rc3
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
