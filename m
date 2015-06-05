Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z0prW-00071D-SL
 for barebox@lists.infradead.org; Fri, 05 Jun 2015 11:32:35 +0000
Date: Fri, 5 Jun 2015 13:28:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150605112803.GB6325@pengutronix.de>
References: <CAKOK1G0iK=kZJPHGV6mtCbwdNpwdZOXEfnCTeozC+8Nkehxe1A@mail.gmail.com>
 <20150603194202.GA4802@omega>
 <loom.20150605T080346-98@post.gmane.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <loom.20150605T080346-98@post.gmane.org>
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
Subject: Re: BeagleBoard-Xm: memtest return error
To: Valeriy Nyrov <nvg.dev@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jun 05, 2015 at 06:11:46AM +0000, Valeriy Nyrov wrote:
> Hi Alex,
> that is, memset command can not be used?
> I have understood correctly - to the test was successful it is necessary to
> disable the data cache?

For testing purposes it should be enough to do some memcpy to fill the
cache with something else.

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
