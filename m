Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo1.mail-out.ovh.net ([188.165.38.232]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SvQH0-0006H5-Jd
 for barebox@lists.infradead.org; Sun, 29 Jul 2012 09:58:55 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 5EF0EFF9241
 for <barebox@lists.infradead.org>; Sun, 29 Jul 2012 12:04:15 +0200 (CEST)
Date: Sun, 29 Jul 2012 11:58:16 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120729095816.GB26655@game.jcrosoft.org>
References: <1343547714-32740-1-git-send-email-marc@cpdesign.com.au>
 <1343547714-32740-6-git-send-email-marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343547714-32740-6-git-send-email-marc@cpdesign.com.au>
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
Subject: Re: [PATCH 5/7] nand: fix build error when BBT not enabled.
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

On 17:41 Sun 29 Jul     , Marc Reilly wrote:
> This fixes following error when bad blocks config option is not enabled:
> 
> drivers/built-in.o: In function `nand_erase_nand':
> drivers/mtd/nand/nand_write.c:721: undefined reference to `nand_update_bbt'
> drivers/built-in.o: In function `nand_default_block_markbad':
> drivers/mtd/nand/nand_write.c:76: undefined reference to `nand_update_bbt'
> make: *** [barebox] Error 1
> 
> Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
> ---
>  drivers/mtd/nand/nand_write.c |   12 ++++++++++--
>  1 files changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mtd/nand/nand_write.c b/drivers/mtd/nand/nand_write.c
> index 13b6c89..0fd49d6 100644
> --- a/drivers/mtd/nand/nand_write.c
> +++ b/drivers/mtd/nand/nand_write.c
> @@ -72,9 +72,15 @@ int nand_default_block_markbad(struct mtd_info *mtd, loff_t ofs)
>  		chip->bbt[block >> 2] |= 0x01 << ((block & 0x03) << 1);
>  
>  	/* Do we have a flash based bad block table ? */
> -	if (chip->options & NAND_USE_FLASH_BBT)
> +	if (chip->options & NAND_USE_FLASH_BBT) {
> +#if defined(CONFIG_NAND_BBT)
use if (IS_ENABLED())

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
