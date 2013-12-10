Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VqHhb-0005Dr-P6
 for barebox@lists.infradead.org; Tue, 10 Dec 2013 07:25:57 +0000
Date: Tue, 10 Dec 2013 08:25:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131210072528.GR24559@pengutronix.de>
References: <1386409020-11914-1-git-send-email-eric@eukrea.com>
 <1386409020-11914-5-git-send-email-eric@eukrea.com>
 <20131209133001.GI27628@ns203013.ovh.net>
 <20131209155441.031ab16f@e6520eb>
 <20131209163252.GN27628@ns203013.ovh.net>
 <20131209181549.55c9abc6@e6520eb>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131209181549.55c9abc6@e6520eb>
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
Subject: Re: [PATCH 5/7] atmel_nand: make chip_delay configurable
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Mon, Dec 09, 2013 at 06:15:49PM +0100, Eric B=E9nard wrote:
> Le Mon, 9 Dec 2013 17:32:52 +0100,
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> a =E9crit :
> =

> > On 15:54 Mon 09 Dec     , Eric B??nard wrote:
> > > Le Mon, 9 Dec 2013 14:30:01 +0100,
> > > Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> a =E9crit :
> > > =

> > > > On 10:36 Sat 07 Dec     , Eric B??nard wrote:
> > > > > this is usefull for custom boards with different NAND flashs
> > > > > (for informations u-boot defaults chip_delay to 75)
> > > > drop this comment on u-boot as in barebox we use the kernel driver
> > > =

> > > that's an information which can be usefull for other users on custom
> > > boards. Sorry if you don't like to read the word "u-boot" ;-)
> > =

> > so this part is useless
> > =

> I think it's useful to tell the default value used by the other
> reference bootloader.

I for once have nothing against using the word U-Boot in commit
messages.

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
