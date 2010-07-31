Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OfBIZ-0003s8-16
	for barebox@lists.infradead.org; Sat, 31 Jul 2010 12:36:20 +0000
Message-ID: <4C5418BF.3000301@eukrea.com>
Date: Sat, 31 Jul 2010 14:36:15 +0200
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <4C532D05.7020407@dawes.za.net> <4C540747.7000602@dawes.za.net>
In-Reply-To: <4C540747.7000602@dawes.za.net>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Porting to Marvell 88F5182?
To: Rogan Dawes <rogan@dawes.za.net>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Rogan,

Le 31/07/2010 13:21, Rogan Dawes a =E9crit :
> Since I'd be chainloading barebox from the existing U-Boot, which does
> support loadb and bootm, it probably makes the most sense initially to
> just skip the lowlevel init, and build a minimal ARM second stage, and
> wrap it in a u-boot image, I think.
>
> I tried using the at91sam9263ek_defconfig, and unsetting
> CONFIG_MACH_DO_LOWLEVEL_INIT.

that won't work : you don't have the same memory mapping so barebox has =

little chance to be in ram on your platform and, even if it was in RAM =

as soon as it will poll for the serial port tx empty bit, you will stay =

blocked because your serial port is not the same as the at91sam9263.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
