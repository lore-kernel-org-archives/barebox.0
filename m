Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo4.mail-out.ovh.net ([178.32.228.4])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UD9zM-0008Qd-K9
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 08:46:19 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 1AB3E104E395
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 09:57:17 +0100 (CET)
Date: Wed, 6 Mar 2013 09:41:53 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130306084153.GD4401@game.jcrosoft.org>
References: <1361014553-24489-1-git-send-email-plagnioj@jcrosoft.com>
 <20130306074327.GD1906@pengutronix.de>
 <20130306080118.GA4401@game.jcrosoft.org>
 <20130306081122.GF1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130306081122.GF1906@pengutronix.de>
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
Subject: Re: [PATCH 1/1] devfs: add symlink support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:11 Wed 06 Mar     , Sascha Hauer wrote:
> On Wed, Mar 06, 2013 at 09:01:18AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 08:43 Wed 06 Mar     , Sascha Hauer wrote:
> > > On Sat, Feb 16, 2013 at 12:35:53PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > > ---
> > > >  fs/devfs.c       |   70 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
> > > >  include/driver.h |    1 +
> > > >  2 files changed, 71 insertions(+)
> > > 
> > > What's your usecase with this patch? Telling me could increase my
> > > motivation applying it.
> > I use it to handle boot device and tty today
> > 
> > so the application part does not care about the real hardware they always have
> > the same device (file) to search
> 
> This is in the same league as I wanted to do with persistent device
> names. We should think about this in a more general way.
> 
> > > 
> > > One thing I see with this patch that the next thing would be to add
> > > directory support to debugfs in which case we might be better off
> > > adding real device nodes and remove the devfs like we have it now
> > > completely.
> > yeah I've the idea to rewrite the devfs completly and the ramfs too
> > 
> > as the ramfs should be at vfs level so the devfs will nearly implement nothing
> 
> vfs level? You would have to implement one first, we do not have a vfs
> level at all ;)
yeah because today we duplicate too much code so with this we wil reduce the
size of barebox

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
