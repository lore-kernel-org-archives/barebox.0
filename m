Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9Kzn-0001Cf-1D
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 19:10:41 +0000
Date: Wed, 5 Sep 2012 21:10:35 +0200
From: Jan Luebbe <jlu@pengutronix.de>
Message-ID: <20120905191035.GA1440@pengutronix.de>
References: <1346860337-777-1-git-send-email-jlu@pengutronix.de>
 <1346860337-777-3-git-send-email-jlu@pengutronix.de>
 <20120905180516.GC4761@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120905180516.GC4761@game.jcrosoft.org>
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
Subject: Re: [PATCH 2/8] Makefile: add target to produce a SPL compatible
 uimage
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 05, 2012 at 08:05:16PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 17:52 Wed 05 Sep     , Jan Luebbe wrote:
> > +barebox.img: barebox.bin FORCE
> > +	$(call if_changed,barebox_mkimage)
> this will not work whit the PBL
> 
> please fix it

PBL is the preloader for the compressed barebox image?

While using that in an uImage doesn't seem very useful, how
would I fix it?

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
