Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6Zf0-0001X9-6V
 for barebox@lists.infradead.org; Fri, 14 Aug 2020 13:22:19 +0000
Date: Fri, 14 Aug 2020 15:22:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200814132216.GK13023@pengutronix.de>
References: <20200812132515.16684-1-christian.mauderer@embedded-brains.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200812132515.16684-1-christian.mauderer@embedded-brains.de>
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
Subject: Re: [PATCH v6] FIT: Parse `load` and `entry` addresses.
To: Christian Mauderer <christian.mauderer@embedded-brains.de>
Cc: barebox@lists.infradead.org, a.fatoum@pengutronix.de

On Wed, Aug 12, 2020 at 03:25:15PM +0200, Christian Mauderer wrote:
> According to the U-Boot documentation for the FIT file format, the load
> and entry have to be allways defined for a "kernel" or "standalone".
> But Barebox ignored the parameters. That changes with this patch.
> 
> For backward compatibility the default values for load or entry are
> still used if they are not given by the FIT file.
> 
> Signed-off-by: Christian Mauderer <christian.mauderer@embedded-brains.de>
> ---

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
