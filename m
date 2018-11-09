Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gL2f0-0003wv-Qy
 for barebox@lists.infradead.org; Fri, 09 Nov 2018 09:01:09 +0000
Date: Fri, 9 Nov 2018 10:00:50 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20181109090050.jbxk7ymp4mcjytfi@pengutronix.de>
References: <20181001091907.4475-1-u.kleine-koenig@pengutronix.de>
 <20181002065543.zfhoi3wfhfmlgcet@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181002065543.zfhoi3wfhfmlgcet@pengutronix.de>
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
Subject: Re: [PATCH] e1000/flash: Increased erase timeout
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Michael Schuhmacher <m.schuhmacher@eckelmann.de>

Hallo Sascha,

On Tue, Oct 02, 2018 at 08:55:43AM +0200, Sascha Hauer wrote:
> On Mon, Oct 01, 2018 at 11:19:07AM +0200, Uwe Kleine-K=F6nig wrote:
> > From: Michael Schuhmacher <m.schuhmacher@eckelmann.de>
> > =

> > Serial flash Adesto AT25DF321A specifies the maximal chip erase time as
> > 40 seconds. Extend timeout accordingly.
> > =

> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > ---
> >  drivers/net/e1000/eeprom.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> Applied, thanks

The last patch in next touching drivers/net/e1000/eeprom.c was applied
in July and I cannot find this patch there. What am I missing?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
