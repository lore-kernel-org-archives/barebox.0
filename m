Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eAWlj-0003rv-S0
 for barebox@lists.infradead.org; Fri, 03 Nov 2017 07:52:02 +0000
Date: Fri, 3 Nov 2017 08:51:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171103075135.bmzhc5nilae4kit6@pengutronix.de>
References: <20171101072710.31518-1-ejo@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171101072710.31518-1-ejo@pengutronix.de>
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
Subject: Re: [PATCH v3 0/6] Fixes for nv command handling
To: Enrico Jorns <ejo@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Nov 01, 2017 at 08:27:04AM +0100, Enrico Jorns wrote:
> This series adds a couple of fixes and enhancement in option parsing and error
> handling for the 'nv' command.
> 
> CHANGES:
> 
> * Add missing curly braces in 1/5
> * properly introduce and use NV abbreviation
> * re-align help text

Applied, thanks

Sascha

> 
> Enrico Jorns (6):
>   commands: nv: fail with verbose message if invoked without args
>   commands: nv: call nvvar_print() only if no argument is given
>   commands: nv: assure error code will be returned when an error
>     occurred
>   common: globvar: let nvvar_remove() report non-existing variable
>   commands: nv: adjust command help
>   command: nv: rewrap help text lines
> 
>  commands/nv.c      | 45 +++++++++++++++++++++++++++++----------------
>  common/globalvar.c |  4 +++-
>  2 files changed, 32 insertions(+), 17 deletions(-)
> 
> -- 
> 2.11.0
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
