Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ROwcr-0002rU-C5
 for barebox@lists.infradead.org; Fri, 11 Nov 2011 19:18:58 +0000
Date: Fri, 11 Nov 2011 20:18:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111111191850.GD16886@pengutronix.de>
References: <1320327965-23067-1-git-send-email-mark.vels@team-embedded.nl>
 <4EBC5173.4080409@team-embedded.nl>
 <20111111153154.GZ16886@pengutronix.de>
 <4EBD65A8.4090302@team-embedded.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4EBD65A8.4090302@team-embedded.nl>
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
Subject: Re: [PATCH] arm:imx27: add basic support for KaRo TX27 module on
 StarterKit 5
To: Mark Vels <mark.vels@team-embedded.nl>
Cc: barebox@lists.infradead.org

On Fri, Nov 11, 2011 at 07:12:56PM +0100, Mark Vels wrote:
> On 11-11-11 16:31, Sascha Hauer wrote:
> > On Thu, Nov 10, 2011 at 11:34:27PM +0100, Mark Vels wrote:
> >> On 11/03/2011 02:46 PM, Mark Vels wrote:
> >>> This patch adds basic support for the TX27 CPU module.
> >>> It has been tested so far using OpenOCD to write it into memory and execute.
> >>> Environment loading and saving from NAND seems to work correctly, further
> >>> testing will be focused on booting from NAND.
> >>>
> >>> Since I don't have any datasheets of the IIM in the i.MX27 I would appreciate
> >>> some help with getting the serial number and the ethernet MAC from there. Can
> >>> anyone shine some light here?
> > I don't think that the i.MX27 has any MAC address in the IIM if the
> > board manufacturer has programmed one.
> kk, that explains. You think the same goes for the serial number?
> I expected this to be preprogrammed during  silicon production but I may of course be wrong...
> >>> Signed-off-by: Mark Vels<mark.vels@team-embedded.nl>
> >>> ---
> >> Anyone? No comments?
> > The patch looks fine. Any reason not to use the default environment?
> >
> > Sascha
> >
> >
> Yeah, it's probably called ignorance :-( I just copied other stuff
> from the tx25 over.  I'll have a look why the tx25 isn't using the
> generic defaultenv too, if I can't find any reason I'll submit a new
> patch.

Most probably because noone converted it so far.

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
