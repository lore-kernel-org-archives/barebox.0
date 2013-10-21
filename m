Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22e.google.com ([2a00:1450:4013:c01::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VYHTT-0006V3-GX
 for barebox@lists.infradead.org; Mon, 21 Oct 2013 15:32:56 +0000
Received: by mail-ea0-f174.google.com with SMTP id z15so3547780ead.19
 for <barebox@lists.infradead.org>; Mon, 21 Oct 2013 08:32:32 -0700 (PDT)
Date: Mon, 21 Oct 2013 17:32:26 +0200
From: Andre Heider <a.heider@gmail.com>
Message-ID: <20131021153226.GA64978@gmail.com>
References: <1382185130-28995-1-git-send-email-a.heider@gmail.com>
 <20131021084621.GE30088@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131021084621.GE30088@pengutronix.de>
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
Subject: Re: [PATCH 00/10] RPi mailbox support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Oct 21, 2013 at 10:46:21AM +0200, Sascha Hauer wrote:
> Hi Andre,
> 
> On Sat, Oct 19, 2013 at 02:18:41PM +0200, Andre Heider wrote:
> > This adds a bcm2835 mailbox driver for the RPi to talk to the on-SoC
> > VideoCore. See [1] for a description.
> > 
> > This patchset uses it to get two properties, the eMMC clock and the
> > memory size.
> > 
> > The RPi backend needs to use this driver early on, namely before the
> > MMU setup. We also want to use the driver in the future after the MMU setup,
> > like setting up simplefb for the kernel. Patch 1 and 2 lay the groundwork
> > for that.
> > 
> > The mailbox driver also needs to handle timouts, so patch 5 and 6 are
> > making the clocksource accessible earlier.
> > 
> > Patch 7 is the driver itself, providing a helper macro for users based on
> > a new common macro from patch 3.
> > 
> > Patch 8 and 9 switch the bc2835_mci driver from a local mailbox
> > implementation to the new driver.
> > 
> > Patch 10 uses the driver to get the proper memory size.
> > 
> > Patch 4 is just a cleanup.
> 
> I'm in Edinburgh this week and won't have much time. I'll have a loser
> look next week. This series isn't lost. Thanks for working on this.

No worries, there's no need to rush :)

Regards,
Andre

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
