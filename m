Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P5Aed-0007gS-Am
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 05:10:34 +0000
Date: Mon, 11 Oct 2010 07:08:17 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101011050817.GE30252@game.jcrosoft.org>
References: <1286540674-17174-1-git-send-email-s.hauer@pengutronix.de>
	<1286540674-17174-4-git-send-email-s.hauer@pengutronix.de>
	<20101008123627.GC30252@game.jcrosoft.org>
	<20101008124515.GP28242@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101008124515.GP28242@pengutronix.de>
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
Subject: Re: [PATCH 3/3] hush: implement getopt builtin
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 14:45 Fri 08 Oct     , Sascha Hauer wrote:
> On Fri, Oct 08, 2010 at 02:36:27PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 14:24 Fri 08 Oct     , Sascha Hauer wrote:
> > > Positional parameters are not nice, so implement a getopt
> > > function. This has to be done as a builtin because otherwise
> > > we have no access to the parents argc/argv.
> > > 
> > > getopt works as expected, here is a little example:
> > > 
> > > while getopt "hs:" OPT
> > > do
> > >         if [ $OPT = h ]; then
> > >                 echo "usage"
> > >                 exit 1
> > >         else
> > >                 echo "scr: opt: $OPT optarg: $OPTARG"
> > > 	fi
> > > done
> > > 
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > how about make it optional?
> 
> Probably a good idea. I just had in mind that we need to adjust
> the defconfigs then to still have a working defaultenv.
> 
> How about making it optional and combined with your defaultenv-Kconfig
> patch we could do a
> 
> 	select HUSH
> 	select HUSH_GETOPT
> 
> to make sure all commands needed by the defaultenv are in place.
that's why I move the defaultenv to Kconfig, I'm still in vacation. I'll send
the patch tomorrow

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
