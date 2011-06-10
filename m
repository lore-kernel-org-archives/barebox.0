Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.27.mail-out.ovh.net ([46.105.34.120] helo=27.mail-out.ovh.net)
	by canuck.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QVNH3-0006NW-GH
	for barebox@lists.infradead.org; Sat, 11 Jun 2011 12:26:46 +0000
Date: Fri, 10 Jun 2011 13:13:13 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110610111313.GB3037@game.jcrosoft.org>
References: <1307642584-23695-1-git-send-email-plagnioj@jcrosoft.com>
	<20110610070447.GP23771@pengutronix.de>
	<20110610070507.GQ17584@game.jcrosoft.org>
	<20110610080233.GW23771@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110610080233.GW23771@pengutronix.de>
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
Subject: Re: [RFC PATCH] cammand/gpio: switch to getopt
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:02 Fri 10 Jun     , Sascha Hauer wrote:
> On Fri, Jun 10, 2011 at 09:05:07AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 09:04 Fri 10 Jun     , Sascha Hauer wrote:
> > > On Thu, Jun 09, 2011 at 08:03:04PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > this will simplify the implementation and save 296 bytes
> > > 
> > > This is both true. Still I like the old syntax of the commands very
> > > much. Actually the commands have the same name as in the kernel and
> > > it feels just good to type.
> > maybe we can drop the command
> > and add a devfs entry
> 
> How? With the gpio commands you have to specify two parameters at once.
> I can't see how to archieve this with device parameters.
> 
via params

param mode will specify inpout or out
then read or write will set or get the value

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
