Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cybmV-00072i-6p
 for barebox@lists.infradead.org; Thu, 13 Apr 2017 10:15:16 +0000
Date: Thu, 13 Apr 2017 12:14:50 +0200
From: Michael Grzeschik <mgr@pengutronix.de>
Message-ID: <20170413101450.abwhlo4kyyjsmoed@pengutronix.de>
References: <20170410222129.2293-1-m.grzeschik@pengutronix.de>
 <21a9f452-0f72-b67a-5bf8-2b8ed28e60d5@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <21a9f452-0f72-b67a-5bf8-2b8ed28e60d5@gmail.com>
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
Subject: Re: [PATCH v1] mci: add Marvell Dove SDHCI driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Hi Sebastian,

On Thu, Apr 13, 2017 at 10:06:57AM +0200, Sebastian Hesselbarth wrote:
> On 11.04.2017 00:21, Michael Grzeschik wrote:
> > From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> > 
> > This adds a driver for the SDHCI controller found on Marvell Dove SoCs.
> > Despite a missing pinctrl driver, corresponding MPP config has to be
> > set on a per board basis.
> > 
> > This driver was succesfully tested with Solidrun Dove Cubox.
> > 
> > Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> > Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> 
> Thanks for picking it up and adding some improvements!
> 
> If you are waiting for my Acked-by or something:
> 
> Acked-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> 
> Also, you can take the main authorship as I'll not be able to
> respond to it much.

Thanks! I will resend the patch with your ACK.

Michael

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
