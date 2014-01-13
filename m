Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W2ckD-0007el-9d
 for barebox@lists.infradead.org; Mon, 13 Jan 2014 08:19:38 +0000
Date: Mon, 13 Jan 2014 09:19:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140113081911.GG16215@pengutronix.de>
References: <1389346191-15851-1-git-send-email-list-09_barebox@tqsc.de>
 <1389346191-15851-2-git-send-email-list-09_barebox@tqsc.de>
 <20140110111811.GC16215@pengutronix.de> <52CFE00B.6090108@tqsc.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <52CFE00B.6090108@tqsc.de>
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
Subject: Re: [PATCH 1/3] mci: add DSR support
To: Markus Niebel <list-09_barebox@tqsc.de>
Cc: barebox@lists.infradead.org, Markus Niebel <Markus.Niebel@tqs.de>

On Fri, Jan 10, 2014 at 12:56:59PM +0100, Markus Niebel wrote:
> Hello Sascha,
> Am 10.01.2014 12:18, wrote Sascha Hauer:
> > Hi Markus,
> > 
> > On Fri, Jan 10, 2014 at 10:29:49AM +0100, Markus Niebel wrote:
> >> From: Markus Niebel <Markus.Niebel@tqs.de>
> >>
> >> The eMMC and the SD-Card specifications describe the optional SET_DSR command.
> >> During measurements at our lab we found that some cards implementing this feature
> >> having really strong driver strengts per default. This can lead to voltage peaks
> >> above the specification of the host on signal edges for data sent from a card to
> >> the host.
> >>
> >> Since availability of a given card type may be shorter than the time a certain
> >> hardware will be produced it is useful to have support for this command (Alternative
> >> would be changing termination resistors and adapting the driver strength of the
> >> host to the used card.)
> > 
> > So not all cards support this command. Have you tested it with cards
> > that do not support it to make sure they still work? With eMMC you know
> > at board level whether or not this command is supported, but with SD
> > cards you don't.
> > 
> 
> No tests done with SD-cards (SD card spec states, that DSR can be implemented, 
> but we found no card, that implements this feature).
> 
> On the eMMC side we did tests with TQMa53 (barebox and u-boot) and TQMa6 
> (u-boot only) and also with i.MX28 based platform:
> 
> if a card does not support DSR - CMD4 is never sent
> if a card supports DSR but board does not activate the feature - CMD4 is never sent
> if a card supports DSR and board code requests the feature - CMD4 is sent with the
> configured value.
> 
> Would it be a good idea to document the feature as intended for non removable cards
> where the exact value is known?

My only concern was that this feature might be enabled on slots where
cards are used that do not support the DSR feature and do not work
anymore. As this doesn't seem to be the case I'm fine with your patch.
Adding devicetree support is a good idea though as Alexander mentioned.

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
