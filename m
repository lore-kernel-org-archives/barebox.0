Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo5.mail-out.ovh.net ([178.33.107.29]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TNV4U-0003nP-Ux
 for barebox@lists.infradead.org; Sun, 14 Oct 2012 20:46:04 +0000
Received: from mail619.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 4146FFF9460
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2012 22:52:37 +0200 (CEST)
Date: Sun, 14 Oct 2012 22:43:40 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121014204340.GS13639@game.jcrosoft.org>
References: <1349878154-7099-1-git-send-email-antonynpavlov@gmail.com>
 <20121014141108.GR13639@game.jcrosoft.org>
 <CAA4bVAFUcvzeYaoFc+r6OfA4N+AQ5Lvx_jyMb-1TpmxAz6Xivg@mail.gmail.com>
 <CAA4bVAEgjSdtYtbZxVxg2vQgGTSUdd7m7c7SJPSN-FRij0TwVw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAEgjSdtYtbZxVxg2vQgGTSUdd7m7c7SJPSN-FRij0TwVw@mail.gmail.com>
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
Subject: Re: [RFC v2] add 'miitool' command to view media-independent
 interface status
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On 21:12 Sun 14 Oct     , Antony Pavlov wrote:
>  On 14 October 2012 18:11, Jean-Christophe PLAGNIOL-VILLARD>
> <plagnioj@jcrosoft.com> wrote:
> >> On 18:09 Wed 10 Oct     , Antony Pavlov wrote:
> >> This command is based on "mii-diag" and "mii-tool" programs.
> >>
> >> TODO:
> >>  * add GbE support (see http://ftp.debian.org/debian/pool/main/n/net-tools/net-tools_1.60-24.2.diff.gz);
> >>  * add routines to manipulate media-independent interface state.
> >>
> >> EXAMPLES:
> >>
> >> barebox:/ miitool /dev/phy0
> >> negotiated 100baseTx-FD, link ok
> >>
> >> barebox:/ miitool -v /dev/phy0
> >> negotiated 100baseTx-FD, link ok
> >>   product info: Level One LXT971A rev 2
> >>   basic mode:   autonegotiation enabled
> >>   basic status: autonegotiation complete, link ok
> >>   capabilities: 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
> >>   advertising:  100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
> >>   link partner: 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control
> >>
> >> barebox:/ miitool -vv /dev/phy0
> >> negotiated 100baseTx-FD, link ok
> >>   registers for MII PHY:
> >>     3100 782d 0013 78e2 01e1 45e1 0007 2001
> >>     0000 ffff ffff ffff ffff ffff ffff ffff
> >>     0084 4780 0000 0000 0422 0000 0000 0000
> >>     0000 0000 0080 0000 ffff 0000 0000 3660
> >>   product info: Level One LXT971A rev 2
> >>   basic mode:   autonegotiation enabled
> >>   basic status: autonegotiation complete, link ok
> >>   capabilities: 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
> >>   advertising:  100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
> >>   link partner: 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control
> >>
> >> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> >> ---
> >>  commands/Kconfig   |   11 +++
> >>  commands/Makefile  |    1 +
> >>  commands/miitool.c |  268 ++++++++++++++++++++++++++++++++++++++++++++++++++++
> >>  3 files changed, 280 insertions(+)
> >>  create mode 100644 commands/miitool.c
> >>
> >> diff --git a/commands/Kconfig b/commands/Kconfig
> >> index e934f29..c8cdd54 100644
> >> --- a/commands/Kconfig
> >> +++ b/commands/Kconfig
> >> @@ -620,6 +620,17 @@ config CMD_USB
> >>       help
> >>         The usb command allows to rescan for USB devices.
> >>
> >> +config CMD_MIITOOL
> >> +     bool
> >> +     prompt "miitool command"
> >> +     depends on NET
> > phylib
> 
>  It seems that miitool does not depends on PHYLIB because it uses
>  abstract file access for reading thranceiver's registers. Moreover it
>  does not really depends on NET.
>  On the other hand the situation can be changed in the future.

the issue is that you expect a phy which as phylib only

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
