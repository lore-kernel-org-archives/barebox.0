Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo5.mail-out.ovh.net ([178.32.228.5])
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TBkoM-0000Wv-Vv
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 11:08:52 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id E3CF6FF9F02
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2012 12:50:44 +0200 (CEST)
Date: Wed, 12 Sep 2012 12:42:34 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120912104234.GP31207@game.jcrosoft.org>
References: <1347358767-1180-1-git-send-email-plagnioj@jcrosoft.com>
 <1347358767-1180-7-git-send-email-plagnioj@jcrosoft.com>
 <20120912072035.GG6180@pengutronix.de>
 <20120912090128.GO31207@game.jcrosoft.org>
 <20120912094448.GO6180@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120912094448.GO6180@pengutronix.de>
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

On 11:44 Wed 12 Sep     , Sascha Hauer wrote:
> On Wed, Sep 12, 2012 at 11:01:28AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 09:20 Wed 12 Sep     , Sascha Hauer wrote:
> > > On Tue, Sep 11, 2012 at 12:19:27PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > Boot will boot run sequentially the script in /env/boot.d
> > > > 
> > > > diff --git a/defaultenv-2/base/bin/boot b/defaultenv-2/base/bin/boot
> > > > index 103eb87..68e9e89 100644
> > > > --- a/defaultenv-2/base/bin/boot
> > > > +++ b/defaultenv-2/base/bin/boot
> > > > @@ -2,6 +2,8 @@
> > > >  
> > > >  verbose=
> > > >  dryrun=
> > > > +# ensure sequence is init at something
> > > > +sequence=t
> > > 
> > > This looks unnecessary.
> > I beleive it too but 
> > no as you run boot again the sequence keep the previous set I set it after
> > trial
> 
> Then you must have exported it from the command line before calling the
> script. Initializing variables is a good idea, but you should set it to
> be empty.
agreed except this does not work that's why I for to a value

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
