Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WcuYa-00089c-K4
 for barebox@lists.infradead.org; Wed, 23 Apr 2014 10:37:37 +0000
Date: Wed, 23 Apr 2014 12:37:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140423103712.GT5858@pengutronix.de>
References: <CAO6XYUtDt5eACQ8+X+KfEW5_BgN-fuJWxTO3Sa=-vRCGiw73qg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAO6XYUtDt5eACQ8+X+KfEW5_BgN-fuJWxTO3Sa=-vRCGiw73qg@mail.gmail.com>
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
Subject: Re: [PATCH 1/1 - Corrected] Fix bug in export 64 bit unsigned
 environment variable.
To: "Michael D. Burkey" <mdburkey@gmail.com>
Cc: barebox@lists.infradead.org

Hi Michael,

On Thu, Apr 10, 2014 at 04:32:38PM -0400, Michael D. Burkey wrote:
> The first time I sent this I apparently typed a character into the
> wrong window before I sent it and didn't notice it.

The patch is ok. Please resend this with a propert signed-off-by line so
I can apply it.

Sascha

> 
> -------------------------------------------------------------------------
> 
> --- a/common/env.c
> +++ b/common/env.c
> @@ -258,7 +258,7 @@
> 
>  void export_env_ull(const char *name, unsigned long long val)
>  {
> -       char *valstr = asprintf("%lld", val);
> +       char *valstr = asprintf("%llu", val);
> 
>         setenv(name, valstr);
>         export(name);
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
