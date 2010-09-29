Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qy0-f170.google.com ([209.85.216.170])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P0skM-0000xz-4I
	for barebox@lists.infradead.org; Wed, 29 Sep 2010 09:14:47 +0000
Received: by qyk35 with SMTP id 35so781479qyk.15
	for <barebox@lists.infradead.org>; Wed, 29 Sep 2010 02:14:30 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <201009291108.18378.jbe@pengutronix.de>
References: <AANLkTi=k3qTJtQeuOMoBDJMrrR3DQbF7GunjT10FRDSW@mail.gmail.com>
	<20100929074846.GE23406@pengutronix.de>
	<AANLkTinsWzaMthMo2djN17hWUMG5+4K+Y-H-YZPs-q-H@mail.gmail.com>
	<201009291108.18378.jbe@pengutronix.de>
Date: Wed, 29 Sep 2010 14:44:24 +0530
Message-ID: <AANLkTik6UMB_ovMS4SVBkDYiNOGNVba6rb9Au5zf2M5D@mail.gmail.com>
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

Hi Juergen,

You are right offcourse But this is not the problem. Sorry I forgot to
mention that I used a different Barebox version for the kernel boot
part - one in which I had not defined any nand partitions statically
using devfs_add_partition :).

Thanks
Regards
Gaurav

On Wed, Sep 29, 2010 at 2:38 PM, Juergen Beisert <jbe@pengutronix.de> wrote:
> Just a note:
>
> You configure:
>
>> >> devfs_add_partition("nand0", 0x00000, 0x200000, PARTITION_FIXED,
>> >> "self_raw"); dev_add_bb_dev("self_raw", "self0");
>> >> devfs_add_partition("nand0", 0x200000, 0x200000, PARTITION_FIXED,
>> >> "env_raw"); dev_add_bb_dev("env_raw", "env0");
>
> And then:
>
>> EVB2065> addpart /dev/nand0 4M(barebox)ro,2M(kernel)ro,-(root)
>
> Both must match!
>
> Try instead:
>
> EVB2065> addpart /dev/nand0 256k(barebox)ro,256k(env),2M(kernel)ro,-(root)
>
> jbe
>
> --
> Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| Juergen Beisert =A0 =A0 =A0 =A0 =A0 =A0 |
> Linux Solutions for Science and Industry =A0 =A0 =A0| Phone: +49-8766-939=
 228 =A0 =A0 |
> Vertretung Sued/Muenchen, Germany =A0 =A0 =A0 =A0 =A0 =A0 | Fax: =A0 +49-=
5121-206917-5555 |
> Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 =A0 =A0| http://www.=
pengutronix.de/ =A0|
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
