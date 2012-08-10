Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Szu6V-0003Db-W2
 for barebox@lists.infradead.org; Fri, 10 Aug 2012 18:38:37 +0000
Date: Fri, 10 Aug 2012 20:38:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120810183831.GC1451@pengutronix.de>
References: <1343976760-2400-1-git-send-email-plagnioj@jcrosoft.com>
 <20120810141733.GA6271@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120810141733.GA6271@game.jcrosoft.org>
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
Subject: Re: [PATCH 1/2] at91: sam9260/sam9g20/sam9261/sam9g10/sam9263 add
 autodetect sdram size
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Aug 10, 2012 at 04:17:33PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 08:52 Fri 03 Aug     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> > if 0 is passed to at91_add_device_sdram autodetect the sdram size
> > 
> > The amount of available ram is determined by the SDRAMC_CR register.
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ping

Already applied.

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
