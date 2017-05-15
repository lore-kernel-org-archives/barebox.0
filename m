Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp101.iad3a.emailsrvr.com ([173.203.187.101])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAByv-0001UU-8z
 for barebox@lists.infradead.org; Mon, 15 May 2017 09:07:59 +0000
References: <1134464656.20372.1494835367008@ox.hosteurope.de>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <ec3ade67-5283-064e-ba7e-40eac5f6b62f@mev.co.uk>
Date: Mon, 15 May 2017 10:07:30 +0100
MIME-Version: 1.0
In-Reply-To: <1134464656.20372.1494835367008@ox.hosteurope.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Undetected mtd partitions since v2017.05
To: Norbert Wiedmann <info@n-wiedmann.de>, barebox@lists.infradead.org

On 15/05/17 09:02, Norbert Wiedmann wrote:
> Hi everyone,
>
> with barebox-2017.04.0 everything works fine on my Phytec phyFlex i-mx6 module.
> Since barebox-2017.05.0, I am running into a kernel panic when booting.
> (tested with the provided tar-archive, and with the actual version from git)
>
> This is my command line:
> commandline: maxcpus=4 console=ttymxc3,115200n8  root=ubi0:root ubi.mtd=root-f
> rootfstype=ubifs r
>
> With barebox-2017.05.0, I am missing the output when creating the
> mtd-partitions:
> [    1.231388] nand: device found, Manufacturer ID: 0xec, Chip ID: 0xd3
> [    1.237805] nand: Samsung NAND 1GiB 3,3V 8-bit
> [    1.242274] nand: 1024MiB, SLC, page size: 2048, OOB size: 64
> [    1.263911] gpmi-nand 112000.gpmi-nand: driver registered.
>
> finally, the boot fails due to the missing partitions:
> [    1.883856] UBIFS error (pid 1): ubifs_mount: cannot open "ubi0:root", error
> -19
> [    1.893234] VFS: Cannot open root device "ubi0:root" or unknown-block(0,0):
> error -19
> [    1.903126] Please append a correct "root=" boot option; here are the
> available partitions:
> [    1.913717] 1f00         1048576 mtdblock0  (driver?)
> [    1.920123] b300        15558144 mmcblk0  driver: mmcblk
> [    1.926879]   b301        15554048 mmcblk0p1 00000000-01
> [    1.933610] Kernel panic - not syncing: VFS: Unable to mount root fs on
> unknown-block(0,0)
> [    1.944020] CPU3: stopping

I ran into the same problem.  It is due to barebox fixing up the 
partitions in the device tree to use the "new" format by default before 
booting the kernel, but the new format is incompatible with older Linux 
kernels, such as LTSI-4.1 based kernels.

There is a new global var 'global.of_partition_binding' to control this. 
  It can be set to one of the values "new", "legacy", or "donttouch". 
You probably need to set it to either "legacy" or "donttouch".  (I have 
it set to "donttouch" because the partitions are already correct in my 
Linux device tree, and I'd probably update the kernel and the dtb file 
at the same time in my rootfs.)

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
