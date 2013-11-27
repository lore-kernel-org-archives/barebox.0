Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vlm8E-0001lO-Qi
 for barebox@lists.infradead.org; Wed, 27 Nov 2013 20:54:48 +0000
Date: Wed, 27 Nov 2013 21:54:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131127205422.GY24559@pengutronix.de>
References: <EAF1F21DA385DA4797F21C5DCAEF6BAC467D346735@AUTOSERVER1.auto.local>
 <20131127130236.GX24559@pengutronix.de>
 <EAF1F21DA385DA4797F21C5DCAEF6BAC467D34677B@AUTOSERVER1.auto.local>
 <20131127211531.49e08d7f@e6520eb>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131127211531.49e08d7f@e6520eb>
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
Subject: Re: Barebox on Karo TX25
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Nov 27, 2013 at 09:15:31PM +0100, Eric B=E9nard wrote:
> Hi John,
> =

> Le Wed, 27 Nov 2013 19:45:09 +0000,
> John Parker <John.Parker@lucyautomation.co.uk> a =E9crit :
> =

> > Oh, and just notices that after a few moments barebox hangs, no longer =
responding to input!!
> > =

> > Any ideas?
> > =

> IIRC watchdog is enabled when you are using the serial or USB boot.

In this case it should be possible to enable the watchdog command
and trigger it regularly to keep the board alive. AFAIK the watchdog
can't be disabled completely, right?

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
