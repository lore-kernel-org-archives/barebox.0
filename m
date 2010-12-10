Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail8.tpgi.com.au ([203.12.160.165])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PQy6L-0002rc-7R
	for barebox@lists.infradead.org; Fri, 10 Dec 2010 08:13:15 +0000
From: Marc Reilly <marc@cpdesign.com.au>
Date: Fri, 10 Dec 2010 19:13:02 +1100
References: <1291959762-14350-1-git-send-email-marc@cpdesign.com.au>
	<20101210064841.GE19897@game.jcrosoft.org>
	<AANLkTi=H_a_S1iDZttpphv906DxB9xUdDXusYRAPyL7r@mail.gmail.com>
In-Reply-To: <AANLkTi=H_a_S1iDZttpphv906DxB9xUdDXusYRAPyL7r@mail.gmail.com>
MIME-Version: 1.0
Message-Id: <201012101913.02927.marc@cpdesign.com.au>
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
Subject: Re: [PATCH] arm: Introduce VPR200 board
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

Thanks for your responses.

> >> Starting point for the vpr200 board.
> >> Very similar core hardware to mx35 3stack.
> >> 
> >> Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
> >> ---
> >>  arch/arm/Makefile                            |    1 +
> >>  arch/arm/boards/vpr200/Makefile              |    4 +
> >>  arch/arm/boards/vpr200/config.h              |   28 +
> >>  arch/arm/boards/vpr200/env/bin/_update       |   39 ++
> >>  arch/arm/boards/vpr200/env/bin/boot          |   67 ++
> >>  arch/arm/boards/vpr200/env/bin/hush_hack     |    1 +
> >>  arch/arm/boards/vpr200/env/bin/init          |   38 +
> >>  arch/arm/boards/vpr200/env/bin/update_kernel |   15 +
> >>  arch/arm/boards/vpr200/env/bin/update_rootfs |   20 +
> > 
> > con u use the defaultenv?
Yes, I will.

> >> +static int do_diagled(struct command *cmdtp, int argc, char *argv[])
> >> +{
> >> +     int color;
> >> +
> >> +     if (argc != 2)
> >> +             return COMMAND_ERROR_USAGE;
> >> +
> >> +     color = simple_strtoul(argv[1], NULL, 0);
> >> +     vpr_diag_set_color(color);
> >> +
> >> +     return 0;
> >> +}
> > 
> > it will be better to have a common API for led management

I agree, but I have to start somewhere :) 

> > 
> >> +
> >> +BAREBOX_CMD_HELP_START(diagled)
> >> +BAREBOX_CMD_HELP_USAGE("diagled [color]\n")
> >> +BAREBOX_CMD_HELP_SHORT("Sets the color of the diagnostic LED.\n")
> >> +BAREBOX_CMD_HELP_TEXT("\toff\t 0\n")
> >> +BAREBOX_CMD_HELP_TEXT("\tblue\t 1\n")
> >> +BAREBOX_CMD_HELP_TEXT("\tgreen\t 2\n")
> >> +BAREBOX_CMD_HELP_TEXT("\taqua\t 3\n")
> >> +BAREBOX_CMD_HELP_TEXT("\tred\t 4\n")
> >> +BAREBOX_CMD_HELP_TEXT("\tmagenta\t 5\n")
> >> +BAREBOX_CMD_HELP_TEXT("\tyellow\t 6\n")
> >> +BAREBOX_CMD_HELP_TEXT("\twhite\t 7\n")
> >> +BAREBOX_CMD_HELP_END
> >> +
> >> +BAREBOX_CMD_START(diagled)
> >> +     .cmd            = do_diagled,
> >> +     .usage          = "Set color of diagnositc tri-color LED",
> >> +     BAREBOX_CMD_HELP(cmd_diagled_help)
> >> +BAREBOX_CMD_END
> >> +
> >> +/*
> >> -----------------------------------------------------------------------
> >> - */ +
> >> +static int do_waitbutton(struct command *cmdtp, int argc, char *argv[])
> >> +{
> >> +     int opt;
> >> +     uint64_t start;
> >> +     ulong timeout = 0;
> >> +     uint32_t bstate;
> >> +
> >> +     while ((opt = getopt(argc, argv, "t:")) > 0) {
> >> +             switch (opt) {
> >> +             case 't':
> >> +                     timeout = simple_strtol(optarg, NULL, 0);
> >> +                     break;
> >> +             }
> >> +     }
> >> +
> >> +     start = get_time_ns();
> >> +     while (!timeout || !is_timeout(start, timeout * SECOND)) {
> >> +             bstate = vpr_button_state();
> >> +             if (bstate) {
> >> +                     printf("%d\n",
> >> vpr_button_state_to_number(bstate)); +                     return 0;
> >> +             }
> >> +             if (ctrlc())
> >> +                     return -EINTR;
> >> +     }
> >> +
> >> +     return -ETIMEDOUT;
> >> +}
> > 
> > ditto here

Again, I agree, and I'm happy to work towards that, but would rather start 
from here, and move towards something more generic.

These extra commands were mainly for quick HW testing, and I didn't see any 
reason to drop them.

> > 
> >> +
> >> +BAREBOX_CMD_HELP_START(waitbutton)
> >> +BAREBOX_CMD_HELP_USAGE("waitbutton [-t]\n")
> >> +BAREBOX_CMD_HELP_SHORT("Prints the button number of the next pressed
> >> button.\n") +BAREBOX_CMD_HELP_OPT("-t <seconds>", "time in seconds to
> >> wait. 0 (default) is forever.") +BAREBOX_CMD_HELP_END
> > 
> > please also check your patch you have some whitespace and other too long
> > line issue
> 
> FYI can be used checkpatch.pl in scripts directory ;)

Thanks, I had found them but made the "executive" (ie. cheeky:) decision to 
"stretch the rules" (ie. ignore them.)
I did play with most of the long lines - and IMHO it made more sense as is. 
Other issues were inherited from copied code, so I didn't feel to guilty 
ignoring them.


I'll be resubmitting, omitting some of the redundant env/ files, but I'll wait 
a couple of days and see it there are any other comments.

Cheers
Marc 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
