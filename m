Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH2MK-0004vT-Sx
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 09:30:02 +0000
Date: Wed, 25 Mar 2020 10:29:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200325092958.GC27288@pengutronix.de>
References: <20200316110008.2909-1-cleger@kalray.eu>
 <20200316110008.2909-2-cleger@kalray.eu>
 <20200323101246.GQ3335@pengutronix.de>
 <1211869674.11432033.1584958869528.JavaMail.zimbra@kalray.eu>
 <cbeedaec-9e16-d0e1-c4f8-3017b86b7f35@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cbeedaec-9e16-d0e1-c4f8-3017b86b7f35@pengutronix.de>
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
Subject: Re: [PATCH 1/2] of: base: parse all available memory nodes
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: =?iso-8859-15?Q?Cl=E9ment?= Leger <cleger@kalrayinc.com>, Barebox List <barebox@lists.infradead.org>

On Mon, Mar 23, 2020 at 11:31:26AM +0100, Ahmad Fatoum wrote:
> Hi,
> =

> On 3/23/20 11:21 AM, Cl=E9ment Leger wrote:
> >> AFAIK the device_type =3D "memory" property was mandatory in the early
> >> days as well, there shouldn't be any /memory nodes without this
> >> property. Given that, is the add-legacy-node-first still necessary?
> > =

> > Agreed, I did that after speaking with someone on IRC which stated
> > (rightfully), that I should keep the legacy behavior if possible.
> =

> My concern was about HW that passes a device tree to barebox (PowerPC
> possibly?), where it might have worked before and now won't anymore.
> =

> If this is no real concern, it can be removed.

There is no PowerPC hardware supported by barebox that passes a device
tree to barebox. I don't think this is necessary.

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
