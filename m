Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fmlRI-0005ej-6b
 for barebox@lists.infradead.org; Mon, 06 Aug 2018 19:45:13 +0000
Date: Mon, 6 Aug 2018 21:44:58 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20180806194458.bdgb3uen4zclomlz@pengutronix.de>
References: <479189478.116665.1533036012752@mail.vodafone.de>
 <20180806181528.c5f7rsa2sclth3ww@pengutronix.de>
 <34f2c034-7f30-de15-93de-54f9a86e93a0@arcor.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <34f2c034-7f30-de15-93de-54f9a86e93a0@arcor.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: root= kernel cmdline parameter
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Cc: barebox@lists.infradead.org

Hello,

On Mon, Aug 06, 2018 at 09:30:30PM +0200, Giorgio Dal Molin wrote:
> On 08/06/2018 08:15 PM, Uwe Kleine-K=F6nig wrote:
> > On Tue, Jul 31, 2018 at 01:20:12PM +0200, Giorgio Dal Molin wrote:
> >> Hi all,
> >>
> >> I'm trying to find out the best method to define the root=3D
> >> parameter when booting the linux kernel from barebox.
> >>
> >> My system boots from an sd card partitioned with a GPT.
> >> The sd card has two independent set of partitions with
> >> the following labels:
> >>
> >> 1)   boot_1 + rootfs_1
> >> 2)   boot_2 + rootfs_2
> >>
> >> for redondance in case one set gets damaged while updating.
> >>
> >> 'boot_1' is formatted with ext4 and contains the kernel + dtb images
> >> for the userland in 'rootfs_1'; and the same for 'boot_2' and 'rootfs_=
2'.
> >>
> >> Currently I hardcode the 'root' parameter to '/dev/mmcblk0p3' or
> >> '/dev/mmcblk0p4' corresponding to the kernel in 'boot_1' or
> >> 'boot_2' and it actually works but is there a better way to do
> >> this ?
> >>
> >> Using the global var. 'bootm.appendroot' does not work because the
> >> userland image is not in the same partition as the kernel.
> > =

> > What is the blocker to put kernel and dtb in rootfs_X?
> =

> I would like to keep kernel and userland separate to be flexible about
> how to pack the userland. The kernel supports more filesystems as the
> bootloader so I prefer to keep kernel+dtb in a small ext? partition and
> the rest in a separate part.

Is this a theoretical flexibility? i.e. do you use something for
rootfs_X that isn't supported in barebox? If no: You're making your life
unnecessary hard. If yes: why not teach barebox about it?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
