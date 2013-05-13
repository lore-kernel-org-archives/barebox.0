Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbrbG-0003jv-GR
 for barebox@lists.infradead.org; Mon, 13 May 2013 12:11:31 +0000
Date: Mon, 13 May 2013 14:11:01 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130513141101.1a894d81@skate>
In-Reply-To: <20130513115322.GQ32299@pengutronix.de>
References: <1368357969-21633-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <20130513081907.GJ32299@pengutronix.de>
 <20130513103924.0506f211@skate>
 <20130513115322.GQ32299@pengutronix.de>
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

On Mon, 13 May 2013 13:53:22 +0200, Sascha Hauer wrote:

> You should normally be able to work on the master branch. If you have
> dependencies to -next then yes, you would have to rebase which means
> some work for you.
> Not having a fast forward branch means that we have a better commit
> history and that bugs noticed early enough do not even make it to the
> master branch which increases bisectability significantly.

Ok, good to know. Thanks!

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
