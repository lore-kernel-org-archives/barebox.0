Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ViLX0-0006ME-VN
 for barebox@lists.infradead.org; Mon, 18 Nov 2013 09:54:11 +0000
Date: Mon, 18 Nov 2013 10:53:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131118095348.GB24559@pengutronix.de>
References: <1384289884-8832-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1384289884-8832-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 1/2] scripts: kwboot: fix missing soh initialization
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On Tue, Nov 12, 2013 at 09:58:03PM +0100, Sebastian Hesselbarth wrote:
> Xmodem blocks should start with SOH but kwboot never sets the first
> block byte. This fixes kwboot's Xmodem block initialization and sets
> first block byte to SOH.
> 
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

Applied, thanks

Sascha

> ---
> Cc: barebox@lists.infradead.org
> Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
> ---
>  scripts/kwboot.c |    1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/scripts/kwboot.c b/scripts/kwboot.c
> index 33c94b3..81da3e8 100644
> --- a/scripts/kwboot.c
> +++ b/scripts/kwboot.c
> @@ -334,6 +334,7 @@ kwboot_xm_makeblock(struct kwboot_block *block, const void *data,
>  	size_t n;
>  	int i;
>  
> +	block->soh = SOH;
>  	block->pnum = pnum;
>  	block->_pnum = ~block->pnum;
>  
> -- 
> 1.7.10.4
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
