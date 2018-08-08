Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fnJHG-0000f1-27
 for barebox@lists.infradead.org; Wed, 08 Aug 2018 07:53:07 +0000
Date: Wed, 8 Aug 2018 09:52:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180808075253.pmj2hivb6xzm24kn@pengutronix.de>
References: <479189478.116665.1533036012752@mail.vodafone.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <479189478.116665.1533036012752@mail.vodafone.de>
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
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Cc: barebox@lists.infradead.org

On Tue, Jul 31, 2018 at 01:20:12PM +0200, Giorgio Dal Molin wrote:
> Hi all,
> 
> I'm trying to find out the best method to define the root=
> parameter when booting the linux kernel from barebox.
> 
> My system boots from an sd card partitioned with a GPT.
> The sd card has two independent set of partitions with
> the following labels:
> 
> 1)   boot_1 + rootfs_1
> 2)   boot_2 + rootfs_2
> 
> for redondance in case one set gets damaged while updating.
> 
> 'boot_1' is formatted with ext4 and contains the kernel + dtb images
> for the userland in 'rootfs_1'; and the same for 'boot_2' and 'rootfs_2'.
> 
> Currently I hardcode the 'root' parameter to '/dev/mmcblk0p3' or
> '/dev/mmcblk0p4' corresponding to the kernel in 'boot_1' or
> 'boot_2' and it actually works but is there a better way to do
> this ?

You could use bootloader spec. That would at least allow you to store a
suitable root= parameter in the config files in the boot_1 and boot_2
partitions.

Not sure if that's what you are looking for though.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
