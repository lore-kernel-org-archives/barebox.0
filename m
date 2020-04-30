Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU1zv-0004qm-C9
 for barebox@lists.infradead.org; Thu, 30 Apr 2020 05:44:37 +0000
Date: Thu, 30 Apr 2020 07:44:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200430054432.GH5877@pengutronix.de>
References: <20200429112914.5751-1-s.hauer@pengutronix.de>
 <72aafb2f-d612-23b4-f1b3-d42c5b5ce503@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <72aafb2f-d612-23b4-f1b3-d42c5b5ce503@phytec.de>
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
Subject: Re: [PATCH] ARM: Phytec phyCORE i.MX6: delete wrong memory node
To: Stefan =?iso-8859-15?Q?Riedm=FCller?= <s.riedmueller@phytec.de>
Cc: Barebox List <barebox@lists.infradead.org>, Christian Hemp <christian.hemp@gmail.com>

Hi Stefan,

On Wed, Apr 29, 2020 at 02:00:55PM +0200, Stefan Riedm=FCller wrote:
> Hi Sascha,
> =

> On 29.04.20 13:29, Sascha Hauer wrote:
> > The phyCORE i.MX6 has two memory nodes in the device tree. /memory comes
> =

> Here and in the subject line you mention the phyCORE-i.MX 6 but it is
> actually the phyFLEX which you change.

Yes, I mistakenly thought they use the same base device tree. Changed to
phyFLEX.

> =

> Besides that,
> Reviewed-by: Stefan Riedmueller <s.riedmueller@phytec.de>

Thanks

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
