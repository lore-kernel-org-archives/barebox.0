Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo1.mail-out.ovh.net ([178.33.45.107]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UdK9l-0004yv-C3
 for barebox@lists.infradead.org; Fri, 17 May 2013 12:53:10 +0000
Received: from mail189.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id E5830FF94E2
 for <barebox@lists.infradead.org>; Fri, 17 May 2013 14:52:46 +0200 (CEST)
Date: Fri, 17 May 2013 14:48:30 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130517124830.GK19265@game.jcrosoft.org>
References: <1368603809-5476-1-git-send-email-eric@eukrea.com>
 <20130517054349.GQ32299@pengutronix.de>
 <F6661D01-12A7-4ED2-A277-CF829AE802CD@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <F6661D01-12A7-4ED2-A277-CF829AE802CD@jcrosoft.com>
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
Subject: Re: [PATCH v2] nand_base: sync flash detection functions with
 linux 3.9's code
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 19:15 Fri 17 May     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> =

> 	can we have stable release as this patch fix the band support as it's br=
oken since
> 	4c2bdc8728016b3412523e3264651651fe752860

	If check corretly the v2013.05.0 have the non-ONFI support broken
> =

> Best Regards,
> J.
> On May 17, 2013, at 1:43 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> =

> > On Wed, May 15, 2013 at 09:43:29AM +0200, Eric B=E9nard wrote:
> >> this fix the problems introduced when detecting non ONFI flashes in
> >> commit 4c2bdc8728016b3412523e3264651651fe752860
> >> "nand_base: detect more ONFI flash"
> >> =

> >> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> > =

> > Applied, thanks
> > =

> > Sascha
> > =

> > -- =

> > Pengutronix e.K.                           |                           =
  |
> > Industrial Linux Solutions                 | http://www.pengutronix.de/=
  |
> > Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0  =
  |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-555=
5 |
> > =

> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> =


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
