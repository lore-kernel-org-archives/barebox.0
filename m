Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx011.vodafonemail.xion.oxcs.net ([153.92.174.89])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fnfdv-0004RK-Kv
 for barebox@lists.infradead.org; Thu, 09 Aug 2018 07:46:01 +0000
Date: Thu, 9 Aug 2018 09:45:35 +0200 (CEST)
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <1151130077.2195.1533800735792@mail.vodafone.de>
In-Reply-To: <20180808075253.pmj2hivb6xzm24kn@pengutronix.de>
References: <479189478.116665.1533036012752@mail.vodafone.de>
 <20180808075253.pmj2hivb6xzm24kn@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: root= kernel cmdline parameter
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, u.kleine-koenig@pengutronix.de

Hi,

> On August 8, 2018 at 9:52 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> 
> On Tue, Jul 31, 2018 at 01:20:12PM +0200, Giorgio Dal Molin wrote:
> > Hi all,
> > 
> > I'm trying to find out the best method to define the root=
> > parameter when booting the linux kernel from barebox.
> > 
> > My system boots from an sd card partitioned with a GPT.
> > The sd card has two independent set of partitions with
> > the following labels:
> > 
> > 1)   boot_1 + rootfs_1
> > 2)   boot_2 + rootfs_2
> > 
> > for redondance in case one set gets damaged while updating.
> > 
> > 'boot_1' is formatted with ext4 and contains the kernel + dtb images
> > for the userland in 'rootfs_1'; and the same for 'boot_2' and 'rootfs_2'.
> > 
> > Currently I hardcode the 'root' parameter to '/dev/mmcblk0p3' or
> > '/dev/mmcblk0p4' corresponding to the kernel in 'boot_1' or
> > 'boot_2' and it actually works but is there a better way to do
> > this ?
> 
> You could use bootloader spec. That would at least allow you to store a
> suitable root= parameter in the config files in the boot_1 and boot_2
> partitions.
> 
> Not sure if that's what you are looking for though.
> 
> Sascha
> 

as I already wrote to Uwe Kleine-Koenig I wanted to keep the kernel
image and the dtb in a separate partition because these are the files
the bootloader *must* be able to read to boot the system. Having the
userland in a separate partition lets me choose an image format for it
independently from what barebox supports; as an example I could pack
my userland in a btrfs image. Moreover I can be more selective when
updating the firmware: I can update only the kernel+dtb or only the
userland image.

What I would like to have is an automatic way to set the root= kernel
command line parameter similar to what barebox does with the 'bootm.appendroot'
but a bit more flexible.
Looking at the kernel function name_to_dev_t() in the source init/do_mounts.c,
it accepts also the format 'PARTUUID=00112233-4455-6677-8899-AABBCCDDEEFF':
my idea was to somehow tell barebox 'use the partition with label "rootfs_1"
for the "root" parameter' and barebox should be able to match my label with
the partition UUID and automatically generate the root= value.

giorgio

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
