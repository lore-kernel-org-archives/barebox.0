Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1REgh4-00042A-C0
	for barebox@lists.infradead.org; Fri, 14 Oct 2011 12:16:55 +0000
Date: Fri, 14 Oct 2011 14:16:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111014121652.GG13898@pengutronix.de>
References: <201110141411.28523.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201110141411.28523.jbe@pengutronix.de>
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
Subject: Re: [PATCH for next] 'bootz' command fails to load the zImage's header
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Oct 14, 2011 at 02:11:28PM +0200, Juergen Beisert wrote:
> Running the 'bootz' command always fails with
> 
> could not read <some file>
> 
> due to it loads only a size of a pointer, instead of the size of the expected
> header structure.

Applied to master instead which also has this bug. Unfortunately this
bug is also in the october release.

Sascha

> 
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> 
> diff --git a/arch/arm/lib/bootz.c b/arch/arm/lib/bootz.c
> index fc14487..9be615b 100644
> --- a/arch/arm/lib/bootz.c
> +++ b/arch/arm/lib/bootz.c
> @@ -53,7 +53,7 @@ static int do_bootz(struct command *cmdtp, int argc, char *argv[])
>  
>  	if (!usemap) {
>  		header = &__header;
> -		ret = read(fd, header, sizeof(header));
> +		ret = read(fd, header, sizeof(*header));
>  		if (ret < sizeof(*header)) {
>  			printf("could not read %s\n", argv[1]);
>  			goto err_out;
> 
> -- 
> Pengutronix e.K.                              | Juergen Beisert             |
> Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |
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
