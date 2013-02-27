Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UAbyi-0004Eo-KW
 for barebox@lists.infradead.org; Wed, 27 Feb 2013 08:03:05 +0000
Date: Wed, 27 Feb 2013 09:03:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130227080303.GG1906@pengutronix.de>
References: <1361897742-3454-1-git-send-email-maxime.ripard@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361897742-3454-1-git-send-email-maxime.ripard@free-electrons.com>
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
Subject: Re: [PATCHv2 0/2] cfa10036: Retrieve RAM size at runtime
To: Maxime Ripard <maxime.ripard@free-electrons.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 26, 2013 at 05:55:40PM +0100, Maxime Ripard wrote:
> Hi,
> 
> This patch series makes the cfa10036 retrieve its ram size at runtime.
> Since the get_ram_size function was not safe to use when running from RAM,
> we had to introduce a first patch that makes the execution of this function
> from RAM safe.

Applied, thanks

Sascha

> 
> Thanks,
> Maxime
> 
> Maxime Ripard (2):
>   memsize: Make get_ram_size RAM proof
>   cfa10036: Retrieve the RAM size at runtime
> 
>  arch/arm/boards/crystalfontz-cfa10036/cfa10036.c |    3 ++-
>  common/memsize.c                                 |   21 +++++++++++++++++++++
>  2 files changed, 23 insertions(+), 1 deletion(-)
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
