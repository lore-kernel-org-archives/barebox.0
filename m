Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZMgs-0006Cb-7K
 for barebox@lists.infradead.org; Mon, 06 May 2013 14:46:59 +0000
Date: Mon, 6 May 2013 16:46:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130506144634.GH32299@pengutronix.de>
References: <1367599871-28479-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <1367599871-28479-5-git-send-email-thomas.petazzoni@free-electrons.com>
 <20130506160916.04c7bfdc@skate>
 <20130506143030.GF32299@pengutronix.de>
 <20130506163424.4e398333@skate>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130506163424.4e398333@skate>
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
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>, Willy Tarreau <w@1wt.eu>

On Mon, May 06, 2013 at 04:34:24PM +0200, Thomas Petazzoni wrote:
> Dear Sascha Hauer,
> 
> On Mon, 6 May 2013 16:30:30 +0200, Sascha Hauer wrote:
> 
> > > ... and here, I'm directly poking at physical addresses, but it seems
> > > like Barebox can run with the MMU enabled. Should I be mapping those
> > > registers before accessing them?
> > 
> > We use the MMU, but we use a 1:1 mapping. The SDRAM is mapped cached and
> > the rest is mapped uncached. This means you can simply access all
> > registers without mapping them
> 
> Ok, thanks. So you're not overly chocked by those readl() poking
> directly at physical addresses, if I understand correctly.

Not at all, we do this everywhere. There is a tendency to turn units
into proper drivers though as drivers show up in the 'iomem' command and
with drivers it's generally easier to abstract between different SoCs.

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
