Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from lvps83-169-36-49.dedicated.hosteurope.de ([83.169.36.49]
 helo=knowtrek.com)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UmfLm-0006JS-QV
 for barebox@lists.infradead.org; Wed, 12 Jun 2013 07:20:11 +0000
Received: from [192.168.10.59] (p57971897.dip0.t-ipconnect.de [87.151.24.151])
 by knowtrek.com (Postfix) with ESMTPSA id 80EE52EF8435
 for <barebox@lists.infradead.org>; Wed, 12 Jun 2013 09:19:48 +0200 (CEST)
Message-ID: <51B82114.7080004@knowtrek.com>
Date: Wed, 12 Jun 2013 09:19:48 +0200
From: Adam Furmanczuk <afurmanczuk@knowtrek.com>
MIME-Version: 1.0
References: <51B0B2D6.3030407@knowtrek.com> <51B5C56C.4050801@knowtrek.com>
 <51B6066A.5020801@knowtrek.com> <1370884028.154515180@f150.mail.ru>
 <51B60B95.8020506@knowtrek.com> <20130610172901.GN32299@pengutronix.de>
 <51B8113F.2050207@knowtrek.com>
In-Reply-To: <51B8113F.2050207@knowtrek.com>
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

On 12.06.2013 08:12, Adam Furmanczuk wrote:
> ********* *POCZATEK CZESCI SZYFROWANEJ / PODPISANEJ* *********
> 
> On 10.06.2013 19:29, Sascha Hauer wrote:
>>> On Mon, Jun 10, 2013 at 07:23:33PM +0200, Adam Furmanczuk
>>> wrote:
>>>>> On 10.06.2013 19:07, Alexander Shiyan wrote:
>>>>>>>>> flashing barebox.bin to /dev/nor0.kernel
>>>>>>>>>>> Unknown command 'tftp' - try 'help'
>>>>>>> Seems tftp command is not compiled in. Ensure that you
>>>>>>> have CONFIG_CMD_TFTP in your .config.
>>>>> Thanks Alexander,
>>>>> 
>>>>> but my barebox binary is gone . Have been a bit careles...
>>>>> I would need to flash the binary over my OCD USB
>>>>> controller, but do not realy have a clue how to do this. I
>>>>> am waiting for support reply for this ICnova iMX536 SODIMM
>>>>> module, they should give me some steps how to proceed.
>>> [...] CONFIG_ARCH_IMX_USBLOADER in a recent barebox. After 
>>> compiling you will have scripts/imx/imx-usb-loader
> Hi Sascha,
> 
> I have included the option: CONFIG_ARCH_IMX_USBLOADER=y then run
> make clean and then make again, but there is no such file, tried to
> search recursively for similar file in barebox top directory with:
> find ./ -iname \*usb-loader\*
> 

My bad, i got the latest git snaphot (699-bcc9) and there is
USBLOADER.. have still some issues with compiling it.
There is "memory bank" error [1]. Have seen there was a patch
recently, but do not know the option to enable/disable


Thanks for Help,

Adam

[1]

barebox-699bcc9/drivers/of/base.c:961: undefined reference to
`of_add_memory_bank'
collect2: error: ld returned 1 exit status


-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAlG4IRQACgkQefEEI87R1DdyrACePOugMudNLfCdfdMlsV80V1G2
kdAAoOgUWRJtp0cUMg8V0Fcj4Aie56eB
=07oc
-----END PGP SIGNATURE-----

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
