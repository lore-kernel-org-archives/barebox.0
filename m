Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from top.free-electrons.com ([176.31.233.9]
 helo=mail.free-electrons.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XCF7b-0005Xc-0p
 for barebox@lists.infradead.org; Tue, 29 Jul 2014 21:39:47 +0000
Date: Tue, 29 Jul 2014 18:37:34 -0300
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Message-ID: <20140729213734.GA27654@arch.cereza>
References: <1406666701-15356-1-git-send-email-ezequiel.garcia@free-electrons.com>
 <1406666701-15356-5-git-send-email-ezequiel.garcia@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406666701-15356-5-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: Re: [PATCH 4/6] net: phy: Support Marvell 88EE1545 PHY
To: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Willy Tarreau <w@1wt.eu>, Jason Cooper <jason@lakedaemon.net>

On 29 Jul 05:44 PM, Ezequiel Garcia wrote:
> This commit adds support for Marvell's 88E1545 PHY chip. In particular, t=
his
> allows to support QSGMII interfaces.
> =

> Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
> ---
>  drivers/net/phy/marvell.c | 59 +++++++++++++++++++++++++++++++++++++++++=
++++++
>  1 file changed, 59 insertions(+)
> =

> diff --git a/drivers/net/phy/marvell.c b/drivers/net/phy/marvell.c
> index 34f852e..ad8854d 100644
> --- a/drivers/net/phy/marvell.c
> +++ b/drivers/net/phy/marvell.c
> @@ -23,6 +23,7 @@
>  #define MARVELL_PHY_ID_88E1318S		0x01410e90
>  #define MARVELL_PHY_ID_88E1116R		0x01410e40
>  #define MARVELL_PHY_ID_88E1510		0x01410dd0
> +#define MARVELL_PHY_ID_88E154x		0x01410eb1
>  =

>  /* Mask used for ID comparisons */
>  #define MARVELL_PHY_ID_MASK		0xfffffff0

Small erratum: given this mask, the ID for the new PHY device should be
0x0x01410eb0 instead of 0x01410eb1.

And by the way, Mirabox and Openblocks AX3 network support is not working.
The link is not detected, so it seems there's some more PHY work to be done.
-- =

Ezequiel Garc=EDa, Free Electrons
Embedded Linux, Kernel and Android Engineering
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
