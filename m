Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YpAi0-0003L3-EB
 for barebox@lists.infradead.org; Mon, 04 May 2015 07:22:33 +0000
Date: Mon, 4 May 2015 09:22:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150504072209.GM6325@pengutronix.de>
References: <1430126650-6382-1-git-send-email-s.hauer@pengutronix.de>
 <55420919.7050904@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <55420919.7050904@pengutronix.de>
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
Subject: Re: [PATCH] mtd: partition: Fix OF partition fixup
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, ukl@pengutronix.de

On Thu, Apr 30, 2015 at 12:51:05PM +0200, Marc Kleine-Budde wrote:
> On 04/27/2015 11:24 AM, Sascha Hauer wrote:
> > To get the number of address cells and size cells we have to use
> > the newly created partition node, not the parent device node. The
> > parent device node returns the address/size cells of the controller
> > node, not the partition node.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Have you already applied this patch?

Yes, it's applied to master.

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
