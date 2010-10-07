Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P3lyK-0001t4-OM
	for barebox@lists.infradead.org; Thu, 07 Oct 2010 08:37:06 +0000
Date: Thu, 7 Oct 2010 10:37:02 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20101007083702.GQ29673@pengutronix.de>
References: <20101005135213.24F871539A0@gemini.denx.de>
	<20101006072749.GR28242@pengutronix.de>
	<20101006135644.8D7051539A0@gemini.denx.de>
	<20101007073842.GP29673@pengutronix.de>
	<20101007080810.EFDC4153A7E@gemini.denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101007080810.EFDC4153A7E@gemini.denx.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Code "borrowed" without attribution to original authors
To: Wolfgang Denk <wd@denx.de>
Cc: barebox@lists.infradead.org

Hi Wolfgang,

On Thu, Oct 07, 2010 at 10:08:10AM +0200, Wolfgang Denk wrote:
> In message <20101007073842.GP29673@pengutronix.de> you wrote:
> > =

> > I really wonder why you care about the commit log.  I would care more
> > about the copyright statements in the code.  (Nevertheless I consider it
> > correct and fair to attribute in the commit log where the code is taken
> > from.)
> =

> The introduction of the Signed-off-by: system to the Linux kernel has
> been a significant improvement to make the origin of each and every
> line of code clear, independent of the copyright statements which
> quite often only list the original authors, even if the current file
> does not contain much of the original code any more.
Yep, it's a hard job to keep copyright statements up to date (and
sensible).  Updating the in-file statements is the best thing the
barebox people can do now.
 =

> I think it i quite instructive to re-read the "12) Sign your work"
> section of the Linux kernel's "SubmittingPatches" document. I think
> our situation is best covered by the notes to back-porters there:
> =

> |  Special note to back-porters: It seems to be a common and useful pract=
ise
> |  to insert an indication of the origin of a patch at the top of the com=
mit
> |  message (just after the subject line) to facilitate tracking. For inst=
ance,
> |  here's what we see in 2.6-stable :
> |  =

> |      Date:   Tue May 13 19:10:30 2008 +0000
> |  =

> |          SCSI: libiscsi regression in 2.6.25: fix nop timer handling
> |  =

> |          commit 4cf1043593db6a337f10e006c23c69e5fc93e722 upstream
> |  =

> |  And here's what appears in 2.4 :
> |  =

> |      Date:   Tue May 13 22:12:27 2008 +0200
> |  =

> |          wireless, airo: waitbusy() won't delay
> |  =

> |          [backport of 2.6 commit b7acbdfbd1f277c1eb23f344f899cfa4cd0bf3=
6a]
> |  =

> |  Whatever the format, this information provides a valuable help to peop=
le
> |  tracking your trees, and to people trying to trouble-shoot bugs in your
> |  tree.
> =

> Note that this is not only a topic from the point of code
> attribution, but also from the point of bug tracking and quality
> insurance.  I consider it a good thing in general.  I definitely
> want to have this in U-Boot myself.
full ack.  But the impression I got on your first mails is not that you
care much about bug tracking and quality assurance in barebox.  I
thought it's more about missing fame for U-Boot and it's contributors.

And it needs an adaption if you copy code that was added and changed by
several commits.  Then I would not add the "original" Sobs to my commit
log, only reference the HEAD commit where the code is taken from.)

> > I don't know if you want to make it easier for people to get the
> > annotations right/better when copying from U-Boot or not.  But if you
> > do, you could change your standard copyright header to include the
> > project's name.  Something like:
> =

> Hm... we could do that, of course. But what exactly would it help or
> change?
If Joe Developer copies a file from U-Boot to barebox, he automatically
get's the in-file attribution right/better.

>          This is not done in Linux, either...
So you scruple to make U-Boot better than the Linux kernel? ;-)

In the section "How to Apply These Terms to Your New Programs" of the
GPL-2 it's even suggested to add =


	<one line to give the program's name and a brief idea of what it does.>

I prefer my suggestion, but YMMV.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
