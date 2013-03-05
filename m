Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eso.teric.us ([69.164.192.171])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCvGl-0005Ra-P6
 for barebox@lists.infradead.org; Tue, 05 Mar 2013 17:03:16 +0000
Date: Tue, 5 Mar 2013 11:09:29 -0600
From: Josh Cartwright <joshc@eso.teric.us>
Message-ID: <20130305170929.GD16050@kryptos>
References: <cover.1362273612.git.joshc@eso.teric.us>
 <20130303145810.GB10708@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130303145810.GB10708@pengutronix.de>
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
Subject: Re: [PATCH 0/5] Zynq support for barebox
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org, Michal Simek <monstr@monstr.eu>

On Sun, Mar 03, 2013 at 03:58:10PM +0100, Steffen Trumtrar wrote:
> Hi!
> 
> On Sat, Mar 02, 2013 at 07:20:12PM -0600, Josh Cartwright wrote:
> > In San Francisco a couple weeks ago (ELC2013), Thomas Petazzoni
> > informally mentioned barebox in passing, so I decided to toy with it a
> > bit...
> > 
> > This patchset adds basic support for the Zynq SoC to barebox.  So far,
> > it's only been tested as a 'secondary' bootloader (after u-boot).  Also
> > added is support for the zc702 development board.
> > 
> 
> I have some patches laying around, that have support for booting first stage
> from a SD-Card on a ZedBoard. I didn't send them as of yet, because I'm not
> completely satisfied with them in one or two places. (The clocksource seems to
> be inverse to what barebox expects, which would be a quick fix, and barebox boots
> uuultra slow, if I do everything according to the TRM)
> At the moment, I do not have access to the board though. But I hope I can get a
> hand on it in the next days.

If you have a chance to send out what you have, I'd be curious to see
it.  Fortunately I have several Zynq boards to play with.

   Josh

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
