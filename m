Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1biFAd-0003m3-Nw
 for barebox@lists.infradead.org; Fri, 09 Sep 2016 06:20:16 +0000
Date: Fri, 9 Sep 2016 08:19:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160909061950.kg5mqytwbocb6jz4@pengutronix.de>
References: <20160907201220.26764-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160907201220.26764-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] Documentation: usb: fix sphinx warning
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, "Robert P . J . Day" <rpjday@crashcourse.ca>

On Wed, Sep 07, 2016 at 11:12:20PM +0300, Antony Pavlov wrote:
> The patch fixes this sphinx warnings:
> 
>     barebox/Documentation/user/usb.rst:61: WARNING: Could not lex literal_block as "c". Highlighting skipped.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> Cc: Robert P. J. Day <rpjday@crashcourse.ca>
> ---

Applied, thanks

Sascha

>  Documentation/user/usb.rst | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
> index 8602a8f..bbcb045 100644
> --- a/Documentation/user/usb.rst
> +++ b/Documentation/user/usb.rst
> @@ -56,7 +56,9 @@ shall be provided to the host. For the possible ``flags`` see
>  
>  On the host side, the tool `dfu-util <http://dfu-util.gnumonks.org/>`_ can be used
>  to update the partitions. It is available for most distributions and typically
> -supports the following options::
> +supports the following options:
> +
> +.. code-block:: none
>  
>    dfu-util -h
>    Usage: dfu-util [options] ...
> -- 
> 2.9.3
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
