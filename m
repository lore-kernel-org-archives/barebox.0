Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RsA9I-0000UI-4d
 for barebox@lists.infradead.org; Tue, 31 Jan 2012 09:37:12 +0000
Date: Tue, 31 Jan 2012 10:37:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120131093706.GN1990@pengutronix.de>
References: <1327607728-2788-1-git-send-email-robert.jarzmik@free.fr>
 <1327607728-2788-5-git-send-email-robert.jarzmik@free.fr>
 <20120127114210.GC5446@pengutronix.de> <87zkd9gmdz.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87zkd9gmdz.fsf@free.fr>
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
Subject: Re: [PATCH] arm/mach-pxa: add pulse width modulator controller
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Fri, Jan 27, 2012 at 05:07:04PM +0100, Robert Jarzmik wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
> > On Thu, Jan 26, 2012 at 08:55:28PM +0100, Robert Jarzmik wrote:
> >> Add PXA embedded pulse width modulator support. The PWM can
> >> generate signals from 49.6kHz to 1.625MHz.
> >> 
> >> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
> >> ---
> >
> > [...]
> >
> >> +
> >> +	/* NOTE: the clock to PWM has to be enabled first
> >> +	 * before writing to the registers
> >> +	 */
> >
> > Does this mean that pwm_enable() has to be called prior to pxm_config()?
> Yes.
> 
> > I think we should rather have a real pwm API.
> So do I.
> 
> > The following Kernel patch could be easily adopted and the overhead is
> > acceptable I think.
> Would you adapt it or do you want me to do it ?

I just sent a patch, compile tested only.

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
