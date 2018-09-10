Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fzInD-0002hL-W6
 for barebox@lists.infradead.org; Mon, 10 Sep 2018 09:47:54 +0000
Message-ID: <1536572846.3362.47.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 10 Sep 2018 11:47:26 +0200
In-Reply-To: <20180910082332.lq5knkzdjbhbdkys@pengutronix.de>
References: <a8ae5b24-1bdb-637e-a346-3f803b26504f@gmail.com>
 <20180910082332.lq5knkzdjbhbdkys@pengutronix.de>
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
Subject: Re: Re: [PATCH 09/10] ARM: rpi: add raspberry pi 3 support
To: Roland Hieber <r.hieber@pengutronix.de>, Martin Ortbauer <mortbauer@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Montag, den 10.09.2018, 10:23 +0200 schrieb Roland Hieber:
> On Thu, Sep 06, 2018 at 09:31:48PM +0200, Martin Ortbauer wrote:
> > Dear Lucas
> > 
> > I'm a bit confused about the barebox support for the rapsberrypi 3 series.
> > 
> > I found the patch [1] and also the documentation [2] suggests support for
> > raspberrry 3, however it only creates an image for the pi1 and pi2.
> > 
> > I also checked out the git logs and couldn't find any source of the patch,
> > do you know about the state, and why it didn't find its way?
> 
> Indeed, the patch series was never applied. The last state of discussion
> was that Sascha mentioned that one of the patches broke some defconfigs
> [1], to which Lucas apparently sent a fixup [2]. After that, I cannot
> find any further discussion.
> 
> Sascha, Lucas, what is the state here? Should the series be resent?

There are some small issues with this series that I need to fix. As the
RPi3 support was/is an idle task for me it always gets pushed down the
priority list. I'll try to get off my arse and fix the remaining issues
this week.

Regards,
Lucas

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
