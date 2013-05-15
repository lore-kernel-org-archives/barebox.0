Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcWvk-0001mC-M6
 for barebox@lists.infradead.org; Wed, 15 May 2013 08:19:25 +0000
Date: Wed, 15 May 2013 10:19:01 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130515101901.7c2427b3@skate>
In-Reply-To: <20130515081157.GI32299@pengutronix.de>
References: <1368364146-6024-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1368364146-6024-4-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130513075852.GG32299@pengutronix.de>
 <5190AFA1.1080503@gmail.com>
 <20130515055550.GZ32299@pengutronix.de>
 <20130515092611.1fe76e5c@skate>
 <20130515081157.GI32299@pengutronix.de>
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

On Wed, 15 May 2013 10:11:57 +0200, Sascha Hauer wrote:

> > Hum, too bad, I have sent yesterday a new series, that included
> > Sebastian code, plus basic Kirkwood support, and improvements to the
> > kwbimage tool. The improvements to the kwbimage tool allowed to get rid
> > of some dummy lines in the SolidRun Cubox kwbimage.cfg that Sebastian
> > had submitted.
> 
> Sorry, I misread it. What I understood is that your series needs
> Sebastians patches as base.

No, since Sebastian patches were not yet applied, I thought "let's try
to make the life easier for Sascha and offer a patch series with both
Sebastian patches and my patches together". But in the mean time, you
merged the ones from Sebastian.

No big deal, I've already resent a rebased patch series, on top of
current 'next', which no longer includes Sebastian patches. It however
includes a fix to a patch from Sebastian, which in my earlier version
was folded into Sebastian patch. This fix is made possible thanks to
the improvements made in the kwbimage tool, so it should /not/ be
folded into the original patch from Sebastian, unless you shuffle the
order of commits.

Thanks,

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
