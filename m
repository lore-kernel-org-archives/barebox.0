Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a9VYc-000595-GU
 for barebox@lists.infradead.org; Thu, 17 Dec 2015 10:13:11 +0000
Date: Thu, 17 Dec 2015 11:12:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151217101248.GE11966@pengutronix.de>
References: <1449873185.26955.138.camel@rtred1test09.kymeta.local>
 <1449873460.26955.140.camel@rtred1test09.kymeta.local>
 <20151216105214.GV11966@pengutronix.de>
 <1450312315.26955.187.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1450312315.26955.187.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH 1/2] environment: Support env from file in a file-system
 via device tree
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox <barebox@lists.infradead.org>

On Thu, Dec 17, 2015 at 12:31:55AM +0000, Trent Piepho wrote:
> On Wed, 2015-12-16 at 11:52 +0100, Sascha Hauer wrote:
> > On Fri, Dec 11, 2015 at 10:37:34PM +0000, Trent Piepho wrote:
> > > From d8f4428244b3c7009a6ef7d5a97a00747cd19472 Mon Sep 17 00:00:00 2001
> > > From: Trent Piepho <tpiepho@kymetacorp.com>
> > > Date: Fri, 11 Dec 2015 14:19:34 -0800
> > > Subject: [PATCH 2/2] socfpga: Find partition with environment via device tree
> > 
> > The subject in this mail is wrong. The correct subject is here, but 'git
> > am' takes the one from the mail.
> 
> IMAP and POP aren't supported at work so I can't use git send-email and
> must instead manually import the patches into a mailer that supports
> EWS.  I must have forgotten to copy the subject on that one.
> 
> > I thought over it and I am fine with the approach of putting the
> > filename as an additional property into the barebox,environment node.
> > 
> > Also I am fine with the "of_path: Fix bug with partitions, simply code"
> > patch, only I can not find the commitish that broke the partition code.
> 
> I used my local rebased branch by mistake, it should have been
> 75b682795eafb2385556a9642f09e0af96a1264a 
> 
> > I somewhat lost track over your outstanding patches. Could you resend
> > all of them in a single series?
> 
> Ok. Have you considered using patchwork for this list?  I've found it
> pretty useful for keeping track of patches.

I have tried it a few years ago, but never got really warm with it.
patchwork requires some maintenance and usually I am quite happy with my
workflow. Only sometimes when there are several updates to a patch,
patches that do not really depend on each other but are still somehow
related with each other it feels better when everything is resent
freshly.

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
