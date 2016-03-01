Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aaefK-0004l4-Ty
 for barebox@lists.infradead.org; Tue, 01 Mar 2016 07:24:21 +0000
Date: Tue, 1 Mar 2016 08:23:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160301072357.GH9224@pengutronix.de>
References: <1456513959-26781-1-git-send-email-dev@lynxeye.de>
 <20160229074813.GF9224@pengutronix.de>
 <1456736735.3772.0.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1456736735.3772.0.camel@pengutronix.de>
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
Subject: Re: [PATCH 1/3] bootm: fix uImage crashes when no partition is given
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Feb 29, 2016 at 10:05:35AM +0100, Lucas Stach wrote:
> Am Montag, den 29.02.2016, 08:48 +0100 schrieb Sascha Hauer:
> > On Fri, Feb 26, 2016 at 08:12:37PM +0100, Lucas Stach wrote:
> > > From: Lucas Stach <l.stach@pengutronix.de>
> > > 
> > > Before the conversion to use the partition string instead of a plain
> > > integer the default was partition 0, now it's just a NULL pointer.
> > > 
> > > There are a lot of places where strtoul is called on the partition string
> > > which crashes when encountering the NULL pointer. Instead of fixing all
> > > those places, plug in a default partition string that matches the old
> > > behavior by picking partition 0.
> > 
> > This was my first approach aswell, but I didn't like the static "0"
> > string, so I came up with
> > http://lists.infradead.org/pipermail/barebox/2016-February/026368.html
> > 
> Fix looks good.
> 
> Can you drop this one patch, but apply the other 2 from this series?

Just did that. I just wanted to give it a few tests before doing it.

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
