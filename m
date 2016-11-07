Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c3egc-0007E6-JP
 for barebox@lists.infradead.org; Mon, 07 Nov 2016 07:49:48 +0000
Date: Mon, 7 Nov 2016 08:49:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161107074924.blkryleb2eb5bkhy@pengutronix.de>
References: <CAOTEMUR=FtB_Ox++XPvomyHXsk5Jcm7CG7aEM6WmN++t0211Aw@mail.gmail.com>
 <CAOTEMUQt95XDorid8sj9FHkpCpUJYnqNeRbBU+33aLYz2oM+gw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOTEMUQt95XDorid8sj9FHkpCpUJYnqNeRbBU+33aLYz2oM+gw@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Fwd: boot kernel with append device tree
To: Alex Vazquez <avazquez.dev@gmail.com>
Cc: barebox@lists.infradead.org

Hi Alex,

Added the list to Cc

Please configure your mailer to send plain text, then the server won't
reject your mails.

On Fri, Nov 04, 2016 at 01:10:30PM +0100, Alex Vazquez wrote:
>    Hi, all!
>    I have create a zImage with the device tree appended.=A0
>    I have removed oftree_loc in the configuration file.
>    My problem is when I try to launch the kernel, it indicates that it has
>    the device tree added but fails to boot.
> =

>      barebox:/# boot
>      booting kernel from /dev/[1]nand0.kernel.bb
>      Loading ARM Linux zImage '/dev/[2]nand0.kernel.bb'
>      zImage: concatenated oftree detected
>      commandline: console=3DttyS0,115200 rw ip=3Dnone ...
>      arch_number: 0
> =

>    If I don't removed oftree_loc in the configuration file. Load oftree
>    (nand) and boot fine.
> =

>      barebox:/# boot
>      booting kernel from /dev/[3]nand0.kernel.bb
>      Loading ARM Linux zImage '/dev/[4]nand0.kernel.bb'
>      zImage: concatenated oftree detected
>      Loading devicetree from '/dev/[5]nand0.oftree.bb'
>      commandline: console=3DttyS0,115200 rw ip=3Dnone ...
>      Booting Linux on physical CPU 0x0
> =

>    Do I have to configure something more in Barebox?

Which version are you using. Is it something older?

>    Thanks!
>    Regards!
>    P.D
>    I have enabled CONFIG_ARM_APPENDED_DTB=A0and I create the new zimage w=
ith
>    (cat zImage <filename>.dtb > zImage_w_dtb )
>    P.D.2.
>    I have a little problem and i can't send email to list.
> =

>      =A0Delivery to the following recipient failed permanently:
>      =A0 =A0 =A0[6]barebox@lists.infradead.org
>      Technical details of permanent failure:
>      Google tried to deliver your message, but it was rejected by the ser=
ver
>      for the recipient domain [7]lists.infradead.org by
>      [8]bombadil.infradead.org. [2001:1868:205::9].
>      The error that the other server returned was:
>      550-Mailing lists do not accept HTML mail. See
       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
