Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PBkfk-0000wR-LC
	for barebox@lists.infradead.org; Fri, 29 Oct 2010 08:50:53 +0000
Message-ID: <4CCA8ADF.2020209@pengutronix.de>
Date: Fri, 29 Oct 2010 10:50:39 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <AANLkTimj3WiRQaeP+tQ7-AHy3WcVG0MKpwt5uNfo_cWf@mail.gmail.com>	<AANLkTim9C1gxiGNj3gyso0aqcM_r1qxf0M3dDCWDmMMO@mail.gmail.com>	<AANLkTikBmg33g-Uh=_fEtvkN6n6GZAi71Lc5tFm51yjJ@mail.gmail.com>	<201010291904.16717.marc@cpdesign.com.au>	<AANLkTikYV-vFVU-QF09yC-wzF5nSDmcy1rG0xz2WJLpj@mail.gmail.com>	<20101029083451.GB21232@tarshish>
	<AANLkTim_NDWXcHj7oPuaTMymHKVtMZCnmCKwVkKuLFBJ@mail.gmail.com>
In-Reply-To: <AANLkTim_NDWXcHj7oPuaTMymHKVtMZCnmCKwVkKuLFBJ@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2010487513=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: command bootu to start kernel
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============2010487513==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigE3084F6D75C726352BE76608"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigE3084F6D75C726352BE76608
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 10/29/2010 10:45 AM, Belisko Marek wrote:
> HI Baruch,
>=20
> On Fri, Oct 29, 2010 at 10:34 AM, Baruch Siach <baruch@tkos.co.il> wrot=
e:
>> Hi Belisko,
>>
>> On Fri, Oct 29, 2010 at 10:20:46AM +0200, Belisko Marek wrote:
>>> I have 2.6.32 kernel but early_printk isn't available and I enable
>>> lowlevel debugging but
>>> don't get nothing else on console. Anyway thanks.
>>
>> Try this patch to see the low level console output:
>>
>> commit 5c31454464ed655401c31c68c895b16eafd2bde5
>> Author: Baruch Siach <baruch@tkos.co.il>
>> Date:   Mon Jan 19 10:41:47 2009 +0200
>>
>>    arm, printk: the famous printascii() hack
>>
>> diff --git a/kernel/printk.c b/kernel/printk.c
>> index 5052b54..d685f8a 100644
>> --- a/kernel/printk.c
>> +++ b/kernel/printk.c
>> @@ -685,6 +685,10 @@ asmlinkage int vprintk(const char *fmt, va_list a=
rgs)
>>        /* Emit the output into the temporary buffer */
>>        printed_len +=3D vscnprintf(printk_buf + printed_len,
>>                                  sizeof(printk_buf) - printed_len, fmt=
, args);
>> +       {
>> +               extern void printascii(const char *);
>> +               printascii(printk_buf);
>> +       }
>>
>>
>>        /*
>>
>> --
>>                                                     ~. .~   Tk Open Sy=
stems
>> =3D}------------------------------------------------ooO--U--Ooo-------=
-----{=3D
>>   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -
>>
> Patch works like charm. Output from my kernel startup:
>=20
> <5>Linux version 2.6.32-rc8 (open-nandra@linux) (gcc version 4.3.5
> (Buildroot 2010.08-rc1) ) #14 Fri Oct 29 10:40:20 CEST 2010
> CPU: ARM920T [41129200] revision 0 (ARMv4T), cr=3Dc0007177
> CPU: VIVT data cache, VIVT instruction cache
> Machine: MINI2440
> Memory policy: ECC disabled, Data cache writeback
> <7>On node 0 totalpages: 0
> <1>bootmem alloc of 32768 bytes failed!
> <0>Kernel panic - not syncing: Out of memory

do you have a "MEM=3D32" on your command line?

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigE3084F6D75C726352BE76608
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAkzKiuAACgkQjTAFq1RaXHMBQACfajnY+ET2eOhxn/lkupZCxQdl
kBQAnjY3sgFuicAiUo+gSChNy4kM1cPo
=woe6
-----END PGP SIGNATURE-----

--------------enigE3084F6D75C726352BE76608--


--===============2010487513==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2010487513==--
