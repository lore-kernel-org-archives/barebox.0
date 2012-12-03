Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfRXO-0006Di-I3
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 08:38:03 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TfRXM-0002QY-PG
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 09:38:00 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TfRXM-0002uH-OG
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 09:38:00 +0100
Date: Mon, 3 Dec 2012 09:38:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121203083800.GC10369@pengutronix.de>
References: <1354215748-25394-1-git-send-email-s.hauer@pengutronix.de>
 <1354215748-25394-2-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1354215748-25394-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 2/5] mci: Fix capacity calculation for high capacity MMC
 cards
To: barebox@lists.infradead.org

On Thu, Nov 29, 2012 at 08:02:25PM +0100, Sascha Hauer wrote:
> For these cards we have to calculate the size using the ext csd
> sector count fields.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mci/mci-core.c |   20 ++++++++++++++------
>  1 file changed, 14 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index 0d601e3..942d126 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -758,14 +758,21 @@ static void mci_extract_card_capacity_from_csd(struct mci *mci)
>  	uint64_t csize, cmult;
>  
>  	if (mci->high_capacity) {
> -		csize = (mci->csd[1] & 0x3f) << 16 | (mci->csd[2] & 0xffff0000) >> 16;
> -		cmult = 8;
> +		if (IS_SD(mci)) {
> +			csize = UNSTUFF_BITS(mci->csd, 48, 22);
> +			mci->capacity = (1 + csize) << 10;
> +		} else {
> +			mci->capacity = mci->ext_csd[EXT_CSD_SEC_CNT] << 0 |
> +				mci->ext_csd[EXT_CSD_SEC_CNT + 1] << 8 |
> +				mci->ext_csd[EXT_CSD_SEC_CNT + 2] << 16 |
> +				mci->ext_csd[EXT_CSD_SEC_CNT + 3] << 24;
> +		}
>  	} else {
> -		csize = (mci->csd[1] & 0x3ff) << 2 | (mci->csd[2] & 0xc0000000) >> 30;
> -		cmult = (mci->csd[2] & 0x00038000) >> 15;
> +		cmult = UNSTUFF_BITS(mci->csd, 47, 3);
> +		csize = UNSTUFF_BITS(mci->csd, 62, 12);
> +		mci->capacity = (csize + 1) << (cmult + 2);
>  	}
>  
> -	mci->capacity = (csize + 1) << (cmult + 2);
>  	mci->capacity *= mci->read_bl_len;
>  	dev_dbg(mci->mci_dev, "Capacity: %u MiB\n", (unsigned)(mci->capacity >> 20));
>  }
> @@ -996,7 +1003,6 @@ static int mci_startup(struct mci *mci)
>  	mci_detect_version_from_csd(mci);
>  	mci_extract_max_tran_speed_from_csd(mci);
>  	mci_extract_block_lengths_from_csd(mci);
> -	mci_extract_card_capacity_from_csd(mci);
>  
>  	/* sanitiy? */
>  	if (mci->read_bl_len > SECTOR_SIZE) {
> @@ -1032,6 +1038,8 @@ static int mci_startup(struct mci *mci)
>  	if (err)
>  		return err;
>  
> +	mci_extract_card_capacity_from_csd(mci);
> +
>  	/* Restrict card's capabilities by what the host can do */
>  	mci->card_caps &= host->host_caps;

Here's a fixup patch for this one:

-- 
From 67947f2d47a752e3c96bc6e29f92459e19e2eab2 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Nov 2012 16:46:19 +0100
Subject: [PATCH] fixup! mci: Fix capacity calculation for high capacity MMC
 cards

commit bbcf96113 moved the size calculation further down, but this
has the effect that the size of cards with block sizes > 512 bytes
is no longer correct. This is because barebox limits the blocksize
to 512 bytes. To fix this use the blocksize value from the csd, not
the barebox one.

This is broken since:

| commit bbcf961133e0d8ddf016ed698724d0ec8d7fd6b8
| Author: Sascha Hauer <s.hauer@pengutronix.de>
| Date:   Thu Nov 29 16:48:19 2012 +0100
|
|    mci: Fix capacity calculation for high capacity MMC cards
|
|    For these cards we have to calculate the size using the ext csd
|    sector count fields.
|

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 6e556a8..4957256 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -773,7 +773,7 @@ static void mci_extract_card_capacity_from_csd(struct mci *mci)
 		mci->capacity = (csize + 1) << (cmult + 2);
 	}
 
-	mci->capacity *= mci->read_bl_len;
+	mci->capacity *= 1 << UNSTUFF_BITS(mci->csd, 80, 4);;
 	dev_dbg(mci->mci_dev, "Capacity: %u MiB\n", (unsigned)(mci->capacity >> 20));
 }
 
-- 
1.7.10.4

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
