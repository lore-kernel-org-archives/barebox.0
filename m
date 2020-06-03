Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgQUq-0007mN-1C
 for barebox@lists.infradead.org; Wed, 03 Jun 2020 10:19:45 +0000
Date: Wed, 3 Jun 2020 12:19:36 +0200
From: Daniel =?iso-8859-1?Q?Gl=F6ckner?= <dg@emlix.com>
Message-ID: <20200603101935.GA5309@homes.emlix.com>
References: <20200602012035.2b476de768013dc5793cdea0@gmail.com>
 <20200602075128.GI11869@pengutronix.de>
 <20200602154858.2159a78191d32e5c0d2dd6af@gmail.com>
 <20200603062336.GO11869@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200603062336.GO11869@pengutronix.de>
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
Subject: Re: [RFC] inkscape 1.0 issue
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 03, 2020 at 08:23:36AM +0200, Sascha Hauer wrote:
> On Tue, Jun 02, 2020 at 03:48:58PM +0300, Antony Pavlov wrote:
> > Can we move all inkscape-related stuff into separate svg2bblogo.sh scri=
pt
> > and just call script from makefile?
> =

> We probably could, but what would be the advantage?

We could fall back to rsvg-convert.

Best regards,

  Daniel

-- =

Dipl.-Math. Daniel Gl=F6ckner, emlix GmbH, http://www.emlix.com
Fon +49 551 30664-0, Fax +49 551 30664-11,
Gothaer Platz 3, 37083 G=F6ttingen, Germany
Sitz der Gesellschaft: G=F6ttingen, Amtsgericht G=F6ttingen HR B 3160
Gesch=E4ftsf=FChrung: Heike Jordan, Dr. Uwe Kracke
Ust-IdNr.: DE 205 198 055

emlix - your embedded linux partner

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
