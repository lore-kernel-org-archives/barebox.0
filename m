Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1On2sa-00019l-6a
	for barebox@lists.infradead.org; Sun, 22 Aug 2010 05:14:01 +0000
Date: Sun, 22 Aug 2010 07:07:10 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100822050710.GN8693@game.jcrosoft.org>
References: <1281241073-19115-1-git-send-email-plagnioj@jcrosoft.com>
	<20100818151536.GF454@game.jcrosoft.org>
	<20100821102734.GN27749@pengutronix.de>
	<20100821113550.GA25293@merkur.ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100821113550.GA25293@merkur.ravnborg.org>
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
Subject: Re: [PATCH] Kconfig: sync with linux kernel v2.6.35-4771-g1787985
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

On 13:35 Sat 21 Aug     , Sam Ravnborg wrote:
> On Sat, Aug 21, 2010 at 12:27:34PM +0200, Sascha Hauer wrote:
> > On Wed, Aug 18, 2010 at 05:15:36PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > On 06:17 Sun 08 Aug     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > this will add also the support of the new ncurse interface nconfig
> > > > 
> > > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > is it ok to apply it?
> > 
> > Generally ok, yes. I just thought we should wait a little for a later
> > version, or have I misunderstood Sam?
> 
> Current state of kconfig in v2.6.36-rc1 (which is a later version than
> the one Jean-Christophe references) is the following:
> - savedefconfig bugs fixed
> - reading a minimal config (created by savedefconfig) fixed
> 
> The nconfig issues I mentioned regarding search are
> not yet ready.
> And I am not sure if they go in until next merge window.
> 
> Likewise there are patches in the works that will ease
> the integration with external projects.
> The patches does the following:
> - Allows the prefix to be configured (CONFIG_ => BR2_)
> - No more hardcoded "kernel" strings
> - mainmenu in the config file is used as headline
> 
> These patches will go in during next merge window if they
> are finished in due time.
> 
> So all-in-all I would recommend to use kconfig from
> v2.6.36-rc1 (rather than some random commit) and
> then upgrade again around v2.6.37-rc1 time.
ok I upgrade the patch

and it will be good to update it regulary I will follow it
is there a ML for Kconfig?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
