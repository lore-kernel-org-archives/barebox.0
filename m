Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from lvps83-169-36-49.dedicated.hosteurope.de ([83.169.36.49]
 helo=knowtrek.com)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ukov2-0001TD-2I
 for barebox@lists.infradead.org; Fri, 07 Jun 2013 05:08:57 +0000
Received: from [192.168.0.10] (37-5-69-114-dynip.superkabel.de [37.5.69.114])
 by knowtrek.com (Postfix) with ESMTPSA id 9B2F82EF835B
 for <barebox@lists.infradead.org>; Fri,  7 Jun 2013 07:08:33 +0200 (CEST)
Message-ID: <51B16AD0.4030206@knowtrek.com>
Date: Fri, 07 Jun 2013 07:08:32 +0200
From: Adam Furmanczuk <afurmanczuk@knowtrek.com>
MIME-Version: 1.0
References: <51B0B2D6.3030407@knowtrek.com>
 <20130606162120.GA32299@pengutronix.de>
In-Reply-To: <20130606162120.GA32299@pengutronix.de>
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
Subject: Re: how to flash barebox and set root variable?
To: barebox@lists.infradead.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hi Sascha,

thank you very much for your help.

> What board do you have? Is it one supported by barebox or do you
> have your own patches?

The board is a imx536 based [1]. The expansion board for this is self
made. We connect RX, TX, Ground to a OCD-Adapter [2] and are able to
communicate with barebox.

My Barebox version is: barebox 2012.03.0-00162-g3f84abc-dirty (Sep 24
2012 - 10:51:42) it was already flashed in nor when we recieved the board.


> What to do next depends on the environment you have. Please send
> the output of 'ls -l /env'.

The module is at my work place, I will post back on monday. I also
post you the config file, which at this stage is still diffucilt for
me to read.

> Using a more recent version of barebox probably is a good idea. We 
> gained a lot of interesting features in the last year.

Exactly, I have seen in 'make menuconfig' when building the latest image.

I try to write barebox.bin to my sd-card on host with:

cat barebox.bin > /dev/sdx

and report back to barebox reaction.


Greetings,

Adam


[1] http://www.in-circuit.de/produkte/icnova-sodimm-cpu-module.html
[2]
http://shop.in-circuit.de/products/Home/Programmieradapter/16/ICprog-OpenOCD

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAlGxatAACgkQefEEI87R1DdcrQCfYL5nfs8K4Hsdp6GTuDWHCfXs
khoAoIa0wy08POHDy8SZeLCrhV35iZET
=M7kH
-----END PGP SIGNATURE-----

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
