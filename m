Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TAkLx-0005z9-FF
 for barebox@lists.infradead.org; Sun, 09 Sep 2012 16:27:22 +0000
Date: Sun, 9 Sep 2012 18:27:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120909162717.GN18243@pengutronix.de>
References: <1347184076-15238-1-git-send-email-s.hauer@pengutronix.de>
 <1347184076-15238-2-git-send-email-s.hauer@pengutronix.de>
 <20120909111240.GA31207@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120909111240.GA31207@game.jcrosoft.org>
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
Subject: Re: [PATCH 2/3] ARM: Add assembler function to get runtime offset
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Sep 09, 2012 at 01:12:40PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 11:47 Sun 09 Sep     , Sascha Hauer wrote:
> > This function returns the offset between the address barebox is linked at
> > and the address barebox is currently running at.
>  this work on thumb2?

No, it doesn't work on thumb2. Will fix.

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
