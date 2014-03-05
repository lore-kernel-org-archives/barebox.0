Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WLAU4-0006vy-CZ
 for barebox@lists.infradead.org; Wed, 05 Mar 2014 11:59:36 +0000
Date: Wed, 5 Mar 2014 12:59:17 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20140305115917.GF6918@pengutronix.de>
References: <1394020031-339-1-git-send-email-s.trumtrar@pengutronix.de>
 <20140305115557.GJ4238@tarshish>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140305115557.GJ4238@tarshish>
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
Subject: Re: [PATCH] Makefile: add target for gtags
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

On Wed, Mar 05, 2014 at 01:55:57PM +0200, Baruch Siach wrote:
> Hi Steffen,
> 
> On Wed, Mar 05, 2014 at 12:47:11PM +0100, Steffen Trumtrar wrote:
> > The scripts/tags.sh file already supports the generation of gtags with
> > GNU GLOBAL. The only thing missing is the makefile target to use it.
> > 
> > Copy the setup from the Linux Kernel to allow usage of gtags with barebox.
> 
> Adding gnu global generated files to top level .gitignore would be nice as 
> well. See kernel commit f2ac5e78928bf.

Oops, yeah. Of course. I will add that.

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
