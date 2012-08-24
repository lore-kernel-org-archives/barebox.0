Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T4ytL-00054B-NQ
 for barebox@lists.infradead.org; Fri, 24 Aug 2012 18:46:00 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 1D440DC0EE8
 for <barebox@lists.infradead.org>; Fri, 24 Aug 2012 20:50:52 +0200 (CEST)
Date: Fri, 24 Aug 2012 20:46:06 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120824184606.GL6271@game.jcrosoft.org>
References: <20120824044613.GI6271@game.jcrosoft.org>
 <1345783818-28784-1-git-send-email-plagnioj@jcrosoft.com>
 <1345783818-28784-10-git-send-email-plagnioj@jcrosoft.com>
 <CAONxwYO0RAf+3S3N1pXoB7VEgEsj30FOfyTHYkLYoNXMn798oA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAONxwYO0RAf+3S3N1pXoB7VEgEsj30FOfyTHYkLYoNXMn798oA@mail.gmail.com>
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
Subject: Re: [PATCH 10/18] commands: add readlink support
To: Roberto Nibali <rnibali@gmail.com>
Cc: barebox@lists.infradead.org

On 11:31 Fri 24 Aug     , Roberto Nibali wrote:
> Hi Jean-Christophe
> 
> Btw, congrats on such a good and lean work on the symlink implementation!
> 
> > ---
> >  commands/Kconfig    |    6 ++++
> >  commands/Makefile   |    1 +
> >  commands/readlink.c |   78 +++++++++++++++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 85 insertions(+)
> >  create mode 100644 commands/readlink.c
> >
> > diff --git a/commands/Kconfig b/commands/Kconfig
> > index 92a8152..876f2f8 100644
> > --- a/commands/Kconfig
> > +++ b/commands/Kconfig
> > @@ -220,6 +220,12 @@ config CMD_DIRNAME
> >           Strip last component of file name and store the result in a
> >           environment variable
> >
> > +config CMD_READLINK
> > +       tristate
> > +       prompt "readlink"
> > +       help
> > +         read value of a symbolic link
> > +
> 
> Just a general two cents comment: how about generally rephrasing the
> "read value of a symbolic link" to "display file status of a symbolic
> link"?
no barebox read the value and not display it

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
