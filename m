Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e1crj-0004KU-HZ
 for barebox@lists.infradead.org; Mon, 09 Oct 2017 18:33:25 +0000
Date: Mon, 9 Oct 2017 20:33:00 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20171009183300.nhxdwftmpfwajmky@pengutronix.de>
References: <20171009093616.12686-1-u.kleine-koenig@pengutronix.de>
 <20171009093616.12686-2-u.kleine-koenig@pengutronix.de>
 <CAHQ1cqF8gPKEzW_SR_NQv0ZPnL+KWfTi-pEQE7PvVvu2VpEgYg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqF8gPKEzW_SR_NQv0ZPnL+KWfTi-pEQE7PvVvu2VpEgYg@mail.gmail.com>
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
Subject: Re: [PATCH 1/3] e1000: implement register mapping for
 E1000_{EERD,FLSW{CTL,DATA,CNT}}
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Oct 09, 2017 at 11:22:34AM -0700, Andrey Smirnov wrote:
> On Mon, Oct 9, 2017 at 2:36 AM, Uwe Kleine-K=F6nig
> <u.kleine-koenig@pengutronix.de> wrote:
> > Fixes: 4ff3269a70b5 ("e1000: Expose i210's external flash as MTD")
> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > ---
> >  drivers/net/e1000/e1000.h |  9 +++++----
> >  drivers/net/e1000/regio.c | 12 ++++++++++++
> >  2 files changed, 17 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
> > index e6b493c84cc1..2a29ef47e818 100644
> > --- a/drivers/net/e1000/e1000.h
> > +++ b/drivers/net/e1000/e1000.h
> > @@ -410,7 +410,8 @@ struct e1000_tx_desc {
> >  #define E1000_CTRL     0x00000 /* Device Control - RW */
> >  #define E1000_STATUS   0x00008 /* Device Status - RO */
> >  #define E1000_EECD     0x00010 /* EEPROM/Flash Control - RW */
> > -#define E1000_EERD     0x00014 /* EEPROM Read - RW */
> > +#define E1000_EERD     (E1000_MIGHT_BE_REMAPPED | 0x00014)     /* EEPR=
OM Read - RW */
> > +#define E1000_I210_EERD     0x12014    /* EEPROM Read - RW */
> >  #define E1000_CTRL_EXT 0x00018 /* Extended Device Control - RW */
> >  #define E1000_MDIC     0x00020 /* MDI Control - RW */
> >  #define E1000_FCAL     0x00028 /* Flow Control Address Low - RW */
> > @@ -447,11 +448,11 @@ struct e1000_tx_desc {
> >  #define E1000_FLASHT   0x01028  /* FLASH Timer Register */
> >  #define E1000_EEWR     (E1000_MIGHT_BE_REMAPPED | 0x0102C)  /* EEPROM =
Write Register - RW */
> >  #define E1000_I210_EEWR     0x12018  /* EEPROM Write Register - RW */
> > -#define E1000_FLSWCTL  0x01030  /* FLASH control register */
> > +#define E1000_FLSWCTL  (E1000_MIGHT_BE_REMAPPED | 0x01030)  /* FLASH c=
ontrol register */
> >  #define E1000_I210_FLSWCTL 0x12048  /* FLASH control register */
> > -#define E1000_FLSWDATA 0x01034  /* FLASH data register */
> > +#define E1000_FLSWDATA (E1000_MIGHT_BE_REMAPPED | 0x01034)  /* FLASH d=
ata register */
> >  #define E1000_I210_FLSWDATA 0x1204C  /* FLASH data register */
> > -#define E1000_FLSWCNT  0x01038  /* FLASH Access Counter */
> > +#define E1000_FLSWCNT  (E1000_MIGHT_BE_REMAPPED | 0x01038)  /* FLASH A=
ccess Counter */
> >  #define E1000_I210_FLSWCNT  0x12050  /* FLASH Access Counter */
> >  #define E1000_FLOP     0x0103C  /* FLASH Opcode Register */
> >  #define E1000_ERT      0x02008  /* Early Rx Threshold - RW */
> > diff --git a/drivers/net/e1000/regio.c b/drivers/net/e1000/regio.c
> > index 1610d5851f05..9ef325fb8581 100644
> > --- a/drivers/net/e1000/regio.c
> > +++ b/drivers/net/e1000/regio.c
> > @@ -7,6 +7,9 @@ static uint32_t e1000_true_offset(struct e1000_hw *hw, =
uint32_t reg)
> >         if (reg & E1000_MIGHT_BE_REMAPPED) {
> >                 if (hw->mac_type =3D=3D e1000_igb) {
> >                         switch (reg) {
> > +                       case E1000_EERD:
> > +                               reg =3D E1000_I210_EERD;
> > +                               break;
> =

> Rev. 2.8 lists 0x00014 as alias for 0x12014 (that's why I didn't do
> any "re-mapping" here) is it not true?

I have 3.1 and didn't see the alias, but indeed it's there. So this hunk
can be dropped. Will send a v2.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
