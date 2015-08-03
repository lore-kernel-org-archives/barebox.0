Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZMBHt-0000Qe-7x
 for barebox@lists.infradead.org; Mon, 03 Aug 2015 08:40:01 +0000
Date: Mon, 3 Aug 2015 10:39:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150803083938.GN5161@pengutronix.de>
References: <1438196023-30888-1-git-send-email-l.stach@pengutronix.de>
 <20150731064421.GP18700@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150731064421.GP18700@pengutronix.de>
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
Subject: Re: [PATCH] ARM: socfpga: select OFTREE and OFDEVICE
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jul 31, 2015 at 08:44:21AM +0200, Sascha Hauer wrote:
> On Wed, Jul 29, 2015 at 08:53:43PM +0200, Lucas Stach wrote:
> > SoCFPGA is completely multi-image enabled and probes the barebox
> > from a built-in DT, so there is no point in building a barebox
> > image that isn't able to probe from DT.
> > 
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> 
> Applied, thanks

And reverted again. Indeed there is a point in building a barebox image
without DT support since this is exactly what the xloader image does.
With enabled DT support this image becomes too big.

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
