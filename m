Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X5Tav-0004Wh-IO
 for barebox@lists.infradead.org; Fri, 11 Jul 2014 05:42:06 +0000
Date: Fri, 11 Jul 2014 07:41:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140711054143.GK23235@pengutronix.de>
References: <cover.1405000144.git.silvio.fricke@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1405000144.git.silvio.fricke@gmail.com>
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
Subject: Re: [PATCH 0/3] some i2c patches
To: Silvio Fricke <silvio.fricke@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jul 10, 2014 at 04:19:53PM +0200, Silvio Fricke wrote:
> Hi,
> 
> here three patches for the i2c subsystem. Please review and pull into git
> repository.

Applied all three. Thanks

Sascha

> 
> 
> Thanks and bye,
> Silvio
> 
> Silvio Fricke (3):
>   commands: i2c: verbose option doesn't need argument
>   commands: i2c: simplify i2c wide access logic
>   commands: i2c: add message if write is not successful
> 
>  commands/i2c.c | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)
> 
> -- 
> 2.0.1
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
