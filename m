Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XRGeK-0003LH-A7
 for barebox@lists.infradead.org; Tue, 09 Sep 2014 08:19:40 +0000
Date: Tue, 9 Sep 2014 10:19:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140909081917.GQ5352@pengutronix.de>
References: <1410182622-22876-1-git-send-email-s.hauer@pengutronix.de>
 <CACqcpZDxaimhw1zrc+6WDcPhipfqp0SRv2sBFor7a2wWzat+Ow@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACqcpZDxaimhw1zrc+6WDcPhipfqp0SRv2sBFor7a2wWzat+Ow@mail.gmail.com>
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
Subject: Re: AT91 pinctrl/gpio fixes
To: =?iso-8859-15?Q?Rapha=EBl?= Poggi <raphio98@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 08, 2014 at 03:36:16PM +0200, Rapha=EBl Poggi wrote:
> Hello, I just send patchs, to fix all this issues.

Not really all, there are still some compile errors in a board you
don't compile test. As a result I applied a mixture of our patches
to master:

5a5ba5a ARM: AT91: Make gpio mux functions inline
a918dbf ARM: AT91: Add missing include
5dc6c89 pinctrl: at91: retrieve device id in non dtb probe
9c885a2 pinctrl: at91: fix the pin_to_controller function
9732308 pinctrl: at91: add driver data

It now builds fine. Could you do some runtime tests to see if it
also works?

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
