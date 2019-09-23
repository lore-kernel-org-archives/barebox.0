Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCIBZ-00039d-AW
 for barebox@lists.infradead.org; Mon, 23 Sep 2019 06:51:04 +0000
Date: Mon, 23 Sep 2019 08:50:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190923065059.s75p6rvk7ufk65mq@pengutronix.de>
References: <20190920124433.31026-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920124433.31026-1-m.tretter@pengutronix.de>
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
Subject: Re: [PATCH] blspec: skip entries that are not blspec entries
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org, Thomas =?iso-8859-15?Q?H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>

On Fri, Sep 20, 2019 at 02:44:33PM +0200, Michael Tretter wrote:
> The list of boot entries can contain items that are not blspec entries.
> For example, the bootchooser also adds an item to this list. Therefore,
> blspec cannot unconditionally interpret entries as blspec entries.
> =

> The error is reproduced by listing the boot entries with the bootchooser
> and a rootfs with blspec entries, e.g.:
> =

> 	boot -l bootchooser /mnt/nfs
> =

> Check if a bootentry is a blspec entry by testing if the boot function
> is blspec_boot.
> =

> Reported-by: Thomas H=E4mmerle <Thomas.Haemmerle@wolfvision.net>
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---

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
