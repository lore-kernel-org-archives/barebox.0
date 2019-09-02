Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4tuF-0001h1-5C
 for barebox@lists.infradead.org; Mon, 02 Sep 2019 21:30:36 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <rsc@pengutronix.de>) id 1i4tuB-000479-5v
 for barebox@lists.infradead.org; Mon, 02 Sep 2019 23:30:31 +0200
Received: from rsc by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <rsc@pengutronix.de>) id 1i4tuA-0007Sq-UL
 for barebox@lists.infradead.org; Mon, 02 Sep 2019 23:30:30 +0200
Date: Mon, 2 Sep 2019 23:30:30 +0200
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20190902213030.kgwletgowwdvjaxf@pengutronix.de>
References: <7954aa66b7cd4e0583b8f96e6ee3292b@eckelmann.de>
 <20190902120810.kbzeqpxqacn7f57k@pengutronix.de>
 <c291d2d377014efab82db262f95a0180@eckelmann.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c291d2d377014efab82db262f95a0180@eckelmann.de>
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
Subject: Re: barebox bug, sh [ -c /dev/nand0.var.ubi.blablablub ] returns
 |true| even if there is no "blablablub" partition on "var" volume
To: barebox@lists.infradead.org

Roland,

On Mon, Sep 02, 2019 at 12:37:37PM +0000, Mainz, Roland wrote:
> Could you *please* implement test(1) -b/-c ? Since barebox ls(1) is
> able to distinguish files from devices it shouldn't be hard, and there
> are cases (like our update script) where telling the difference
> between file and device is important (the alternative is to write
> hideous workarounds...).

This is a public community mailing list. In this context, you are free
to send a patch if you want to see a feature in barebox.

As you also sent this mail to your support mailinglist, the colleagues
responsible for that project will handle the request there.

Thanks,
Robert
-- 
Pengutronix e.K.                           | Dipl.-Ing. Robert Schwebel  |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
