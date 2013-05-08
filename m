Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZwf5-00019b-3c
 for barebox@lists.infradead.org; Wed, 08 May 2013 05:11:32 +0000
Date: Wed, 8 May 2013 07:11:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130508051106.GS32299@pengutronix.de>
References: <1367958099-5063-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1367958099-5063-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] Revert "nand_base: detect more ONFI flash"
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, May 07, 2013 at 10:21:39PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> this brake the nand support on at91sam9x5ek
> where we have a non compliant ONFI nand
> NAND device: Manufacturer ID: 0xad, Chip ID: 0xda (Hynix NAND 256MiB 3,3V 8-bit), 256MiB, page size: 2048, OOB size: 64
> 
> This reverts commit 4c2bdc8728016b3412523e3264651651fe752860.

Thank you for letting us know that this patch causes a regression for
you. I this happens, please first try and fix the regression. If that
doesn't work please tell us what about the original patch is so wrong
that it needs to be reverted. With a good explanation it could be that
someone else has an idea. And whatever you do, put the original author,
Eric in this case, on Cc.

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
