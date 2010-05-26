Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1OHFfW-0005GM-RL
	for barebox@lists.infradead.org; Wed, 26 May 2010 12:25:07 +0000
Received: by wwb22 with SMTP id 22so624086wwb.36
	for <barebox@lists.infradead.org>; Wed, 26 May 2010 05:25:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <4BFBBF17.8010504@eukrea.com>
References: <4BFBBF17.8010504@eukrea.com>
Date: Wed, 26 May 2010 14:25:04 +0200
Message-ID: <AANLkTikN_n1Csdd-2VsLPestpdr0Z1ycSnI2Bpzke3_Z@mail.gmail.com>
From: Ivo Clarysse <ivo.clarysse@gmail.com>
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
Subject: Re: barebox tftp to 2k pagesize NAND
To: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>, barebox@lists.infradead.org

On Tue, May 25, 2010 at 2:14 PM, Eric B=E9nard <eric@eukrea.com> wrote:
[...]
> while running barebox on a i.MX25 which has 2k pagesize nand, I noticed i=
t's
> not possible to do a tftp directly to NAND (tftp barebox.bin
> /dev/nand0.barebox for example).
[...]

Eric,

  Are you able to boot from 2k pagesize NAND ?

  I only have 512byte pagesize NAND, but shouldn't
nand_imx.c:imx_nand_load_image(..) have something
like:

#ifdef CONFIG_ARCH_IMX25
        if (readl(IMX_CCM_BASE + CCM_RCSR) & (1 << 8))
                host.pagesize_2k =3D 1;
        else
                host.pagesize_2k =3D 0;
#endif

(For mainline inclusion, I'd propose to rework that part, to group
i.MX25 with i.MX35, and i.MX21 with i.MX27)

Best regards,

Ivo.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
