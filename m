Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UboIP-0007jY-B7
 for barebox@lists.infradead.org; Mon, 13 May 2013 08:39:49 +0000
Date: Mon, 13 May 2013 10:39:24 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130513103924.0506f211@skate>
In-Reply-To: <20130513081907.GJ32299@pengutronix.de>
References: <1368357969-21633-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <20130513081907.GJ32299@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] arm: mach-mvebu: drop useless clkdev.h
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Dear Sascha Hauer,

On Mon, 13 May 2013 10:19:07 +0200, Sascha Hauer wrote:
> On Sun, May 12, 2013 at 01:26:09PM +0200, Thomas Petazzoni wrote:
> > As suggested by Antony Pavlov, get rid of the useless clkdev.h in
> > arch/arm/mach-mvebu/.
> > 
> > Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
> 
> Folded this into the original patch adding it.

Just a development process question: since you're folding it, it means
that you're rebasing the 'next' branch constantly?

This sounds off for a public branch on top of which people might be
basing some more work, no?

Thanks!

Thomas
-- 
Thomas Petazzoni, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
