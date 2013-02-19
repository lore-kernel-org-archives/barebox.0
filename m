Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U7hbH-0002o9-OQ
 for barebox@lists.infradead.org; Tue, 19 Feb 2013 07:26:52 +0000
Date: Tue, 19 Feb 2013 08:26:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130219072648.GU1906@pengutronix.de>
References: <1360954167-18993-1-git-send-email-shc_work@mail.ru>
 <1361182402.423724727@f309.mail.ru>
 <20130218101919.GQ1906@pengutronix.de>
 <1361257763.676618458@f254.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361257763.676618458@f254.mail.ru>
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
Subject: Re: [RFC] Add Generic GPIO driver
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Tue, Feb 19, 2013 at 11:09:23AM +0400, Alexander Shiyan wrote:
> > On Mon, Feb 18, 2013 at 02:13:22PM +0400, Alexander Shiyan wrote:
> > > > On Fri, Feb 15, 2013 at 10:49:27PM +0400, Alexander Shiyan wrote:
> > > > > This patch adds generic memory-mapped GPIO controller support.
> > > > > Code taken from Linux Kernel and adopted for barebox.
> > > > 
> > > > I'm fine with this if you add a user for it. I wonder though if it's
> > > > worth it to have this driver for barebox. If I have a driver in the
> > > > kernel that already uses it, then this makes it simple to copy it, but
> > > > should I have to write a new gpio driver, I'm unsure if it's simpler
> > > > to write a new gpio driver or to register with the generic gpio
> > > > driver.
> > > 
> > > Here's an example that I'm checking:
> > 
> > Ok, this indeed looks nice and short. You convinced me ;)
> > 
> > As said, I'm fine with the generic gpio driver if you add the below as
> > first user.
> 
> I still beg to consider patch for generic GPIO separately.
> Then I will send you two completely different versions of the implementation
> GPIO for CLPS711X for consideration.

I don't know if I'm misunderstanding you. Of course the generic GPIO
driver and the CLPS711x driver should be two separate patches, but
both should come in the same series. I just want to wait applying the
generic driver until we have a user (and thus compile coverage).

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
