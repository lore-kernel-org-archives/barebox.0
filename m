Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cWqTq-0004bB-Uv
 for barebox@lists.infradead.org; Thu, 26 Jan 2017 20:17:17 +0000
Date: Thu, 26 Jan 2017 21:14:39 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20170126201439.jmep3cybbl33s342@pengutronix.de>
References: <CACmkAZGnw=pCsaRQ9RRa2kBoUEDbEHzV6QJpii6Q+e25VrW02Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACmkAZGnw=pCsaRQ9RRa2kBoUEDbEHzV6QJpii6Q+e25VrW02Q@mail.gmail.com>
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
Subject: Re: How to renew eth0 settings without doing a reset
To: Haris Papadopoulos <haris@amberbox.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 25, 2017 at 02:53:54PM +0000, Haris Papadopoulos wrote:
> Hi,
> =

> I am trying to configure a static ip address for my barebox.
> =

> I edit the file /env/network/eth0 and then I do saveenv.
> =

> Then I do ifup eth0. There is no ifdown command in barebox.
> =

> I noticed that the only way to make the new ip address effective is to
> reset the board. However, I will be doing this process with a script
> or maybe remotely.
> =

> Therefore, I would like to make the new address effective without a
> reset. How is that possible?

eth0.ipaddress=3D1.2.3.4

should work

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
