Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1abBv2-0005I9-3Q
 for barebox@lists.infradead.org; Wed, 02 Mar 2016 18:54:45 +0000
Date: Wed, 2 Mar 2016 19:54:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160302185422.GT9224@pengutronix.de>
References: <1456398922-8253-1-git-send-email-s.christ@phytec.de>
 <20160301092232.GM9224@pengutronix.de>
 <20160301105605.GA4982@lws-christ>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160301105605.GA4982@lws-christ>
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
Subject: Re: [PATCH] ARM: i.MX: bbu-internal: call detect for mmc devices
To: Stefan Christ <s.christ@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Mar 01, 2016 at 11:56:05AM +0100, Stefan Christ wrote:
> Hi Sascha,
> 
> > device_detect_by_name() should be safe to call, I don't think we need
> > this additional flag. Just always call device_detect_by_name(). We have
> > to drop the return value checking though.
> > 
> > In fact we have the following patch in one of our internal customer
> > trees, this should be suitable for your issue, right?
> 
> Yep. These two lines of code are sufficent for our use case ;-) Here is my:
> 
>     Tested-by: Stefan Christ <s.christ@phytec.de>
> 
> Will you apply that patch to master?

As it's not a regression or serious bug I applied it to next and not to
master.

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
