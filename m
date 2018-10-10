Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gA9WS-0001Nw-PG
 for barebox@lists.infradead.org; Wed, 10 Oct 2018 08:07:14 +0000
Message-ID: <1539158817.19112.52.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Wed, 10 Oct 2018 10:06:57 +0200
In-Reply-To: <20181010071443.msez5a7yriayx2va@pengutronix.de>
References: <CABAHDLdOVQwoeNKvWmOTADF5-Q1Az6hQXqDUrK60-wC+3P0Tzg@mail.gmail.com>
 <20181010071443.msez5a7yriayx2va@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: jlu@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: bootchooser: constant decrement of remaining_attempts
To: Sascha Hauer <s.hauer@pengutronix.de>, Patrick Huesmann <patrick.huesmann@gmail.com>
Cc: barebox@lists.infradead.org, Enrico Joerns <ejo@pengutronix.de>

On Wed, 2018-10-10 at 09:14 +0200, Sascha Hauer wrote:
> Hi Patrick,
> 
> +Cc Jan and Enrico
> 
> On Tue, Oct 09, 2018 at 06:37:25PM +0200, Patrick Huesmann wrote:
> > Hi,
> > 
> > I'm building a RAUC- & bootchooser-based firmware update solution.
> > The scenario is symmetric rootfs slots, manual update, userspace
> > (RAUC) marks as good.
> > It seems to work well, however I noticed that it's always decrementing
> > and resetting the remaining_attempts of the booted system, not only
> > when there's an update, but also during regular boot-ups.
> > 
> > I thought that the RAUC/bootchooser combo was mainly about providing a
> > safeguard against accidentally "bricking" the system with corrupt or
> > incomplete firmware updates.
> > However, the logic of decrementing and later resetting the
> > remaining_attempts is apparently not limited to the period between
> > performing the update and the validation (mark as good) of that
> > update, but also running all the other times the system is booted.
> > 
> > This can have some undesirable side effects:
> > 
> > 1) When the boot process is interrupted for any reason (power issues,
> > brown-out resets, users unplugging the gadget while it boots, etc.)
> > more than three times in a row (assuming a remaining_attempts reset
> > value of 3), then bootchooser will happily switch to the fall-back
> > target, even though there's nothing wrong with the actual target at
> > all.
> 
> I think what you want here is the global.bootchooser.reset_attempts=power-on
> option. With this option bootchooser will reset the remaining attempts
> to the default value with each power on reset, meaning that the primary
> target will only become invalid when the watchdog bites you three times
> in a row, but not when the device is turned off in between.

If you want to ensure that the old system is not booted anymore, you
should set its priority to zero.

Leaving the old image enabled is useful in cases where you want to
protect against problems that occur some time after the update.

> > I guess this can be worked around by syncing the fall-back target to
> > the last updated one, after the last update has been verified as good.
> > However this brings additional cost & complexity, and feels more like
> > a hack than a proper solution.
> > 
> > 2) In every complete boot cycle, there are two writes to the
> > barebox-state partition (bootchooser decrementing the
> > remaining_attempts, then userspace resetting the remaining_attempts
> > when it marks the target as good). For systems that boot up & power
> > down a lot, this will generate lots of unnecessary flash writes over
> > time. Probably it won't be enough to actually wear out the flash, but
> > still it doesn't "feel" quite right. (I jumped through hoops to have a
> > proper read-only root and would like to limit the overall number of
> > flash writes when possible).
> > 
> > I'm thinking of an option that limits the remaining_attempts logic to
> > the phase when barebox attempts to boot a newly flashed update, until
> > that update is marked as good later in userspace. There could be an
> > extra (optional) variable in the barebox-state, that allows the
> > userspace to deliberately enable/disable the remaining_attempts logic
> > in barebox.
> 
> I don't think such an option is available at the moment. Maybe we could
> declare remaining_attempts=INT_MAX as infinite attempts. Whenever that
> value is found the remaining_attempts counter wouldn't be decreased.
> 
> After an update userspace could then set the remaining_attempts counter
> of the new system to three and the new system would set it to INT_MAX
> when successfully booted.

INT_MAX would need to be relative to the actual type defined in the
state variable (u32 vs. u8). An alternative would be to have a global
flag to en-/disable counting.

Currently there is one way to avoid writes to flash in the successful
case: Use a watchdog and call bootchooser -s, which will cause it to
skip decrementing if it boots the same target as previously. It seems
that's not documented, though. :/

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
