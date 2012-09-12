Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBonl-0003EB-Sf
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 15:24:30 +0000
Date: Wed, 12 Sep 2012 17:24:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120912152425.GV6180@pengutronix.de>
References: <20120912132443.GQ31207@game.jcrosoft.org>
 <1347457369-9215-1-git-send-email-plagnioj@jcrosoft.com>
 <1347457369-9215-2-git-send-email-plagnioj@jcrosoft.com>
 <20120912150829.GS6180@pengutronix.de>
 <20120912151816.GS31207@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120912151816.GS31207@game.jcrosoft.org>
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
Subject: Re: [PATCH 02/11] bmp: split bmp rending in lib/bmp.c
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 12, 2012 at 05:18:16PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 17:08 Wed 12 Sep     , Sascha Hauer wrote:
> > Argh!
> > 
> > Why am I writing mails anyway.
> > 
> > In Subject: s/rending/rendering/
> > 
> > Or better: Move bmp rendering to lib/bmp.c
> sorry forget

You won. I fixed this up myself and applied this series.

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
