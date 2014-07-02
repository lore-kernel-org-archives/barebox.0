Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X2DTq-0004ay-8N
 for barebox@lists.infradead.org; Wed, 02 Jul 2014 05:53:18 +0000
Date: Wed, 2 Jul 2014 07:52:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140702055254.GV14257@pengutronix.de>
References: <1404247250-11605-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1404247250-11605-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] [FOR AMMEND] Documentation: loongson_ls1b: document
 RS232 speed
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Do you know the --fixup option to git commit?

With this I could apply this patch and simply run a

git rebase -i --autosquash 84c4e18~1

Without thinking very much in which commit I should squash the patch.

Anyway, applied, thanks.

Sascha

On Wed, Jul 02, 2014 at 12:40:50AM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  Documentation/boards/mips/loongson_ls1b.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/boards/mips/loongson_ls1b.rst b/Documentation/boards/mips/loongson_ls1b.rst
> index a833a86..8f475e6 100644
> --- a/Documentation/boards/mips/loongson_ls1b.rst
> +++ b/Documentation/boards/mips/loongson_ls1b.rst
> @@ -24,7 +24,7 @@ The board uses PMON2000 as bootloader.
>  Running barebox
>  ---------------
>  
> -  1. Connect to the boards's UART2;
> +  1. Connect to the boards's UART2 (115200 8N1);
>  
>    2. Turn board's power on;
>  
> -- 
> 2.0.1
> 
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
