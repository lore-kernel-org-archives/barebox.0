Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo4.mail-out.ovh.net ([188.165.36.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TVShZ-0004D8-TQ
 for barebox@lists.infradead.org; Mon, 05 Nov 2012 19:51:21 +0000
Received: from mail618.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 74C05104E8FA
 for <barebox@lists.infradead.org>; Mon,  5 Nov 2012 20:58:32 +0100 (CET)
Date: Mon, 5 Nov 2012 20:49:07 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121105194907.GC25679@game.jcrosoft.org>
References: <1351791438-29967-1-git-send-email-robert.jarzmik@free.fr>
 <1352051724-16253-1-git-send-email-robert.jarzmik@free.fr>
 <20121104183659.GC29599@game.jcrosoft.org> <87mwyvvs7o.fsf@free.fr>
 <20121105182544.GB25679@game.jcrosoft.org> <878vafvq9b.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <878vafvq9b.fsf@free.fr>
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
Subject: Re: [PATCH v2 1/2] commands: change Y-Modem implementation
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On 19:49 Mon 05 Nov     , Robert Jarzmik wrote:
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:
> > On 19:07 Mon 05 Nov     , Robert Jarzmik wrote:
> >> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:
> >> No timeout indeed, on purpose.
> >> 
> >> The short explanation is that in a purge situation, all incoming data must be
> >> flushed, regardless of the time it takes.
> >> 
> >> The long explantion is :
> >>  - suppose the while(cdev->tstc(cdev)) takes a lot of time
> >>  - this implies that :
> >>    => the sender is sending data as fast as the reader can consume (not quite
> >>    probable, but why not ...)
> >>    => the sender has gone crazy, as in *-Modem protocol when this function is
> >>    called, no more than 1029 bytes can be sent by a *sane* sender
> >> 
> >> So let's take as granted that the sender has gone crazy (or hardware is brain
> >> dead). What will happen if I place a timeout here ?
> >>  - first, I'll obviously get out of xy_flush()
> >>  - then, as I receive garbage, xy_handle() will exit with either -EBADMSG or
> >>  -EILSEQ. So far so good.
> >>  - then the loady command will finish on error. Still good.
> >>  - then the input console will take over, and execute all the garbage sent to
> >>  it.
> >>    This is definitely something we don't want. Imagine in the garbage you have
> >>    something like "erase /dev/mtd0" ... Therefore, no timeout.
> > my issue is how can I interrupt it from barebox
> You can't, how could you ? Your console is overwhelmed by garbage input, what
> could you possibly do to interrupt it apart from cutting down the sender ?
this is an issue if we have more than one we need be able to do so and I may
want to use it on an other console_device not necessarely the current one

I have often hw that have more than one uart
> 
> > can you put the v3 on a tree somewhere so I can pull it
> I'll try. I have no external git I can push to. If you have a hint ...
https://git.wiki.kernel.org/index.php/GitHosting

Best Regards,
J.
> 
> -- 
> Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
