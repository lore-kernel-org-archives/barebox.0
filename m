Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SsCGJ-0008Md-P3
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 12:24:53 +0000
Date: Fri, 20 Jul 2012 14:24:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120720122446.GS30009@pengutronix.de>
References: <1342782994-21728-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1342782994-21728-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] piggy.lzo.S: fix out of tree build
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Jul 20, 2012 at 01:16:34PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  Makefile |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Squashed into the original commit. BTW please update
work/compressed-image, I made some changes and added another two cleanup
patches.

Also I want to drop HEAD_TEXT_BASE (the address where the decompressor
is linked to) and use MALLOC_BASE instead, which by definition defaults
to some (at that time) unused valid memory. With this also the omap
xload configs should be compressable. This is not yet implemented
though.

Sascha


> 
> diff --git a/Makefile b/Makefile
> index 3ade6cc..4696789 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -719,9 +719,9 @@ barebox-uncompressed.bin.lzo: barebox-uncompressed.bin
>  	@echo "  LZO    " $@
>  	$(Q)lzop -f -9 -o $@ barebox-uncompressed.bin
>  
> -piggy.lzo.o: barebox-uncompressed.bin.lzo piggy.lzo.S
> +piggy.lzo.o: barebox-uncompressed.bin.lzo $(src)/piggy.lzo.S
>  	@echo "  CC     " $@
> -	$(Q)$(CC) $(CFLAGS) $(CPPFLAGS) -c piggy.lzo.S -o $@
> +	$(Q)$(CC) $(CFLAGS) $(CPPFLAGS) -c $(src)/piggy.lzo.S -o $@
>  
>  ifdef CONFIG_IMAGE_COMPRESSION_LZO
>  barebox: piggy.lzo.o
> -- 
> 1.7.10
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
