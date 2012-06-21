Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from canuck.infradead.org ([2001:4978:20e::1])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShmUh-000741-4c
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 18:52:39 +0000
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShmUg-0000iP-5E
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 18:52:38 +0000
Date: Thu, 21 Jun 2012 20:52:35 +0200
From: Sascha Hauer <sha@pengutronix.de>
Message-ID: <20120621185235.GJ28394@pengutronix.de>
References: <1340275276-24051-1-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1340275276-24051-1-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH] mtd nand: mxs: add missing include for mxs_reset_block
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jun 21, 2012 at 12:41:16PM +0200, Marc Kleine-Budde wrote:
> This patch fixes this warning:
> 
> drivers/mtd/nand/nand_mxs.c: In function 'mxs_nand_scan_bbt':
> drivers/mtd/nand/nand_mxs.c:1043:2: warning:
> implicit declaration of function 'mxs_reset_block'
> [-Wimplicit-function-declaration]

Squashed into the original commit breaking it.

Thanks
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
