Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SKEdq-0001Lv-7d
 for barebox@lists.infradead.org; Tue, 17 Apr 2012 20:04:51 +0000
Date: Tue, 17 Apr 2012 22:04:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120417200430.GI3852@pengutronix.de>
References: <1334605638-23095-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1334605638-23095-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH 0/6] mci: pxamci fixes
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

Hi Robert,

On Mon, Apr 16, 2012 at 09:47:12PM +0200, Robert Jarzmik wrote:
> This serie was triggered by several tests to copy files from
> one directory to another on 2 SD cards :
>  - one slow 256MB card
>  - one fast 8G Transcend 8X card
> 
> The fixes improve :
>  - writes which do no longer fail (mostly because of R1b and
>  CMD12 handling)
>  - initial mounting of SD card from env (poweron ramp delay)
> 
> Happy review.
> 

The patches look good. I applied them all.

Thanks
 Sascha

> Robert Jarzmik (6):
>   mci: pxamci define timeouts
>   mci: pxamci change clocks handling
>   mci: pxamci fix response type
>   mci: pxamci fix CMD12 handling
>   mci: pxamci fix R1b responses
>   mci: pxamci poweron ramp delay
> 
>  drivers/mci/pxamci.c |   49 +++++++++++++++++++++++++++++++------------------
>  drivers/mci/pxamci.h |    1 +
>  2 files changed, 32 insertions(+), 18 deletions(-)
> 
> -- 
> 1.7.5.4
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
