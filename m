Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XPTJK-00055u-2t
 for barebox@lists.infradead.org; Thu, 04 Sep 2014 09:26:34 +0000
Date: Thu, 4 Sep 2014 11:26:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140904092609.GO5352@pengutronix.de>
References: <1409656080-19280-1-git-send-email-poggi.raph@gmail.com>
 <1409656080-19280-3-git-send-email-poggi.raph@gmail.com>
 <20140903065649.GD5352@pengutronix.de>
 <CACqcpZDjqOVD3NuRBj7910TWhEO2XVLsBPx9wecCuyDVgsHdTA@mail.gmail.com>
 <20140903135256.GK5352@pengutronix.de>
 <CACqcpZACLkaPExXuhEgn0CER_sTvj8_6Lws06=oKZm-RJNZLtQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACqcpZACLkaPExXuhEgn0CER_sTvj8_6Lws06=oKZm-RJNZLtQ@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 2/3] pinctrl: at91: add pinctrl driver
To: =?iso-8859-15?Q?Rapha=EBl?= Poggi <raphio98@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 03, 2014 at 05:10:33PM +0200, Rapha=EBl Poggi wrote:
> This patch is perfect :-). You just miss to check the return value in
> at91_gpio_probe.
> =

> Do I have to integrate this patch in mine ? or you will apply it yourself=
 ?

I just added the return value check, squashed the patch into your
pinctrl driver patch and applied to -next.

Sascha


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
