Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from lvps83-169-36-49.dedicated.hosteurope.de ([83.169.36.49]
 helo=knowtrek.com)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Umgwi-00007x-Ux
 for barebox@lists.infradead.org; Wed, 12 Jun 2013 09:02:25 +0000
Message-ID: <51B8390B.4090306@knowtrek.com>
Date: Wed, 12 Jun 2013 11:02:03 +0200
From: Adam Furmanczuk <afurmanczuk@knowtrek.com>
MIME-Version: 1.0
References: <51B0B2D6.3030407@knowtrek.com> <51B5C56C.4050801@knowtrek.com>
 <51B6066A.5020801@knowtrek.com> <1370884028.154515180@f150.mail.ru>
 <51B60B95.8020506@knowtrek.com> <20130610172901.GN32299@pengutronix.de>
 <51B8113F.2050207@knowtrek.com> <51B82114.7080004@knowtrek.com>
 <20130612080747.GV32299@pengutronix.de> <51B82FD8.30108@knowtrek.com>
 <20130612084816.GW32299@pengutronix.de>
In-Reply-To: <20130612084816.GW32299@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 12.06.2013 10:48, Sascha Hauer wrote:
> On Wed, Jun 12, 2013 at 10:22:48AM +0200, Adam Furmanczuk wrote:
>> -----BEGIN PGP SIGNED MESSAGE----- Hash: SHA1
>> 
>> On 12.06.2013 10:07, Sascha Hauer wrote:
>>> On Wed, Jun 12, 2013 at 09:19:48AM +0200, Adam Furmanczuk
>>> wrote:
>>>> -----BEGIN PGP SIGNED MESSAGE----- Hash: SHA1
>>>> 
>>>> On 12.06.2013 08:12, Adam Furmanczuk wrote:
>>>>> ********* *POCZATEK CZESCI SZYFROWANEJ / PODPISANEJ*
>>>>> *********
>>> When CONFIG_ARCH_IMX_USBLOADER is enabled in your config you
>>> can do:
>>> 
>>> make scripts/imx/
>>> 
>>> This should build the tool only.
>>> 
>> 
>> In the current 699-bcc9 branch i run:
>> 
>> make ARCH=arm freescale_mx53_loco_defconfig
>> 
>> than i edit the .config by hand and set
>> CONFIG_ARCH_IMX_USBLOADER=y when running: make scripts/imx
>> 
>> it tells me no goals. nothing to do.
>> 
>> I run gcc on your script file directly, but the libush.h is
>> misssing I should get it from the MX53 loco project?
> 
> You need this from the host. On debian for example the packet is
> named libusb-1.0-0-dev.
> 

OK, I compiled with gcc imx-usb-loader.c -I/usr/include/libusb-1.0/
And had some "undefined reference" errors [1]. Probably have to adjust
some path when running in barebox/scripts/imx/ directory?

I use also debian (wheezy) as host. Details about libusb-dev package [2].

Thanks,

Adam

[1] Error Stack:
/tmp/ccdDFWFp.o: In function `find_imx_dev':
imx-usb-loader.c:(.text+0xd7): undefined reference to
`libusb_get_device_descriptor'
/tmp/ccdDFWFp.o: In function `transfer':
imx-usb-loader.c:(.text+0x54f): undefined reference to
`libusb_bulk_transfer'
imx-usb-loader.c:(.text+0x5d8): undefined reference to
`libusb_control_transfer'
imx-usb-loader.c:(.text+0x668): undefined reference to
`libusb_interrupt_transfer'
/tmp/ccdDFWFp.o: In function `main':
imx-usb-loader.c:(.text+0x2a24): undefined reference to `libusb_init'
imx-usb-loader.c:(.text+0x2a50): undefined reference to
`libusb_get_device_list'
imx-usb-loader.c:(.text+0x2afa): undefined reference to `libusb_open'
imx-usb-loader.c:(.text+0x2b6b): undefined reference to
`libusb_free_device_list'
imx-usb-loader.c:(.text+0x2b85): undefined reference to
`libusb_get_configuration'
imx-usb-loader.c:(.text+0x2b9c): undefined reference to
`libusb_kernel_driver_active'
imx-usb-loader.c:(.text+0x2bb7): undefined reference to
`libusb_detach_kernel_driver'
imx-usb-loader.c:(.text+0x2bce): undefined reference to
`libusb_claim_interface'
imx-usb-loader.c:(.text+0x2cf7): undefined reference to `libusb_close'
imx-usb-loader.c:(.text+0x2d03): undefined reference to `libusb_exit'


[2] aptitude show libusb-1.0-0-dev:

Package: libusb-1.0-0-dev
State: installed
Version: 2:1.0.11-1
[...]


-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAlG4OQsACgkQefEEI87R1DfhRQCdH+d0UtjGMZK2dXUNf4j20h0S
ST0An23GV2UhafnesLqZNXJQ7DkZ5yGR
=hxgi
-----END PGP SIGNATURE-----

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
