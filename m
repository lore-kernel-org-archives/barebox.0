Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 29.97.mail-out.ovh.net ([87.98.174.141]
	helo=97.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QUwKs-000228-83
	for barebox@lists.infradead.org; Fri, 10 Jun 2011 07:40:55 +0000
Received: from mail185.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by 97.mail-out.ovh.net (Postfix) with SMTP id 7565C4A7982
	for <barebox@lists.infradead.org>;
	Fri, 10 Jun 2011 09:41:30 +0200 (CEST)
Date: Fri, 10 Jun 2011 09:27:29 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110610072729.GA3037@game.jcrosoft.org>
References: <201106081149.40298.tim.sander@hbm.com>
	<20110610070950.GQ23771@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110610070950.GQ23771@pengutronix.de>
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
Subject: Re: Read out version of barebox
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Tim Sander <tim.sander@hbm.com>

On 09:09 Fri 10 Jun     , Sascha Hauer wrote:
> Hi Tim,
> 
> On Wed, Jun 08, 2011 at 11:49:40AM +0200, Tim Sander wrote:
> > Hi
> > 
> > I'd like to read out the version string of barebox out of flash. Any idea how 
> > to do this?
> 
> Short answer: No.
> 
> We recently added a magic value to the barebox binary which adds at
> least a 'barebox' string so that you can at least recognize that
> there is a barebox in flash. I couldn't convince the linker though
> to add the version string at some fixed location.
> 
> (Note this is all Arm specific atm)
IIRC we can do so via --build-id

but we need to update the lds to .note.*
or more precisely .note.gnu.build-id

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
