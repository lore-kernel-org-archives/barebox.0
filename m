Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PgDRL-0007iF-9t
	for barebox@lists.infradead.org; Fri, 21 Jan 2011 09:37:56 +0000
Date: Fri, 21 Jan 2011 10:37:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110121093752.GZ9041@pengutronix.de>
References: <1295516821-8988-1-git-send-email-s.hauer@pengutronix.de>
	<1295516821-8988-6-git-send-email-s.hauer@pengutronix.de>
	<4D38404B.1020204@free-electrons.com>
	<20110120145741.GY9041@pengutronix.de>
	<4D387667.5060607@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4D387667.5060607@free-electrons.com>
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
Subject: Re: [PATCH 05/10] i.MX23/28: Fix setting of lcd clock
To: Gregory CLEMENT <gregory.clement@free-electrons.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 20, 2011 at 06:52:39PM +0100, Gregory CLEMENT wrote:
> On 01/20/2011 03:57 PM, Sascha Hauer wrote:
> > On Thu, Jan 20, 2011 at 03:01:47PM +0100, Gregory CLEMENT wrote:
> >> On 01/20/2011 10:46 AM, Sascha Hauer wrote:
> >>> Use the correct bitmask for masking out which is
> >>> SET_PIXFRAC(MASK_PIXFRAC)
> >>>
> >>
> >> I was just about to send you the same kind of patch, as this bug bit me during
> >> kernel boot when using cpufreq.
> >>
> >> As you are working on imx23 and video driver, what do you think of my previous
> >> patches ? I sent them in January the 4th:
> >>
> >> ARM STM/i.MX: Add possibility to choose the bit per pixel for STM
> >>     video driver
> > 
> > This looks ok.
> > 
> >> ARM STM/i.MX: Add possibility to select the data mode for stm video
> >>       driver ( DCn signal is high )
> > 
> > Looks ok. What is this pin good for? Is this bit used in conjunction
> > with other bits which happen to have the right value for you?
> > 
> 
> You made me dig in the datasheet and check my code. And finally this
> patch is pointless! The DCn signal which seems related to LCD_RS is
> only used in MPU interface whereas we use Dotclock interface.
> I just checked again and without it, my LCD still worked. It seems
> that I forgot to test this patch alone, as my configuration need
> the following patch to work, I didn't notice this patch did nothing.
> Sorry for this fake patch :(
> 
> >> ARM STM/i.MX: Add the reset control of LCD
> > 
> > We use the same pin as gpio and toggle it in the platform specific hook,
> > so I could rebase my chumby patch on this one.
> > 
> > For the last two patches I prefer having flags in the platform data
> > rather than having a u32 for a single flag.
> > 
> How could we process?
> 
> Will you get the 1st patch as is ?
> 
> For the other, have you a git tree available where all your patches lie?

I merged my mx23 patches and your first patch to -next. You can rebase
your remaining patches on -next and I'll convert the chumby to use the
reset pin later.

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
