Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1klG0x-0003cc-Tx
 for barebox@lists.infradead.org; Fri, 04 Dec 2020 18:41:09 +0000
Message-ID: <e3ba28ab89980afdf1b330b9a71746d43bd4fce3.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Fri, 04 Dec 2020 19:41:03 +0100
In-Reply-To: <CAOMZO5B8a+27UfmTP=RvyZYD34fnteMrSXAsvsDZ6bhJwCoUtw@mail.gmail.com>
References: <CAOMZO5B8a+27UfmTP=RvyZYD34fnteMrSXAsvsDZ6bhJwCoUtw@mail.gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Running reset stress test
To: Fabio Estevam <festevam@gmail.com>, Barebox List <barebox@lists.infradead.org>

On Fri, 2020-12-04 at 15:05 -0300, Fabio Estevam wrote:
> Hi,
> 
> This is probably an easy one :-)

Kind of :-)

> I would like to run reset stress test in Barebox
> 
> In U-Boot, I do the following:
> 
> => setenv bootcmd reset
> => saveenv
> => reset

$ edit /env/boot/reset
#!/bin/sh
reset
$ nv boot.default=reset
$ nv autoboot.timeout=0
$ saveenv
$ boot

Note that barebox can still be interrupted by holding Ctrl+c and
aborting the init sequence, which will not autoboot the board.

At least the above lets the nitrogen6x on my desk happily cycle the
bootloader.

Regards,
Rouven Czerwinski


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
