Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 27.mail-out.ovh.net ([91.121.30.210])
	by bombadil.infradead.org with smtp (Exim 4.69 #1 (Red Hat Linux))
	id 1OHG6X-0000PL-KS
	for barebox@lists.infradead.org; Wed, 26 May 2010 12:53:02 +0000
Message-ID: <4BFD19A9.1090402@eukrea.com>
Date: Wed, 26 May 2010 14:52:57 +0200
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <4BFBBF17.8010504@eukrea.com>
	<AANLkTikN_n1Csdd-2VsLPestpdr0Z1ycSnI2Bpzke3_Z@mail.gmail.com>
In-Reply-To: <AANLkTikN_n1Csdd-2VsLPestpdr0Z1ycSnI2Bpzke3_Z@mail.gmail.com>
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
Subject: Re: barebox tftp to 2k pagesize NAND
To: Ivo Clarysse <ivo.clarysse@gmail.com>
Cc: barebox@lists.infradead.org

Hi Ivo,

Le 26/05/2010 14:25, Ivo Clarysse a =E9crit :
> On Tue, May 25, 2010 at 2:14 PM, Eric B=E9nard<eric@eukrea.com>  wrote:
> [...]
>> while running barebox on a i.MX25 which has 2k pagesize nand, I noticed =
it's
>> not possible to do a tftp directly to NAND (tftp barebox.bin
>> /dev/nand0.barebox for example).
> [...]
>
> Eric,
>
>    Are you able to boot from 2k pagesize NAND ?
>
yes but I'm using internal boot mode.

>    I only have 512byte pagesize NAND, but shouldn't
> nand_imx.c:imx_nand_load_image(..) have something
> like:
>
> #ifdef CONFIG_ARCH_IMX25
>          if (readl(IMX_CCM_BASE + CCM_RCSR)&  (1<<  8))
>                  host.pagesize_2k =3D 1;
>          else
>                  host.pagesize_2k =3D 0;
> #endif
>
yes something like this should be necessary for direct NAND boot.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
