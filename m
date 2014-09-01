Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XOOFJ-0003qr-3Q
 for barebox@lists.infradead.org; Mon, 01 Sep 2014 09:49:57 +0000
Date: Mon, 1 Sep 2014 11:49:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140901094928.GP5352@pengutronix.de>
References: <1407230089-26948-1-git-send-email-poggi.raph@gmail.com>
 <1407230089-26948-2-git-send-email-poggi.raph@gmail.com>
 <20140806040853.GH19147@ns203013.ovh.net>
 <CACqcpZAt3xSpLnkYTfmNF+2ShENCATd1_VP1m=jq3CXGOnS1QA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACqcpZAt3xSpLnkYTfmNF+2ShENCATd1_VP1m=jq3CXGOnS1QA@mail.gmail.com>
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
Subject: Re: [PATCH 1/5] mtd: nand: remove NAND_ATMEL_PMECC
To: =?iso-8859-15?Q?Rapha=EBl?= Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Aug 06, 2014 at 09:21:52AM +0200, Rapha=EBl Poggi wrote:
> Ok, I did it because we need a structure member to retrieve
> "atmel,has-pmecc" from device tree.
> =

> Is this ok if I add the has_pmecc member (feed by atmel_nand_of_init),
> let the NAND_ATMEL_PMECC, and the if will be like :
> =

> if (IS_ENABLED(CONFIG_NAND_ATMEL_PMECC) || pdata->has_pmecc)

Shouldn't this be && instead of ||?

Otherwise this approach should be fine.

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
