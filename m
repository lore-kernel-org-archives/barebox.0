Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SZOz7-0000Kq-5w
 for barebox@lists.infradead.org; Tue, 29 May 2012 16:09:26 +0000
Date: Tue, 29 May 2012 18:09:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120529160920.GX30400@pengutronix.de>
References: <1338192756-3688-1-git-send-email-antonynpavlov@gmail.com>
 <1338192756-3688-5-git-send-email-antonynpavlov@gmail.com>
 <20120529083010.GY30400@pengutronix.de>
 <20120529103720.GL2202@game.jcrosoft.org>
 <20120529104220.GT30400@pengutronix.de>
 <20120529155236.GN2202@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120529155236.GN2202@game.jcrosoft.org>
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
Subject: Re: [PATCH v20120528 4/5] toshiba-ac100: add USB host support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, May 29, 2012 at 05:52:36PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > 
> > > 
> > > btw I think we need to change the auto allocated dev_id to -2 so -1 one have
> > > the same meanning as in the kernel
> > 
> > I think we still have hardcoded -1 around.
> I check normally no

Just grep for add_generic_usb_ehci_device. I have a patch for this but I
don't know which other wrapper functions are around which might have a
-1 in them.

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
