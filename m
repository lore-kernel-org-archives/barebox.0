Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VZPnt-00027M-8s
 for barebox@lists.infradead.org; Thu, 24 Oct 2013 18:38:41 +0000
Date: Thu, 24 Oct 2013 20:38:19 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20131024183819.GB3512@pengutronix.de>
References: <20131023164800.GD26639@ns203013.ovh.net>
 <20131024073002.GT30088@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131024073002.GT30088@pengutronix.de>
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
Subject: Re: [BUG] phycard a l1 on lowlevel
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Oct 24, 2013 at 09:30:02AM +0200, Sascha Hauer wrote:
> Hi J,
> =

> On Wed, Oct 23, 2013 at 06:48:00PM +0200, Jean-Christophe PLAGNIOL-VILLAR=
D wrote:
> > Hi Sasha,
> > =

> > 	I get this when compiling this board
> > =

> > Building arm phycard_a_l1_defconfig
> > Configure: OK
> > /opt/work/barebox/arch/arm/boards/phycard-a-l1/lowlevel.c: In function =
'barebox_arm_reset_vector':
> > /opt/work/barebox/arch/arm/boards/phycard-a-l1/lowlevel.c:122:3: warnin=
g: array subscript is above array bounds
> =

> I don't see this here. You probably have a different gcc version.
This is from

	sdrc_config[(uchar) cfg]

where cfg is set to -1 a few lines above.

(BTW, the function hint is wrong, this is in pcaal1_sdrc_init().)

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
