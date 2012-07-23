Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1StDuT-0007wh-3a
 for barebox@lists.infradead.org; Mon, 23 Jul 2012 08:22:34 +0000
Date: Mon, 23 Jul 2012 10:22:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120723082231.GZ30009@pengutronix.de>
References: <20120723042052.GK22657@game.jcrosoft.org>
 <1343017563-27932-1-git-send-email-plagnioj@jcrosoft.com>
 <1343017563-27932-6-git-send-email-plagnioj@jcrosoft.com>
 <20120723063523.GV30009@pengutronix.de>
 <20120723064134.GO22657@game.jcrosoft.org>
 <20120723071622.GX30009@pengutronix.de>
 <20120723080208.GP22657@game.jcrosoft.org>
 <20120723080507.GY30009@pengutronix.de>
 <20120723081807.GQ22657@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120723081807.GQ22657@game.jcrosoft.org>
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
Subject: Re: [PATCH 6/7] compressed: rename barebox target to zbarebox and
 zbarebox.bin
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Jul 23, 2012 at 10:18:07AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 10:05 Mon 23 Jul     , Sascha Hauer wrote:
> > On Mon, Jul 23, 2012 at 10:02:08AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > On 09:16 Mon 23 Jul     , Sascha Hauer wrote:
> > > > 
> > > > Does it really?
> > > > 
> > > > I see this goes back to:
> > > > 
> > > > commit 8a03bff03ebf36b7460e6ec43259bc8b40731ece
> > > > Author: Sascha Hauer <s.hauer@pengutronix.de>
> > > > Date:   Thu Jul 3 10:30:44 2008 +0200
> > > > 
> > > >     [arm] Add cleanup flags only when modules are disabled. Otherwise
> > > >           we remove functions from the binary which are needed for
> > > >           modules
> > > > 
> > > > I can't see though why this should happen. What is needed for modules
> > > > is defined by EXPORT_SYMBOL.
> > > > 
> > > > Unfortunately modules are quite broken atm for me anyway, so I can't
> > > > test.
> > > except you need to use the barebox file to link the ko
> > > 
> > > and that is one of the reason we do need to call the compressed barebox
> > > zbarebox
> > > 
> > > and I'd like to be able to detect when it's a normal barebox and a zbarebox
> > > so need to have start.c compiled 2 times
> > > 
> > > I really do not like this link with the whole barebox in the zbarebox
> > > 
> > > keep stuff clean and seperated is really better
> > 
> > Well, send patches ;)
> THis is what this patch do

But it breaks the build

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
