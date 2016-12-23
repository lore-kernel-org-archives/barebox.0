Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cKMVH-0007U4-PP
 for barebox@lists.infradead.org; Fri, 23 Dec 2016 09:51:08 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <ukl@pengutronix.de>) id 1cKMUw-0008Bn-9h
 for barebox@lists.infradead.org; Fri, 23 Dec 2016 10:50:46 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <ukl@pengutronix.de>) id 1cKMUw-0006Y6-3f
 for barebox@lists.infradead.org; Fri, 23 Dec 2016 10:50:46 +0100
Date: Fri, 23 Dec 2016 10:50:46 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20161223095046.xnvd2taafojhrjgd@pengutronix.de>
References: <20161223094549.3311-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161223094549.3311-1-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ata: pata-imx: simplify assignment of device name
To: barebox@lists.infradead.org

Hello,

On Fri, Dec 23, 2016 at 10:45:49AM +0100, Uwe Kleine-K=F6nig wrote:
>  	dev->detect =3D pata_imx_detect;

BTW, another thing I noticed while reading through this driver is:

pata_imx_detect is a wrapper around ata_port_detect. Later in
imx_pata_probe the function ide_port_register is called which also calls
ata_port_detect.

I don't have a machine handy where I could test, but I guess
pata_imx_detect could be dropped. (Or alternatively ide_port_register
could be reworked and all callers fixed to setup a detect call.)

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
