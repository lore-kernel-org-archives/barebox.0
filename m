Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cjgL8-000162-2I
 for barebox@lists.infradead.org; Fri, 03 Mar 2017 06:05:20 +0000
Date: Fri, 3 Mar 2017 07:04:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170303060455.2s5gge5wpf3cjjpe@pengutronix.de>
References: <20170301142641.6596-1-l.stach@pengutronix.de>
 <20170301142641.6596-2-l.stach@pengutronix.de>
 <20170301175538.GC4120@mail.ovh.net>
 <1488451368.2526.1.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1488451368.2526.1.camel@pengutronix.de>
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
Subject: Re: [PATCH 2/3] ARM: correctly identify ARMv6 K/Z
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Mar 02, 2017 at 11:42:48AM +0100, Lucas Stach wrote:
> Am Mittwoch, den 01.03.2017, 18:55 +0100 schrieb Jean-Christophe
> PLAGNIOL-VILLARD:
> > On 15:26 Wed 01 Mar=A0=A0=A0=A0=A0, Lucas Stach wrote:
> > > The ARMv6 K/Z derivatives have a v7 compatible MMU, but all other
> > > parts
> > > (including the cache handling) is still at v6. As we don't make use
> > > of
> > > the more advanced features of the v7 MMU in Barebox, it's okay to
> > > just
> > > override this to properly identify the CPU as ARMv6.
> > =

> > evenif we do not use it now I do not liek the idea to report it as
> > ARMv6
> > =

> > It will be better to report it correctly
> > =

> Weather you like it or not, ARM1176 is ARMv6 with a v7 MMU bolted on,
> so reporting it as ARMv6 is the correct thing to do.

+1

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
