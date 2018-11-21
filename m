Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gPNNf-00047H-9w
 for barebox@lists.infradead.org; Wed, 21 Nov 2018 07:57:05 +0000
Date: Wed, 21 Nov 2018 08:56:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181121075649.uheexugggfy6rp6n@pengutronix.de>
References: <20181120094035.18252-1-matthias.schiffer@ew.tq-group.com>
 <20181120094035.18252-2-matthias.schiffer@ew.tq-group.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181120094035.18252-2-matthias.schiffer@ew.tq-group.com>
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
Subject: Re: [PATCH] environment: do not attempt to erase devices with
 MTD_NO_ERASE
To: matthias.schiffer@ew.tq-group.com
Cc: barebox@lists.infradead.org

Hi Matthias,

On Tue, Nov 20, 2018 at 10:40:34AM +0100, matthias.schiffer@ew.tq-group.com wrote:
> From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
> 
> Devices like MRAM do not need to be erased; in fact, trying to do a partial
> erase will fail with -EINVAL, as they don't have a proper erase block size
> defined.

Where does this -EINVAL come from? Wouldn't it be an option to check for
the MTD_NO_ERASE flag mtd_op_erase() and return -EOPNOTSUPP there?

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
