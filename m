Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OfF8U-00053X-DX
	for barebox@lists.infradead.org; Sat, 31 Jul 2010 16:42:11 +0000
Message-ID: <4C54525F.5030306@eukrea.com>
Date: Sat, 31 Jul 2010 18:42:07 +0200
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <4C532D05.7020407@dawes.za.net> <4C540747.7000602@dawes.za.net>
	<4C5418BF.3000301@eukrea.com> <4C543F3A.1040709@dawes.za.net>
	<4C54460D.1050804@eukrea.com> <4C5449CD.8000203@dawes.za.net>
In-Reply-To: <4C5449CD.8000203@dawes.za.net>
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

Le 31/07/2010 18:05, Rogan Dawes a =E9crit :
>>> But won't the second stage loader simply use the existing memory map? I
>>> suppose I could tell it what it actually is, if it can't figure it out.
>>> I'm a little surprised it doesn't "just work", because I am currently
>>> booting using an old U-boot, chaining to a newly compiled U-Boot, and it
>>> "just works" (apart from the flash).
>>>
>> yes but the new u-boot has all the necessary low level access for your
>> hardware !
>
> Well, the new U-Boot also skips the lowlevel init code, so . . .
>
what it skips is "only" sdram and pll setup, not serial drivers or timer =

functions.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
