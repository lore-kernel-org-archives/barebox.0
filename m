Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UyeeZ-0006YA-E6
 for barebox@lists.infradead.org; Mon, 15 Jul 2013 09:01:08 +0000
Date: Mon, 15 Jul 2013 11:00:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130715090044.GQ14452@pengutronix.de>
References: <20130712091455.GD19197@ns203013.ovh.net>
 <1373620959-20431-1-git-send-email-plagnioj@jcrosoft.com>
 <1373620959-20431-3-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1373620959-20431-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 3/3] pbl: add lz4 support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Jul 12, 2013 at 11:22:39AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> @@ -54,6 +54,9 @@ if IMAGE_COMPRESSION
>  choice
>  	prompt "Compression"
>  
> +config IMAGE_COMPRESSION_LZ4
> +	bool "lz4"
> +
>  config IMAGE_COMPRESSION_LZO
>  	bool "lzo"

Can we add this in a way that it doesn't get the default for all configs
currently using lzo? Either put it at the end of the choice or add a
'default IMAGE_COMPRESSION_LZO'?

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
