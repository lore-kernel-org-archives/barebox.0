Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X80qG-0006na-Cf
 for barebox@lists.infradead.org; Fri, 18 Jul 2014 05:36:25 +0000
Date: Fri, 18 Jul 2014 07:35:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140718053557.GK23235@pengutronix.de>
References: <1405599141-5992-1-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1405599141-5992-1-git-send-email-poggi.raph@gmail.com>
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
Subject: Re: [PATCH 0/3 v2] mtd: atmel_nand: add support for 8k page nand
To: Raphael Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jul 17, 2014 at 02:12:18PM +0200, Raphael Poggi wrote:
> This patch series add support for 8k page NAND. This is done by
> increasing chip_delay (20us to 40us) and enable PMECC for 8k nand.
> A patch also fix bit error correction when using 1024 sector size with pm=
ecc.
> =

> Rapha=EBl Poggi (3):
>         [PATCH 1/3] mtd: atmel_nand: increase chip_delay
>         [PATCH 2/3] mtd: atmel_nand: fix bit error correction
>         [PATCH 3/3] mtd: atmel_nand: enable PMECC for 8k page nand

Applied, thanks

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
