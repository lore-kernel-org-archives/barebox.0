Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo5.mail-out.ovh.net ([188.165.57.91]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1THhyR-0001Gp-4n
 for barebox@lists.infradead.org; Fri, 28 Sep 2012 21:19:52 +0000
Received: from mail98.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 98E75FFA49D
 for <barebox@lists.infradead.org>; Fri, 28 Sep 2012 23:25:54 +0200 (CEST)
Date: Fri, 28 Sep 2012 23:17:18 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120928211718.GM26553@game.jcrosoft.org>
References: <20120913172220.GB20834@game.jcrosoft.org>
 <1347558023-25680-1-git-send-email-plagnioj@jcrosoft.com>
 <1347558023-25680-7-git-send-email-plagnioj@jcrosoft.com>
 <20120928104846.GI24458@pengutronix.de>
 <20120928154801.GK26553@game.jcrosoft.org>
 <20120928180618.GK1322@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120928180618.GK1322@pengutronix.de>
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
Subject: Re: [PATCH 7/7] defaultenv-2: add boot sequence
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 20:06 Fri 28 Sep     , Sascha Hauer wrote:
> On Fri, Sep 28, 2012 at 05:48:01PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 12:48 Fri 28 Sep     , Sascha Hauer wrote:
> > > 
> > > boot [method]: If called without method, it will iterate over
> > >                /env/boot.d/*. If that directory does not exist,
> > >                it will fall back to a single boot source, which you
> > >                haven't specified, so the script will complain. If you
> > >                give [method], that will be one of /env/boot/[method]
> > >                or /env/boot.d/[method]. If [method] exists in both
> > >                directories, the behaviour will be unspecified.
> > This was your request to do this this way
> 
> Whatever I said, until recently I haven't even noticed that
> this script recursively calls itself. I also did not realize
> that this script intermixed two completely different things with
> 10 lines boot sequence, 10 lines not and then 10 lines maybe boot
> sequence.
> 
> > 
> > THe first version was keeping the old boot.default and ask you to enable the
> > boot sequence specifycally and then you ask me to drop this to make the boot
> > sequence by default
> > 
> > so now I've hardware ready to be send on the way with this next with boot
> > sequence mandatory
> 
> The -next branch is explicitly declared non stable. You shouldn't ship
> prerelease software and expect that it doesn't change.
with the tag next-stable expect so

we need to put some rules so the next does not end up with a I apply but will
see if used specially 6 days to the release

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
