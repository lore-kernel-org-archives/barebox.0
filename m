Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RJ22B-0001vB-Hl
	for barebox@lists.infradead.org; Wed, 26 Oct 2011 11:52:42 +0000
Date: Wed, 26 Oct 2011 13:52:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111026115234.GZ23421@pengutronix.de>
References: <4EA7C424.2030901@televic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4EA7C424.2030901@televic.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: No DHCP time out ? (v2010.12.0)
To: Lambrecht =?iso-8859-15?Q?J=FCrgen?= <J.Lambrecht@TELEVIC.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi J=FCrgen,

On Wed, Oct 26, 2011 at 10:26:12AM +0200, Lambrecht J=FCrgen wrote:
> Hello,
> =

> When our DHCP server crashes, Barebox DHCP client tries forever.
> Is there a way to set a time out to let it fall back to a default IP =

> address?

Not currently, no. Our dhcp server does not crash ;)

Patches welcome

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
