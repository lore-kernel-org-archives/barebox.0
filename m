Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qw0-f49.google.com ([209.85.216.49])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P0taS-0003Kh-Ss
	for barebox@lists.infradead.org; Wed, 29 Sep 2010 10:08:33 +0000
Received: by qwe4 with SMTP id 4so484231qwe.36
	for <barebox@lists.infradead.org>; Wed, 29 Sep 2010 03:08:31 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <AANLkTikaqxk2_HrU_cBfr9Yni6T9LcB8rhO4yVDRw+CG@mail.gmail.com>
References: <AANLkTi=k3qTJtQeuOMoBDJMrrR3DQbF7GunjT10FRDSW@mail.gmail.com>
	<AANLkTinsWzaMthMo2djN17hWUMG5+4K+Y-H-YZPs-q-H@mail.gmail.com>
	<201009291108.18378.jbe@pengutronix.de>
	<201009291123.19306.jbe@pengutronix.de>
	<AANLkTikaqxk2_HrU_cBfr9Yni6T9LcB8rhO4yVDRw+CG@mail.gmail.com>
Date: Wed, 29 Sep 2010 15:38:30 +0530
Message-ID: <AANLkTinMyBPGEp5QFBSPAyZf-qfK37QcsjicR+_pYrPb@mail.gmail.com>
From: Gaurav Singh <gausinghnsit@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Failing to load Barebox Environment
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

By the way - Just to add.. I'm using the Sept 2010 release of Barebox. 2010=
.09.

On Wed, Sep 29, 2010 at 3:33 PM, Gaurav Singh <gausinghnsit@gmail.com> wrot=
e:
> Just a question regarding the host generated environement file.
>
> In common/environment.c - the host specific envfs_save function is setting
>
> size =3D (unsigned long)data.writep;
>
> Now there is no way of ensuring that the size is padded to Page size.
> The script bareboxenv seems not to use the pad parameter to change the
> size parameter of the ENVFS superblock.
> Now I know that we can't issue read commands which are not multiples
> of Page size. But this is exactly what we are doing in envfs_load:
>
> size =3D ENVFS_32(super.size);
> buf =3D xmalloc(size);
> buf_free =3D buf;
> ret =3D read(envfd, buf, size);
>
> I think this explains why my read is failing !
>
> Regards
> Gaurav
>
>
>
>
>
>
> On Wed, Sep 29, 2010 at 2:53 PM, Juergen Beisert <jbe@pengutronix.de> wro=
te:
>> Juergen Beisert wrote:
>>> Just a note:
>>>
>>> You configure:
>>> > >> devfs_add_partition("nand0", 0x00000, 0x200000, PARTITION_FIXED,
>>> > >> "self_raw"); dev_add_bb_dev("self_raw", "self0");
>>> > >> devfs_add_partition("nand0", 0x200000, 0x200000, PARTITION_FIXED,
>>> > >> "env_raw"); dev_add_bb_dev("env_raw", "env0");
>>>
>>> And then:
>>> > EVB2065> addpart /dev/nand0 4M(barebox)ro,2M(kernel)ro,-(root)
>>>
>>> Both must match!
>>>
>>> Try instead:
>>>
>>> EVB2065> addpart /dev/nand0 256k(barebox)ro,256k(env),2M(kernel)ro,-(ro=
ot)
>>>
>>> jbe
>>
>> Ups, sorry: 0x200000 !=3D 256k (didn't count the '0' right...)
>>
>> EVB2065> addpart /dev/nand0 2M(barebox)ro,2M(env),2M(kernel)ro,-(root)
>>
>> jbe
>>
>> --
>> Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0| Juergen Beisert =A0 =A0 =A0 =A0 =A0 =A0 |
>> Linux Solutions for Science and Industry =A0 =A0 =A0| Phone: +49-8766-93=
9 228 =A0 =A0 |
>> Vertretung Sued/Muenchen, Germany =A0 =A0 =A0 =A0 =A0 =A0 | Fax: =A0 +49=
-5121-206917-5555 |
>> Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 =A0 =A0| http://www=
.pengutronix.de/ =A0|
>>
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
