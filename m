Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1anNUH-0000Fz-DF
 for barebox@lists.infradead.org; Tue, 05 Apr 2016 09:41:30 +0000
Date: Tue, 5 Apr 2016 11:40:51 +0200 (CEST)
From: Rolf Evers-Fischer <embedded24@evers-fischer.de>
Message-ID: <alpine.DEB.2.10.1604051131350.3483@9VTHT2J-D520>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-222724734-1459849258=:3483"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Scrolling issues in edit command
In-Reply-To: <20160405090511.GC10108@pengutronix.de>
To: guille.rodriguez@gmail.com, u.kleine-koenig@pengutronix.de
Cc: barebox@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-222724734-1459849258=:3483
Content-Type: TEXT/PLAIN; charset=ISO-8859-15
Content-Transfer-Encoding: QUOTED-PRINTABLE

Uwe Kleine-K=F6nig <u.kleine-koenig@...> writes:

>=20
> Hello,
>=20
> On Tue, Apr 05, 2016 at 10:40:48AM +0200, Guillermo Rodriguez Garcia=20
wrote:
> > I am wondering: If I am correct, serial in/out in barebox is not
> > interrupt-driven. Plus, the default UART in the sama5d3_xplained board
>=20
> right
>=20
> > that I am using (DBGU) has no FIFOs. Plus, "edit" does a lot of
> > repaint work while editing. Could it be the case that received chars
> > are being missed by barebox due to the repainting work in "edit" ?
>=20
> Sounds likely.
>=20

But if the instruction cache is enabled, the SAMA5 should be fast enough,=
=20
even without any interrupt handling for the UART data.

Best regards,
 Rolf
--8323329-222724734-1459849258=:3483
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--8323329-222724734-1459849258=:3483--
