Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcW6h-0000db-E7
 for barebox@lists.infradead.org; Wed, 15 May 2013 07:26:39 +0000
Date: Wed, 15 May 2013 09:26:11 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130515092611.1fe76e5c@skate>
In-Reply-To: <20130515055550.GZ32299@pengutronix.de>
References: <1368364146-6024-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1368364146-6024-4-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130513075852.GG32299@pengutronix.de>
 <5190AFA1.1080503@gmail.com>
 <20130515055550.GZ32299@pengutronix.de>
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
Subject: Re: [PATCH 3/5] arm: initial support for Marvell Dove SoCs
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

Dear Sascha Hauer,

On Wed, 15 May 2013 07:55:50 +0200, Sascha Hauer wrote:

> > Although possible, I prefer a different approach:
> > - IIRC all MVEBU SoCs boot up at 0xd0000000
> > - Have a regbase variable within barebox that initially points to that
> > - Have a mvreadl/mvwritel that adds it to reg offsets
> > - Rewrite _initial_ SoC code to use mvreadl/mvwritel
> 
> I applied this series, but please get this topic done before more code
> enters that has to be changed when doing the above.

Hum, too bad, I have sent yesterday a new series, that included
Sebastian code, plus basic Kirkwood support, and improvements to the
kwbimage tool. The improvements to the kwbimage tool allowed to get rid
of some dummy lines in the SolidRun Cubox kwbimage.cfg that Sebastian
had submitted.

Should I rebase my patch series on top of the next branch and resend?

Best regards,

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
