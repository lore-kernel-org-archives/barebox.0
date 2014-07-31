Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XCjM9-00006F-1m
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 05:56:49 +0000
Date: Thu, 31 Jul 2014 07:56:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140731055626.GR23235@pengutronix.de>
References: <1406638037-23026-1-git-send-email-antonynpavlov@gmail.com>
 <20140730063504.GK23235@pengutronix.de>
 <53D8B2DA.7050409@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <53D8B2DA.7050409@gmail.com>
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
Subject: Re: [PATCH v3 0/2] i2c: add Marvell 64xxx driver; fix Makefile
 indentation
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jul 30, 2014 at 10:54:50AM +0200, Sebastian Hesselbarth wrote:
> On 30.07.2014 08:35, Sascha Hauer wrote:
> >I'm fine with the driver. Will you ack it once your fine with it aswell?
> 
> Hmm, it still throws a lot of "I2C bus error" on i2c_probe when no
> device is at that address

This message should really be removed as it's expected behaviour on
i2c_probe. Anyway, users of this driver should be annoyed enough pretty
soon so they send a patch, so: Applied.

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
