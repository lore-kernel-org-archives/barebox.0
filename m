Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O8vOq-0003mn-PT
	for barebox@lists.infradead.org; Mon, 03 May 2010 13:09:29 +0000
Date: Mon, 3 May 2010 15:09:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100503130926.GC31199@pengutronix.de>
References: <1272527535-17527-1-git-send-email-s.hauer@pengutronix.de>
	<1272527535-17527-10-git-send-email-s.hauer@pengutronix.de>
	<87eihtdxzv.fsf@macbook.be.48ers.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87eihtdxzv.fsf@macbook.be.48ers.dk>
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
Subject: Re: [PATCH 09/17] pcm043: Speed up NAND controller before copying
	barebox image
To: Peter Korsgaard <jacmet@sunsite.dk>
Cc: barebox@lists.infradead.org

Hi Peter,

On Mon, May 03, 2010 at 01:29:40PM +0200, Peter Korsgaard wrote:
> >>>>> "Sascha" == Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
>  Sascha> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>  Sascha> ---
>  Sascha>  board/pcm043/pcm043.c |    7 +++++++
>  Sascha>  1 files changed, 7 insertions(+), 0 deletions(-)
> 
>  Sascha> diff --git a/board/pcm043/pcm043.c b/board/pcm043/pcm043.c
>  Sascha> index 2ce7e3a..d8cd7b8 100644
>  Sascha> --- a/board/pcm043/pcm043.c
>  Sascha> +++ b/board/pcm043/pcm043.c
>  Sascha> @@ -393,6 +393,13 @@ BAREBOX_CMD_END
>  Sascha>  #ifdef CONFIG_NAND_IMX_BOOT
>  Sascha>  void __bare_init nand_boot(void)
>  Sascha>  {
>  Sascha> +	u32 val;
>  Sascha> +
>  Sascha> +	val = readl(IMX_CCM_BASE + CCM_PDR4);
>  Sascha> +	val &= ~(0xf << 28);
>  Sascha> +	val |= 0x1 << 28;
>  Sascha> +	writel(val, IMX_CCM_BASE + CCM_PDR4);
> 
> A comment describing what this does might be nice.

I dropped this patch since this is being touched in the reimplement-in-C
patch later anyway. The other patch also adds a comment.

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
