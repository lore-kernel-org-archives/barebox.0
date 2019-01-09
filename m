Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gh8Bw-0008Jt-Cs
 for barebox@lists.infradead.org; Wed, 09 Jan 2019 07:22:21 +0000
Date: Wed, 9 Jan 2019 08:22:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190109072217.2n2h5pym66gokl5v@pengutronix.de>
References: <afd44571-b69b-41cc-bf15-9eff29f89a72.95bf7d06-047e-438c-8c7b-895af195351a.c64368fe-8a97-44b6-81ce-d981799f53c2@emailsignatures365.codetwo.com>
 <1546958133-6556-1-git-send-email-thomas.haemmerle@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1546958133-6556-1-git-send-email-thomas.haemmerle@wolfvision.net>
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
Subject: Re: [PATCH 1/6] dp83867: port from linux
To: Thomas =?iso-8859-15?Q?H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Jan 08, 2019 at 02:35:45PM +0000, Thomas H=E4mmerle wrote:
> Port driver for TI DP83867 Gigabit Ethernet PHY from linux.
> =

> Signed-off-by: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
> ---
>  drivers/net/phy/Kconfig   |   5 +
>  drivers/net/phy/Makefile  |   1 +
>  drivers/net/phy/dp83867.c | 323 ++++++++++++++++++++++++++++++++++++++++=
++++++
>  3 files changed, 329 insertions(+)
>  create mode 100644 drivers/net/phy/dp83867.c

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
