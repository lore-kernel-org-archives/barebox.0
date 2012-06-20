Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShFlW-0003Ol-5E
 for barebox@lists.infradead.org; Wed, 20 Jun 2012 07:55:50 +0000
Date: Wed, 20 Jun 2012 09:55:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120620075546.GL28394@pengutronix.de>
References: <1339754895-5129-1-git-send-email-rnibali@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1339754895-5129-1-git-send-email-rnibali@gmail.com>
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
Subject: Re: [PATCH 0/2] Small fixes
To: Roberto Nibali <rnibali@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jun 15, 2012 at 12:08:13PM +0200, Roberto Nibali wrote:
> While going through my current git tree, I have found two minor things I
> wanted to offload to master. Please review and consider applying.
> 
> Roberto Nibali (2):
>   Remove superfluous SYSCTL_RSTA
>   Deal properly with scripts/bareboxenv-target

Applied, thanks

Sascha

> 
>  .gitignore              |    1 +
>  Makefile                |    1 +
>  drivers/mci/imx-esdhc.h |    1 -
>  3 files changed, 2 insertions(+), 1 deletion(-)
> 
> -- 
> 1.7.9.5
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
