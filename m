Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo68.mail-out.ovh.net ([46.105.63.100])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cjo4x-0001Xg-FI
 for barebox@lists.infradead.org; Fri, 03 Mar 2017 14:21:09 +0000
Received: from player698.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id CC16542ED7
 for <barebox@lists.infradead.org>; Fri,  3 Mar 2017 15:20:43 +0100 (CET)
Date: Fri, 3 Mar 2017 15:26:45 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20170303142645.GE4120@mail.ovh.net>
References: <20170301142641.6596-1-l.stach@pengutronix.de>
 <20170301142641.6596-2-l.stach@pengutronix.de>
 <20170301175538.GC4120@mail.ovh.net>
 <1488451368.2526.1.camel@pengutronix.de>
 <20170303060455.2s5gge5wpf3cjjpe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170303060455.2s5gge5wpf3cjjpe@pengutronix.de>
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
Subject: Re: [PATCH 2/3] ARM: correctly identify ARMv6 K/Z
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 07:04 Fri 03 Mar     , Sascha Hauer wrote:
> On Thu, Mar 02, 2017 at 11:42:48AM +0100, Lucas Stach wrote:
> > Am Mittwoch, den 01.03.2017, 18:55 +0100 schrieb Jean-Christophe
> > PLAGNIOL-VILLARD:
> > > On 15:26 Wed 01 Mar=A0=A0=A0=A0=A0, Lucas Stach wrote:
> > > > The ARMv6 K/Z derivatives have a v7 compatible MMU, but all other
> > > > parts
> > > > (including the cache handling) is still at v6. As we don't make use
> > > > of
> > > > the more advanced features of the v7 MMU in Barebox, it's okay to
> > > > just
> > > > override this to properly identify the CPU as ARMv6.
> > > =

> > > evenif we do not use it now I do not liek the idea to report it as
> > > ARMv6
> > > =

> > > It will be better to report it correctly
> > > =

> > Weather you like it or not, ARM1176 is ARMv6 with a v7 MMU bolted on,
> > so reporting it as ARMv6 is the correct thing to do.

except when will want to use them we will have to fix the detection it's
better to do it at assignation to check the arm1176 or v6

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
