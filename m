Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TLtx9-0001pz-4P
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 10:55:52 +0000
Received: from mail611.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 8FD12DC1966
 for <barebox@lists.infradead.org>; Wed, 10 Oct 2012 13:02:14 +0200 (CEST)
Date: Wed, 10 Oct 2012 12:53:23 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121010105323.GJ26553@game.jcrosoft.org>
References: <1349694156-30554-1-git-send-email-s.hauer@pengutronix.de>
 <20121008121527.GY26553@game.jcrosoft.org>
 <CAA4bVAGCbbrw0RmMdpDa88bF12Wjqp2FFixsKZ_-6wYyUKwcCQ@mail.gmail.com>
 <20121010084637.GR27665@pengutronix.de>
 <20121010093921.GG26553@game.jcrosoft.org>
 <20121010094703.GZ27665@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121010094703.GZ27665@pengutronix.de>
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
Subject: Re: [PATCH] ARM at91sam9260ek: remove unused reset entry
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:47 Wed 10 Oct     , Sascha Hauer wrote:
> On Wed, Oct 10, 2012 at 11:39:21AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 10:46 Wed 10 Oct     , Sascha Hauer wrote:
> > > On Mon, Oct 08, 2012 at 04:24:18PM +0400, Antony Pavlov wrote:
> > > > On 8 October 2012 16:15, Jean-Christophe PLAGNIOL-VILLARD
> > > > <plagnioj@jcrosoft.com> wrote:
> > > > > On 13:02 Mon 08 Oct     , Sascha Hauer wrote:
> > > > >> The at91sam9260ek has a custom reset function which does the same thing
> > > > >> as the default function. Also it does not define MACH_HAS_LOWLEVEL_INIT
> > > > >> as it should do. Remove the function.
> > > > >>
> > > > >> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > >> ---
> > > > > Acked-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > > >
> > > > > btw we should rename the command reset reboot because it start to be confusing
> > > > 
> > > > IMHO it is a very good idea!
> > > 
> > > I would rather use a different name for the reset functions which are in
> > > the startup code. In the end the reset command just resets the board.
> > > 'reboot' sounds like something is being shutdown before restarting a
> > > board.
> > > 
> > > Changing a command is quite painful since all environment scripts will
> > > be broken. I don't think reset is used in the environment, but the
> > > API change to the mount command always nags me when using a new barebox
> > > which has an older environment in flash. I think we really have to be
> > > more careful when changing commands.
> > reset means reset the screen in linux
> > 
> > and I check nearly no one use reset in the env
> > execpt sam9g45 and defaultenv2
> > 
> > when I ask to do not update the var to pass the arch number on arm you give
> > the invert comment env evolve and we do not want to loose tis freedom
> 
> You are right, but still we have a problem in this area and I wanted to
> mention it. One way out could for example be that we introduce some
> version counter which we increase when incompatible changes occur. Then
> we could fall back to the default env. I haven't thought that to an end
> though.
agreed, I've add such info in the env for it's own format

maybe with a question to the end use the first time with a timeout
if he really want to keep the current one

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
