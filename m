Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cmGbz-00058g-LS
 for barebox@lists.infradead.org; Fri, 10 Mar 2017 09:13:26 +0000
Date: Fri, 10 Mar 2017 10:13:02 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20170310091302.fyphi6zwdc3knuhh@pengutronix.de>
References: <20170309211808.w6jazqlbrlfigl2r@pengutronix.de>
 <CAHQ1cqFq7+k1KajoqNXAQUzNmp_S19wMyVAHWA5ZOzVgTkzPVg@mail.gmail.com>
 <20170310091027.ruy5xtzeyej65m6h@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170310091027.ruy5xtzeyej65m6h@pengutronix.de>
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
Subject: Re: e1000 driver hangs during probe
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org, lst@pengutronix.de

Hello again,

On Fri, Mar 10, 2017 at 10:10:27AM +0100, Uwe Kleine-K=F6nig wrote:
> With these patches applied the problem is gone and I see:
> =

> 	e1000 pci-8086:1531.0: Unprogrammed Flash detected, limiting access to f=
irst 4KB
> 	0: EEPROM checksum is incorrect!
> 	0:   ...register was 0x0000, calculated 0xbaba
> 	e1000 pci-8086:1531.0: probe failed: Invalid argument
> =

> and I have
> =

> 	/ ls -l /dev/e1000-nor0 =

> 	crw-------           4096 /dev/e1000-nor0
> =

> Thanks for your valuable hint.

I was too quick. The situation is better now, but not good yet:

	/ md -s /dev/e1000-nor0
	pci-8086:1531.0: Timeout waiting for FLSWCTL.DONE to be set
	read: Connection timed out

:-(

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
