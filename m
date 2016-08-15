Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bZD6g-0006eN-FC
 for barebox@lists.infradead.org; Mon, 15 Aug 2016 08:18:51 +0000
Date: Mon, 15 Aug 2016 10:18:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160815081828.GT20657@pengutronix.de>
References: <1470653469-24896-1-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1470653469-24896-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH] scripts: socfpga_get_sequencer: convert potential CRLF
 to LF
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Aug 08, 2016 at 12:51:09PM +0200, Steffen Trumtrar wrote:
> If u-boot was generated under a DOS system, the sequencer files will have CRLF
> linebreaks. The indent-tool has problems with this and as a result the code
> will not compile anymore.
> Fix up any CRLFs prior with the dos2unix tool.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  scripts/socfpga_get_sequencer | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/scripts/socfpga_get_sequencer b/scripts/socfpga_get_sequencer
> index fb0ea6628b2a..e0f2e6de2abd 100755
> --- a/scripts/socfpga_get_sequencer
> +++ b/scripts/socfpga_get_sequencer
> @@ -24,6 +24,8 @@ copy_source() {
>  
>  	unifdef -f ${sequencer_defines} $tgt -o $tgt
>  
> +	dos2unix $tgt
> +
>  	echo "	Fixing extern/static keywords..."
>  	# Statify all global variables with missing static keyword
>  	sed -i 's/^\(extern \|static \|\)\([^*#\/ 	][^(]* [^( ]*\((.*).*$\|=.*;.*$\)\)/static \2/g' $tgt
> -- 
> 2.8.1
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
