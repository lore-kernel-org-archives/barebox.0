Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X2Duj-0006ay-5a
 for barebox@lists.infradead.org; Wed, 02 Jul 2014 06:21:05 +0000
Date: Wed, 2 Jul 2014 08:20:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140702062042.GA14257@pengutronix.de>
References: <1404249726-7663-1-git-send-email-holgerschurig@gmail.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1404249726-7663-1-git-send-email-holgerschurig@gmail.de>
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
Subject: Re: [PATCH 1/3] lzo: properly check for overruns
To: Holger Schurig <holgerschurig@gmail.com>
Cc: barebox@lists.infradead.org, Holger Schurig <holgerschurig@gmail.de>

On Tue, Jul 01, 2014 at 11:22:04PM +0200, Holger Schurig wrote:
> Note: this is the same as 206a81c18401c0cde6e579164f752c4b147324ce in
> linux-git.
> 
> The lzo decompressor can, if given some really crazy data, possibly
> overrun some variable types.  Modify the checking logic to properly
> detect overruns before they happen.
> 
> Reported-by: "Don A. Bailey" <donb@securitymouse.com>
> Tested-by: "Don A. Bailey" <donb@securitymouse.com>
> Signed-off-by: Holger Schurig <holgerschurig@gmail.de>
> ---
>  lib/lzo/lzo1x_decompress_safe.c | 64 +++++++++++++++++++++++++++--------------
>  1 file changed, 42 insertions(+), 22 deletions(-)
> 
> diff --git a/lib/lzo/lzo1x_decompress_safe.c b/lib/lzo/lzo1x_decompress_safe.c

Applied all three lzx patches, thanks

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
