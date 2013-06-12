Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from lvps83-169-36-49.dedicated.hosteurope.de ([83.169.36.49]
 helo=knowtrek.com)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Umngq-0002Y9-C9
 for barebox@lists.infradead.org; Wed, 12 Jun 2013 16:14:28 +0000
Received: from [192.168.10.59] (p57971897.dip0.t-ipconnect.de [87.151.24.151])
 by knowtrek.com (Postfix) with ESMTPSA id 064FD2EF8435
 for <barebox@lists.infradead.org>; Wed, 12 Jun 2013 18:14:06 +0200 (CEST)
Message-ID: <51B89E4E.6060804@knowtrek.com>
Date: Wed, 12 Jun 2013 18:14:06 +0200
From: Adam Furmanczuk <afurmanczuk@knowtrek.com>
MIME-Version: 1.0
References: <51B6066A.5020801@knowtrek.com> <51B8390B.4090306@knowtrek.com>
 <20130612155401.GX32299@pengutronix.de> <1371052862.194674258@f327.mail.ru>
In-Reply-To: <1371052862.194674258@f327.mail.ru>
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
Subject: Re: how to flash barebox and set root variable? - barebox is gone :(
To: barebox@lists.infradead.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 12.06.2013 18:01, Alexander Shiyan wrote:
>> On Wed, Jun 12, 2013 at 11:02:03AM +0200, Adam Furmanczuk wrote:
>>>>> -----BEGIN PGP SIGNED MESSAGE----- Hash: SHA1
>>>>> 
>>>>> OK, I compiled with gcc imx-usb-loader.c
>>>>> -I/usr/include/libusb-1.0/ And had some "undefined
>>>>> reference" errors [1]. Probably have to adjust some path
>>>>> when running in barebox/scripts/imx/ directory?
>>>>> 
>>>>> I use also debian (wheezy) as host. Details about
>>>>> libusb-dev package [2].
>>>>> 
>>> 
>>> Ok, here is exactly what to do:
>>> 
>>> export ARCH=arm export CROSS_COMPILE=/path/to/arm-linux-gcc- 
>>> make freescale_mx51_babbage_defconfig make menuconfig System
>>> Type  ---> i.MX specific settings  ---> [*] compile
>>> imx-usb-loader make
>>> 
>>> This should compile without errors and the imx-usb-loader tool
>>> should be compiled, provided you have the libusb host tool
>>> installed.
> Probably some usb-related headers on Adam system placed in
> non-standard directories, since tool is not builded or makes some
> errors. Maybe we need to use pkg-config for these stuffs?

Sorry my bad, I forgot to set CROSS_COMPILE flag. I will give it
tomorrow a try and report back.

Greetings,

Adam

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAlG4nk0ACgkQefEEI87R1Dd1CwCdHu2Sb2NafGEul5avfVIeXwk7
DoUAoIft+Ik4uyQggfH095o9t1BsceN0
=eAtJ
-----END PGP SIGNATURE-----

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
