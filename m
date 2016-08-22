Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bbhmg-00043M-MB
 for barebox@lists.infradead.org; Mon, 22 Aug 2016 05:28:31 +0000
Date: Mon, 22 Aug 2016 07:28:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160822052808.GT20657@pengutronix.de>
References: <CAGm1_ktWEo6Ow0nre5d0tetTdu3aRLO+mRKboiFtfLi2wjRxDA@mail.gmail.com>
 <CAGm1_kt102hu_ZYJLTYnnW2hUs9WS3T8e_Y8C=D1mKk3cf+M2A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGm1_kt102hu_ZYJLTYnnW2hUs9WS3T8e_Y8C=D1mKk3cf+M2A@mail.gmail.com>
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
Subject: Re: barebox remote control
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: barebox <barebox@lists.infradead.org>

Hi Yegor,

On Fri, Aug 19, 2016 at 03:45:22PM +0200, Yegor Yefremov wrote:
> Hi Sascha,
> 
> On Thu, Aug 18, 2016 at 9:48 AM, Yegor Yefremov
> <yegorslists@googlemail.com> wrote:
> > Are you planning to create a standalone PyPI package for bbremote? It
> > would be very handy.
> 
> I'll try to create such a package on my GitHub account and then we
> will see how to proceed. Porting to Python 3 is really funny :-) str
> vs. bytearrays ....
> 
> > Have you already contacted pyserial maintainers, so that they could
> > provide a configurable option for RFC2217 related timeout
> > (https://github.com/pyserial/pyserial)?
> 
> I'll drop own pyserial and rely on upstream.

Thanks. We haven't done anything in that direction yet.

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
