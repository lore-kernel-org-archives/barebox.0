Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZBy9p-0008TG-SH
 for barebox@lists.infradead.org; Mon, 06 Jul 2015 04:37:30 +0000
Date: Mon, 6 Jul 2015 06:37:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150706043705.GM18700@pengutronix.de>
References: <1435924181-28078-1-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1435924181-28078-1-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH] state: use name of device node as name, if alias is not
 available
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jul 03, 2015 at 01:49:41PM +0200, Marc Kleine-Budde wrote:
> Wihtout this patch, when using more than one state device an alias is
> mandatory, otherwise the there will be two state devices with the name state.

Are there really two devices? I hope there's a -EEXIST somewhere...

> 
> This patch fixes the limitation by using the device node's name if no alias is
> defined.

The node name is not necessarily unique. Also you might end up with
state names like "state@0" which probably also is not what we want.
Maybe making the alias mandatory for multiple state devices is not the
worst behaviour.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
