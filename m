Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([212.27.42.2])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wddar-0007by-J6
 for barebox@lists.infradead.org; Fri, 25 Apr 2014 10:42:58 +0000
Date: Fri, 25 Apr 2014 12:42:32 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20140425124232.251b9d2f@e6520eb>
In-Reply-To: <1398415943.4657.2.camel@weser.hi.pengutronix.de>
References: <1398370627-27786-1-git-send-email-dev@lynxeye.de>
 <20140425091603.3ba7af82@e6520eb>
 <1398415943.4657.2.camel@weser.hi.pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH] RiOTboard: add new board
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

Le Fri, 25 Apr 2014 10:52:23 +0200,
Lucas Stach <l.stach@pengutronix.de> a =E9crit :

> =

> Am Freitag, den 25.04.2014, 09:16 +0200 schrieb Eric B=E9nard:
> > Hi Lucas,
> > =

> > Le Thu, 24 Apr 2014 22:17:07 +0200,
> > Lucas Stach <dev@lynxeye.de> a =E9crit :
> > =

> > > =

> > > From: Eric B=E9nard <eric@eukrea.com>
> > > =

> > > this board is produced by Embest/Element 14 and is based on i.MX6 Solo
> > > The following features are tested :
> > > - UART2 (console)
> > > - eMMC
> > > - SDCard
> > > - uSDCard
> > > - Ethernet
> > > - USB Host (through 4 ports hub)
> > > - I2C 1/2/3
> > > - 2 LEDs
> > > =

> > > Boot on eMMC and through USB loader are tested.
> > > =

> > > For more informations on this board : http://www.riotboard.org/
> > > =

> > FWIW, we are working on a common dts for Riot & Mars boards.
> > So if you apply this one, I'll submit this change in the coming
> > weeks (common dtsi and 2 x dts).
> > =

> Yes, I think this is definitely the way to go.
> =

> But in the meantime I think it makes sense to apply this patch as is,
> because even without the Marsboard support and the common dtsi this adds
> fully working support for the Riotboard, so I would like to see this
> going into barebox-next now.
> =

Acked-by: Eric B=E9nard <eric@eukrea.com>

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
