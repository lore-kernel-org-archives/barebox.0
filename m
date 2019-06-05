Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYOIM-0002gM-D1
 for barebox@lists.infradead.org; Wed, 05 Jun 2019 05:17:08 +0000
Date: Wed, 5 Jun 2019 07:17:03 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20190605051703.gg6q43p5smhxzci4@pengutronix.de>
References: <20190604105552.20619-1-pmamonov@gmail.com>
 <20190604124457.25u3p7mgfvxrbqjh@pengutronix.de>
 <20190604164311.z5zo4qrfqbt5zalf@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604164311.z5zo4qrfqbt5zalf@localhost.localdomain>
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
Subject: Re: [PATCH] MIPS: use anonymous labels in ENTRY_FUNCTION_END and
 STOP_WITH_DEBUG_EVENT macros
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jun 04, 2019 at 07:43:12PM +0300, Peter Mamonov wrote:
> Hi, Oleksij,
> 
> On Tue, Jun 04, 2019 at 02:44:57PM +0200, Oleksij Rempel wrote:
> > On Tue, Jun 04, 2019 at 01:55:52PM +0300, Peter Mamonov wrote:
> > > Use of global labels of the same name inside ENTRY_FUNCTION_END and
> > > STOP_WITH_DEBUG_EVENT prevents simultaneous use of both macros. It also
> > > prevents multiple use of one of them.
> > 
> > Reviewed-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > 
> > @Peter, Do you use STOP_WITH_DEBUG_EVENT for something?
> 
> Actually no. I hit this problem when tried to use ENTRY_FUNCTION_END twice to 
> choose relevant DTB depending on some conditions.

was you able to implement it?

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
