Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TAOjL-0007SH-Ox
 for barebox@lists.infradead.org; Sat, 08 Sep 2012 17:22:04 +0000
Date: Sat, 8 Sep 2012 19:22:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120908172200.GJ18243@pengutronix.de>
References: <20120907120713.GQ20330@game.jcrosoft.org>
 <1347020017-12110-1-git-send-email-plagnioj@jcrosoft.com>
 <1347020017-12110-9-git-send-email-plagnioj@jcrosoft.com>
 <20120907182106.GA18243@pengutronix.de>
 <20120908054033.GT20330@game.jcrosoft.org>
 <20120908061730.GV20330@game.jcrosoft.org>
 <20120908134706.GB18243@pengutronix.de>
 <20120908145125.GB20330@game.jcrosoft.org>
 <20120908152712.GI18243@pengutronix.de>
 <20120908171229.GC20330@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120908171229.GC20330@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 09/11] defaultenv-2: boot/net add bootp support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Sep 08, 2012 at 07:12:29PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Look, there are so many possible setups.
> > 
> > - kernel on tftp, disk, nand
> > - oftree on tftp, disk, nand, none at all
> > - root on nfs, disk, nand
> > 
> > Even the above makes for 36 combinations, different names/partitions not
> > counted. The setups are board specific, company specific, project
> > specific or person specific. There is no way of making all happy with a
> > single script. Instead the bootscripts are meant as an *example* to get
> > started, they are *not* meant to fit all your and everyone elses needs.
> > 
> > You want to get your oftree path from a dhcp request? Then fine, change
> > global.bootm.oftree to "${path}/${global.dhcp.oftree_file}". You want
> > to use the one from /env/oftree? Then change global.bootm.oftree
> > accordingly. You want to use one as a fallback from another one? Also
> > fine, do some if/else.
> > 
> > But please don't try to force your specific setup to other people.
> I force nothing I just add the generic bootp support

Sure you do. For example you leave no option to not use
$global.dhcp.rootpath even if set. There is no option to not use
$global.dhcp.bootfile even if set. Yes, you could add an option
somewhere, but that would make the boot scripts even more complicated.

The boot scripts are not the place to add code. You can add a
helper script to do whatever magic you need; and if it's sufficiently
useful we can add it to the tree.

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
