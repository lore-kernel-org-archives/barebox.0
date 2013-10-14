Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VVe0w-00083Z-0c
 for barebox@lists.infradead.org; Mon, 14 Oct 2013 09:00:35 +0000
Date: Mon, 14 Oct 2013 11:00:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131014090011.GA30088@pengutronix.de>
References: <20131003095957.GQ32444@ns203013.ovh.net>
 <20131006113455.GP30088@pengutronix.de>
 <20131008125124.GU32444@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131008125124.GU32444@ns203013.ovh.net>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Oct 08, 2013 at 02:51:24PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 13:34 Sun 06 Oct     , Sascha Hauer wrote:
> > On Thu, Oct 03, 2013 at 11:59:57AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > Hi,
> > > 
> > > 	v2 update comment and fix comment typo
> > > 	and rebase next
> > > 
> > > The following changes since commit 705dbd7c795bbdfb448e1d0ace89d98cbceaaec1:
> > > 
> > >   Merge branch 'for-next/tegra' into next (2013-10-02 11:07:14 +0200)
> > > 
> > > are available in the git repository at:
> > > 
> > > 
> > >   git://git.jcrosoft.org/barebox.git delivery/bpkfs
> > > 
> > > for you to fetch changes up to 6edfa631c4aafd71d0508b94c7cdea87695dd492:
> > 
> > Applied, thanks.
> > 
> > Please only post patches against -next when you know there are
> > dependencies to patches in -next. Otherwise always post them against
> > master as this is the branch I'll apply them on.
> here there is conflict with uimagefs

I'll resolve those trivial conflicts here on my side.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
