Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VTWju-00072v-0t
 for barebox@lists.infradead.org; Tue, 08 Oct 2013 12:50:15 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 6BCB1DC2021
 for <barebox@lists.infradead.org>; Tue,  8 Oct 2013 14:49:51 +0200 (CEST)
Date: Tue, 8 Oct 2013 14:51:24 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131008125124.GU32444@ns203013.ovh.net>
References: <20131003095957.GQ32444@ns203013.ovh.net>
 <20131006113455.GP30088@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131006113455.GP30088@pengutronix.de>
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
Subject: Re: [PATCH 0/2 v2] add bpkfs support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 13:34 Sun 06 Oct     , Sascha Hauer wrote:
> On Thu, Oct 03, 2013 at 11:59:57AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Hi,
> > 
> > 	v2 update comment and fix comment typo
> > 	and rebase next
> > 
> > The following changes since commit 705dbd7c795bbdfb448e1d0ace89d98cbceaaec1:
> > 
> >   Merge branch 'for-next/tegra' into next (2013-10-02 11:07:14 +0200)
> > 
> > are available in the git repository at:
> > 
> > 
> >   git://git.jcrosoft.org/barebox.git delivery/bpkfs
> > 
> > for you to fetch changes up to 6edfa631c4aafd71d0508b94c7cdea87695dd492:
> 
> Applied, thanks.
> 
> Please only post patches against -next when you know there are
> dependencies to patches in -next. Otherwise always post them against
> master as this is the branch I'll apply them on.
here there is conflict with uimagefs

that's why it was based on next

Best Regards,
J.
> 
> Sascha
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
