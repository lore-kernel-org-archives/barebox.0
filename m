Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T7n8t-0007pE-94
 for barebox@lists.infradead.org; Sat, 01 Sep 2012 12:49:39 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 75F23DC68A1
 for <barebox@lists.infradead.org>; Sat,  1 Sep 2012 14:54:52 +0200 (CEST)
Date: Sat, 1 Sep 2012 14:49:55 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120901124955.GD19233@game.jcrosoft.org>
References: <20120824045246.GJ6271@game.jcrosoft.org>
 <1345784113-29643-1-git-send-email-plagnioj@jcrosoft.com>
 <1345784113-29643-5-git-send-email-plagnioj@jcrosoft.com>
 <20120828082645.GB26594@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120828082645.GB26594@pengutronix.de>
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
Subject: Re: [PATCH 5/5] defaultenv-2: add boot sequence
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:26 Tue 28 Aug     , Sascha Hauer wrote:
> On Fri, Aug 24, 2012 at 06:55:13AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Boot will boot run sequentially the script in /env/boot.d
> > 
> > if not global.boot.defaul or global.boot.defaul == seq
> > start the boot sequence
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  defaultenv-2/base/bin/boot     |   52 ++++++++++++++++++++++++++++++++++++----
> >  defaultenv-2/base/init/general |    2 +-
> >  2 files changed, 48 insertions(+), 6 deletions(-)
> > 
> > diff --git a/defaultenv-2/base/bin/boot b/defaultenv-2/base/bin/boot
> > index 103eb87..ade555d 100644
> > --- a/defaultenv-2/base/bin/boot
> > +++ b/defaultenv-2/base/bin/boot
> > @@ -2,20 +2,39 @@
> >  
> >  verbose=
> >  dryrun=
> > +sequence=
> >  
> >  usage="
> >  $0 [OPTIONS] [source]\n
> >   -v  verbose\n
> >   -d  dryrun\n
> >   -l  list boot sources\n
> > + -s  start boot sequence in /env/boot.d/\n
> 
> I think there should not be a dedicated option for this. Instead, it
> should by default start the boot sequence. global.boot.default could
> then be dropped.
I was thinking about it too

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
