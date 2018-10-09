Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9v13-0004dD-Lv
 for barebox@lists.infradead.org; Tue, 09 Oct 2018 16:37:51 +0000
Received: by mail-pl1-x62f.google.com with SMTP id y15-v6so1083941plr.12
 for <barebox@lists.infradead.org>; Tue, 09 Oct 2018 09:37:37 -0700 (PDT)
MIME-Version: 1.0
From: Patrick Huesmann <patrick.huesmann@gmail.com>
Date: Tue, 9 Oct 2018 18:37:25 +0200
Message-ID: <CABAHDLdOVQwoeNKvWmOTADF5-Q1Az6hQXqDUrK60-wC+3P0Tzg@mail.gmail.com>
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
Subject: bootchooser: constant decrement of remaining_attempts
To: barebox@lists.infradead.org

Hi,

I'm building a RAUC- & bootchooser-based firmware update solution.
The scenario is symmetric rootfs slots, manual update, userspace
(RAUC) marks as good.
It seems to work well, however I noticed that it's always decrementing
and resetting the remaining_attempts of the booted system, not only
when there's an update, but also during regular boot-ups.

I thought that the RAUC/bootchooser combo was mainly about providing a
safeguard against accidentally "bricking" the system with corrupt or
incomplete firmware updates.
However, the logic of decrementing and later resetting the
remaining_attempts is apparently not limited to the period between
performing the update and the validation (mark as good) of that
update, but also running all the other times the system is booted.

This can have some undesirable side effects:

1) When the boot process is interrupted for any reason (power issues,
brown-out resets, users unplugging the gadget while it boots, etc.)
more than three times in a row (assuming a remaining_attempts reset
value of 3), then bootchooser will happily switch to the fall-back
target, even though there's nothing wrong with the actual target at
all.
I guess this can be worked around by syncing the fall-back target to
the last updated one, after the last update has been verified as good.
However this brings additional cost & complexity, and feels more like
a hack than a proper solution.

2) In every complete boot cycle, there are two writes to the
barebox-state partition (bootchooser decrementing the
remaining_attempts, then userspace resetting the remaining_attempts
when it marks the target as good). For systems that boot up & power
down a lot, this will generate lots of unnecessary flash writes over
time. Probably it won't be enough to actually wear out the flash, but
still it doesn't "feel" quite right. (I jumped through hoops to have a
proper read-only root and would like to limit the overall number of
flash writes when possible).

I'm thinking of an option that limits the remaining_attempts logic to
the phase when barebox attempts to boot a newly flashed update, until
that update is marked as good later in userspace. There could be an
extra (optional) variable in the barebox-state, that allows the
userspace to deliberately enable/disable the remaining_attempts logic
in barebox.

Is such a option already available? Or if it's not, would patches
introducing that option be accepted upstream?
Or am I thinking totally wrong here and this goes completely against
the whole bootchooser design?

Best regards, Patrick

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
