Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo4.mail-out.ovh.net ([188.165.36.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UD9MA-0002jT-Qw
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 08:05:48 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id AC35D104DFEE
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 09:16:42 +0100 (CET)
Date: Wed, 6 Mar 2013 09:01:18 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130306080118.GA4401@game.jcrosoft.org>
References: <1361014553-24489-1-git-send-email-plagnioj@jcrosoft.com>
 <20130306074327.GD1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130306074327.GD1906@pengutronix.de>
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

On 08:43 Wed 06 Mar     , Sascha Hauer wrote:
> On Sat, Feb 16, 2013 at 12:35:53PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  fs/devfs.c       |   70 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
> >  include/driver.h |    1 +
> >  2 files changed, 71 insertions(+)
> 
> What's your usecase with this patch? Telling me could increase my
> motivation applying it.
I use it to handle boot device and tty today

so the application part does not care about the real hardware they always have
the same device (file) to search
> 
> One thing I see with this patch that the next thing would be to add
> directory support to debugfs in which case we might be better off
> adding real device nodes and remove the devfs like we have it now
> completely.
yeah I've the idea to rewrite the devfs completly and the ramfs too

as the ramfs should be at vfs level so the devfs will nearly implement nothing

Best Regards,
J.
> 
> Sascha
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
