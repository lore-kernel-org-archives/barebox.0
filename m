Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XQrgx-00071U-TL
 for barebox@lists.infradead.org; Mon, 08 Sep 2014 05:40:45 +0000
Date: Mon, 8 Sep 2014 07:40:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140908054018.GF5352@pengutronix.de>
References: <1409913494-17780-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1409913494-17780-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] Documentation: davinci.rst: fix code-block formatting
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 05, 2014 at 02:38:14PM +0400, Antony Pavlov wrote:
> Wrong formatting leads to this error message during 'make docs':
> 
>   davinci.rst:35: ERROR: Error in "code-block" directive:
>                   maximum 1 argument(s) allowed, 4 supplied.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  Documentation/boards/davinci.rst | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/boards/davinci.rst b/Documentation/boards/davinci.rst
> index a2ddc3c..cf0c36e 100644
> --- a/Documentation/boards/davinci.rst
> +++ b/Documentation/boards/davinci.rst
> @@ -33,12 +33,14 @@ Running barebox
>    4. Upload ``barebox.bin`` via Ymodem
>  
>  .. code-block:: none
> +
>      virt2real ># loady
>  ..
>  
>    5. Run barebox
>  
>  .. code-block:: none
> +
>      virt2real ># go 0x82000000
>  ..
>  
> -- 
> 2.1.0
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
