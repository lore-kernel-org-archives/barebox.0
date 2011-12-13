Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RaPlC-0002RV-S6
 for barebox@lists.infradead.org; Tue, 13 Dec 2011 10:39:00 +0000
Date: Tue, 13 Dec 2011 11:38:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111213103852.GN27267@pengutronix.de>
References: <alpine.DEB.2.02.1112120536280.27673@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1112120536280.27673@oneiric>
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
Subject: Re: [PATCH] Update README to refer to newer location of example
 environment
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

Hi Robert,

On Mon, Dec 12, 2011 at 05:37:51AM -0500, Robert P. J. Day wrote:
> 
> Update location of example environment to match current Documentation.

Applied to master.

Sascha

> 
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
> 
> ---
> 
> diff --git a/README b/README
> index 9b58f26..5662a1c 100644
> --- a/README
> +++ b/README
> @@ -108,9 +108,9 @@ If everything goes well, the result is a file called barebox:
> 
>  Barebox usually needs an environment for storing the configuation data.
>  You can generate an environment using the example environment contained
> -in examples/environment:
> +in board/sandbox/env:
> 
> -  # ./scripts/bareboxenv -s -p 0x10000 examples/environment/ env.bin
> +  # ./scripts/bareboxenv -s -p 0x10000 board/sandbox/env/ env.bin
> 
>  To get some files to play with you can generate a cramfs image:
>    # mkcramfs somedir/ cramfs.bin
> 
> -- 
> 
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
> 
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
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
