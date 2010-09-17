Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OwSnO-0003Jc-Dq
	for barebox@lists.infradead.org; Fri, 17 Sep 2010 04:43:35 +0000
Date: Fri, 17 Sep 2010 06:42:24 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100917044224.GF5762@game.jcrosoft.org>
References: <20100909135543.GF9112@game.jcrosoft.org>
	<1284040793-32145-2-git-send-email-plagnioj@jcrosoft.com>
	<20100916154313.GA1473@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100916154313.GA1473@pengutronix.de>
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
Subject: Re: [PATCH 2/7] add md5 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 17:43 Thu 16 Sep     , Sascha Hauer wrote:
> On Thu, Sep 09, 2010 at 03:59:48PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  lib/Kconfig  |    4 +
> >  lib/Makefile |    1 +
> >  lib/md5.c    |  317 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 322 insertions(+), 0 deletions(-)
> >  create mode 100644 lib/md5.c
> > 
> > diff --git a/lib/Kconfig b/lib/Kconfig
> > index a571ba8..e8776a7 100644
> > --- a/lib/Kconfig
> > +++ b/lib/Kconfig
> > @@ -15,6 +15,10 @@ menuconfig DIGEST
> >  
> >  if DIGEST
> >  
> > +config MD5
> > +	bool "MD5"
> > +	default y
> 
> Please no default y here.
fix in the next pull request

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
