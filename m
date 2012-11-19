Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TaNT4-0005uP-2e
 for barebox@lists.infradead.org; Mon, 19 Nov 2012 09:16:38 +0000
Date: Mon, 19 Nov 2012 10:16:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121119091636.GF10369@pengutronix.de>
References: <alpine.DEB.2.02.1211161745310.10167@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1211161745310.10167@oneiric>
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
Subject: Re: [PATCH] bareboxenv.c: simple grammatical fix
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Fri, Nov 16, 2012 at 05:45:38PM -0500, Robert P. J. Day wrote:
> 
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

Applied, thanks

Sascha

> 
> ---
> 
> diff --git a/scripts/bareboxenv.c b/scripts/bareboxenv.c
> index f44a1f8..5fdc62e 100644
> --- a/scripts/bareboxenv.c
> +++ b/scripts/bareboxenv.c
> @@ -124,8 +124,8 @@ char *concat_subpath_file(const char *path, const char *f)
>  void usage(char *prgname)
>  {
>  	printf( "Usage : %s [OPTION] DIRECTORY FILE\n"
> -		"Load an barebox environment sector into a directory or\n"
> -		"save a directory into an barebox environment sector\n"
> +		"Load a barebox environment sector into a directory or\n"
> +		"save a directory into a barebox environment sector\n"
>  		"\n"
>  		"options:\n"
>  		"  -s        save (directory -> environment sector)\n"
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
