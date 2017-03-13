Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cnKJ1-0004cb-IA
 for barebox@lists.infradead.org; Mon, 13 Mar 2017 07:22:13 +0000
Date: Mon, 13 Mar 2017 08:21:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170313072148.ikkjqb64sl7h7y2l@pengutronix.de>
References: <20170310060732.8955-1-andrew.smirnov@gmail.com>
 <20170312203439.GA9544@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170312203439.GA9544@ravnborg.org>
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
Subject: Re: [PATCH] fixup! clk: No-op CLK_OF_DECLARE if not enabled
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

On Sun, Mar 12, 2017 at 09:34:39PM +0100, Sam Ravnborg wrote:
> On Thu, Mar 09, 2017 at 10:07:32PM -0800, Andrey Smirnov wrote:
> > ---
> > 
> > Sascha, let's try and see if this fixes the build issues you were
> > having with the original patch.
> > 
> > If you'd rather I spin a v2 of the original patch, let me know.
> 
> As Sasha dropped the original patch you can safely prepare a v2
> of the original patch with this fix.

Yes, please. That would be easiest.

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
