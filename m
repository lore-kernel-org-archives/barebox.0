Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uwbrx-0006Sh-Nx
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 17:38:30 +0000
Date: Tue, 9 Jul 2013 19:38:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130709173806.GW516@pengutronix.de>
References: <1373059339-20513-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1373059339-20513-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [RFC 0/2] mci: Dove SDHCI driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On Fri, Jul 05, 2013 at 11:22:17PM +0200, Sebastian Hesselbarth wrote:
> This RFC presents a working SDHCI driver for the IP found on Marvell
> Dove SoCs.
> 
> @Sascha: We talked about refactoring common SDHCI code and I just want
> to show what I came up with for Dove. After thinking about existing barebox
> SDHCI, I had the impression that I should reimplement Dove SDHCI with writel
> as it is already made in other SDHCI drivers.

Yes, common register accessors would make it possible to share code.
Maybe we can start with some sdhc_write[bwl]/read[bwl] functions which
are static inline wrappers around regular writel/readl. This would make
it possible to add an indirection there should we have to.

> 
> I will be not checking mails regularily nor working on Barebox for the next
> two weeks, so feel free to simply ignore the RFC. But I thought it will be
> a good way to discuss your plans for common SDHCI code.

I think the driver looks mostly good. It should be a good base to factor
out common code in the future.

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
