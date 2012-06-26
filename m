Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjUXr-0005OC-3X
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 12:06:59 +0000
Message-ID: <1340712413.15660.5.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Tue, 26 Jun 2012 14:06:53 +0200
In-Reply-To: <CAGm1_kvHqr_RiqUkB6ue_bO7Sj3u=jVUKmM9t9Fw-Z_=Sw=ryQ@mail.gmail.com>
References: <1340704314-12593-1-git-send-email-jlu@pengutronix.de>
 <CAGm1_kvHqr_RiqUkB6ue_bO7Sj3u=jVUKmM9t9Fw-Z_=Sw=ryQ@mail.gmail.com>
Mime-Version: 1.0
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
Subject: Re: Add basic support for the OMAP-L138/DA850
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: barebox@lists.infradead.org

On Tue, 2012-06-26 at 13:59 +0200, Yegor Yefremov wrote:
> > this series introduces a new ARM machine 'davinci' and adds support
> > for UART, pin mux, power/clock, USB 1.1, NAND and SPI. Included is
> > support for the HMI10 system which was used to develop and test this
> > series.
> >
> > A second series adding ethernet (EMAC) and display (LCDC) support
> > will be submitted when this is accepted.
> 
> do you also have am335x system? AFAIK they both share same IP blocks.

I have a BeagleBone, which uses an AM3359. So far it seems that it is
closer to the OMAP3530 (beagleboard) than to the L138. The AM3505 shares
the EMAC core with the L138 and the AM1808 should be nearly identical to
the L138.

I've got a simple hack which allows loading barebox on a BeagleBone from
U-Boot's SPL (MUX and clocking is missing). You can use it to load a
kernel from SD and boot it.

Best regards,
Jan

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
