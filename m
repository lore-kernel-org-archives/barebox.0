Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from lvps83-169-36-49.dedicated.hosteurope.de ([83.169.36.49]
 helo=knowtrek.com)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UmJfP-0005xi-L6
 for barebox@lists.infradead.org; Tue, 11 Jun 2013 08:11:00 +0000
Received: from [192.168.0.10] (37-5-69-114-dynip.superkabel.de [37.5.69.114])
 by knowtrek.com (Postfix) with ESMTPSA id 8B5922EF833B
 for <barebox@lists.infradead.org>; Tue, 11 Jun 2013 10:10:37 +0200 (CEST)
Message-ID: <51B6DB7D.1070208@knowtrek.com>
Date: Tue, 11 Jun 2013 10:10:37 +0200
From: Adam Furmanczuk <afurmanczuk@knowtrek.com>
MIME-Version: 1.0
References: <51B0B2D6.3030407@knowtrek.com> <51B5C56C.4050801@knowtrek.com>
 <51B6066A.5020801@knowtrek.com> <1370884028.154515180@f150.mail.ru>
 <51B60B95.8020506@knowtrek.com> <20130610172901.GN32299@pengutronix.de>
In-Reply-To: <20130610172901.GN32299@pengutronix.de>
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

- -----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 10.06.2013 19:29, Sascha Hauer wrote:
> On Mon, Jun 10, 2013 at 07:23:33PM +0200, Adam Furmanczuk wrote:
>>> -----BEGIN PGP SIGNED MESSAGE----- Hash: SHA1
>>> 
>>> On 10.06.2013 19:07, Alexander Shiyan wrote:
>>>>>>> flashing barebox.bin to /dev/nor0.kernel
>>>>>>>>> 
>>>>>>>>> Unknown command 'tftp' - try 'help'
>>>>> Seems tftp command is not compiled in. Ensure that you
>>>>> have CONFIG_CMD_TFTP in your .config.
>>> 
>>> Thanks Alexander,
>>> 
>>> but my barebox binary is gone :(. Have been a bit careles... I 
>>> would need to flash the binary over my OCD USB controller, but 
>>> do not realy have a clue how to do this. I am waiting for 
>>> support reply for this ICnova iMX536 SODIMM module, they
>>> should give me some steps how to proceed.
> Connect your board via USB to a host. Do you see a device? If yes,
>  enable CONFIG_ARCH_IMX_USBLOADER in a recent barebox. After 
> compiling you will have scripts/imx/imx-usb-loader which you can 
> use to recover via USB.

Hi Sascha,

thanks for the advice. I am tommorrow at work. Will perform that steps
and report back.

Thanks,

Adam
- -----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAlG2214ACgkQefEEI87R1DeQxgCgvJoqZjLVZwfEq90BUqXLmv1Y
1OcAoNPZEn7O1QYVl05081VxI0UzxqFQ
=vf6E
- -----END PGP SIGNATURE-----
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAlG223wACgkQefEEI87R1DfOiQCgwpMHl2gh0vPF5uo9QFCPboRR
zeIAoJUMmLpPjGr93he4NBfJ4dQpC3XP
=zkjp
-----END PGP SIGNATURE-----

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
