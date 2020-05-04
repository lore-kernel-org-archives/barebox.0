Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVc7A-0007Ib-Ad
 for barebox@lists.infradead.org; Mon, 04 May 2020 14:30:37 +0000
References: <1588599895-368145-1-git-send-email-y.bas@phytec.de>
From: Yunus Bas <y.bas@phytec.de>
Message-ID: <96d54d41-390c-02dc-6b91-d59ad3d363d2@phytec.de>
Date: Mon, 4 May 2020 16:30:33 +0200
MIME-Version: 1.0
In-Reply-To: <1588599895-368145-1-git-send-email-y.bas@phytec.de>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mtd: nand_bbt: Skip bad blocks when searching for the BBT
 in NAND
To: barebox@lists.infradead.org

Please skip this patch, there seems to be a problem here.

Regards

Y. Bas

Am 04.05.20 um 15:44 schrieb Yunus Bas:
> From: Stefan Riedmueller <s.riedmueller@phytec.de>
>
> The blocks containing the bad block table can become bad as well. So
> make sure to skip any blocks that are marked bad when searching for the
> bad block table.
>
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> Signed-off-by: Christian Hemp <c.hemp@phytec.de>
> Signed-off-by: Yunus Bas <y.bas@phytec.de>
> ---
>   drivers/mtd/nand/nand_bbt.c | 10 ++++++++--
>   1 file changed, 8 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/mtd/nand/nand_bbt.c b/drivers/mtd/nand/nand_bbt.c
> index 435a06f..403c0ae 100644
> --- a/drivers/mtd/nand/nand_bbt.c
> +++ b/drivers/mtd/nand/nand_bbt.c
> @@ -560,8 +560,14 @@ static int search_bbt(struct mtd_info *mtd, uint8_t *buf, struct nand_bbt_descr
>   			int actblock = startblock + dir * block;
>   			loff_t offs = (loff_t)actblock << this->bbt_erase_shift;
>   
> -			/* Read first page */
> -			scan_read(mtd, buf, offs, mtd->writesize, td);
> +			/* Read first page including oob */
> +			scan_read_oob(mtd, buf, offs, scanlen);
> +
> +			/* Skip blocks which are marked bad */
> +			if (buf[mtd->writesize] == 0x00) {
> +				continue;
> +			}
> +
>   			if (!check_pattern(buf, scanlen, mtd->writesize, td)) {
>   				td->pages[i] = actblock << blocktopage;
>   				if (td->options & NAND_BBT_VERSION) {

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
