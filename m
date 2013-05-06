Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZMj2-0006GK-J8
 for barebox@lists.infradead.org; Mon, 06 May 2013 14:49:13 +0000
Date: Mon, 6 May 2013 16:48:45 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130506164845.6bcbc02e@skate>
In-Reply-To: <20130506144634.GH32299@pengutronix.de>
References: <1367599871-28479-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <1367599871-28479-5-git-send-email-thomas.petazzoni@free-electrons.com>
 <20130506160916.04c7bfdc@skate>
 <20130506143030.GF32299@pengutronix.de>
 <20130506163424.4e398333@skate>
 <20130506144634.GH32299@pengutronix.de>
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
Subject: Re: [PATCH 4/7] arm: initial support for Marvell Armada 370/XP SoCs
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>, Willy Tarreau <w@1wt.eu>

Dear Sascha Hauer,

On Mon, 6 May 2013 16:46:34 +0200, Sascha Hauer wrote:

> > > We use the MMU, but we use a 1:1 mapping. The SDRAM is mapped cached and
> > > the rest is mapped uncached. This means you can simply access all
> > > registers without mapping them
> > 
> > Ok, thanks. So you're not overly chocked by those readl() poking
> > directly at physical addresses, if I understand correctly.
> 
> Not at all, we do this everywhere. There is a tendency to turn units
> into proper drivers though as drivers show up in the 'iomem' command and
> with drivers it's generally easier to abstract between different SoCs.

Ok. The code in this patch is really an initial support, and I expect
the clock and DRAM stuff to evolve as support for other Marvell SOCs
will be added, or for additional devices.

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
