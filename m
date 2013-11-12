Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgEoa-0007KH-Nv
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 14:19:37 +0000
Date: Tue, 12 Nov 2013 15:19:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131112141913.GL24559@pengutronix.de>
References: <1383606064-30494-1-git-send-email-a.heider@gmail.com>
 <20131106094628.GH24559@pengutronix.de>
 <20131106174049.GA83992@localhost>
 <20131112121451.GB77248@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131112121451.GB77248@localhost>
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
Subject: Re: [PATCH v2 0/6] BCM2835 / simple framebuffer support
To: Andre Heider <a.heider@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Nov 12, 2013 at 01:14:51PM +0100, Andre Heider wrote:
> Hi Sascha,
> 
> On Wed, Nov 06, 2013 at 06:40:49PM +0100, Andre Heider wrote:
> > And yes, it works if I set fb0.enable=1 and fb0.register_simplefb=1,
> > both are 0 per default.
> > 
> > Now I wonder who/where those are supposed to get set? Is that a job for
> > the runtime environment?
> 
> if possible I'd like to make the fb work out of the box. Setting these
> two parameters to default to "1" feels wrong (and I didn't find other
> drivers to do so). Any suggestions?

Normally the policy is that a framebuffer is not enabled during
registration. This makes sense because normally the framebuffer doesn't
contain a useful picture, so users should set a picture and enable the
framebuffer afterwards to avoid flickering.

In your case the situation is different though. The display hardware is
already enabled when you enter barebox, right? In this case I suggest
that you set info->p_enable to true before calling register_framebuffer
from the bcm2835 driver. This should be the right thing to do since it
only reflects the hardware status.

Also I think you can set info->register_simplefb to true aswell in the
bcm2835 driver since on that platform this is probably a sane default.

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
