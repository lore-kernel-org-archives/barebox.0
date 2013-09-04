Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VH7BY-0004mm-HO
 for barebox@lists.infradead.org; Wed, 04 Sep 2013 07:07:29 +0000
Date: Wed, 4 Sep 2013 09:07:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130904070704.GI30088@pengutronix.de>
References: <1377964462-10387-1-git-send-email-plagnioj@jcrosoft.com>
 <20130902090523.GT30088@pengutronix.de>
 <20130902102406.GK19197@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130902102406.GK19197@ns203013.ovh.net>
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
Subject: Re: [PATCH 1/1] arm: mmu: catch NULL pointer dereferences
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 02, 2013 at 12:24:06PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 11:05 Mon 02 Sep     , Sascha Hauer wrote:
> > On Sat, Aug 31, 2013 at 05:54:22PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > For high vectors if memory start at 0x0. We have to
> > > live without being able to catch NULL pointer dereferences.
> > > 
> > Why not add the check to vectors_init() instead of passing this as
> > argument?
> > 
> > I must say I'm not entirely happy with this approach. Being able to
> > catch NULL pointer derefs is really a good thing. When exactly does the
> > faulting zero SDRAM page become a problem for you? obviously something
> > like
> > 
> > cp /somehing /dev/ram0
> > 
> > does not work. Some care must probably be taken when setting up the
> > kernel parameters. Are these the problems or is there something else?
> yes it's get issue with uImage that get data load there :(
> 
> as I can not control the load addr from uImage :(
> 
> and on ux5x0 and arm board I have ddr starting at 0x0

Maybe we should add some hook which dynamically enables/disables the
zero page. The bootm code could then disable it.

Anyway, for now we can also apply the current patch, but please move the
is_start_zero test to vectors_init().

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
