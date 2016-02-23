Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x230.google.com ([2a00:1450:4010:c07::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYL8s-0008Va-PL
 for barebox@lists.infradead.org; Tue, 23 Feb 2016 22:09:15 +0000
Received: by mail-lf0-x230.google.com with SMTP id 78so124663190lfy.3
 for <barebox@lists.infradead.org>; Tue, 23 Feb 2016 14:08:54 -0800 (PST)
Date: Wed, 24 Feb 2016 01:34:48 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160224013448.d5d2d0a95dbcf164f1a6ee20@gmail.com>
In-Reply-To: <1455893355-17319-3-git-send-email-yegorslists@googlemail.com>
References: <1455893355-17319-1-git-send-email-yegorslists@googlemail.com>
 <1455893355-17319-3-git-send-email-yegorslists@googlemail.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH v3 3/3] fs: add support for SquashFS 4.0
To: yegorslists@googlemail.com
Cc: barebox@lists.infradead.org

On Fri, 19 Feb 2016 15:49:15 +0100
yegorslists@googlemail.com wrote:

> From: Yegor Yefremov <yegorslists@googlemail.com>
> =

> The driver was imported from Linux 4.4.
> =

> Current implementation supports only XZ decompressor.
> =

> Cc: Antony Pavlov <antonynpavlov@gmail.com>
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>

I have just tested this series on AR9331-based board, so

Tested-by: Antony Pavlov <antonynpavlov@gmail.com>

However there are some issues, see below

> --- /dev/null
> +++ b/Documentation/filesystems/squashfs.rst
> @@ -0,0 +1,15 @@
> +.. index:: squashfs (filesystem)
> +
> +SquashFS filesystem
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +SquashFS is a highly compressed read-only filesystem for Linux.
> +It uses zlib, lzo or xz compression to compress both files, inodes
> +and directories. A SquashFS filesystem can be mounted using the
> +:ref:`command_mount` command::
> +
> +  mkdir /mnt
> +  mount -t squashfs /dev/spiflash.FileSystem /mnt
> +  ls /mnt
> +  zImage barebox.bin
> +  umount /mnt

Please add barebox prompt to this example, e.g.:

barebox:/ mkdir /mnt
barebox:/ mount -t squashfs /dev/spiflash.FileSystem /mnt
barebox:/ ls /mnt
zImage barebox.bin
barebox:/ umount /mnt


I suppose that the 'squashfs squashfs0: squashfs_mount' message is redundan=
t, e.g:

barebox:/ mount -t squashfs /dev/spiflash.linux /mnt/
squashfs squashfs0: squashfs_mount
barebox:/ ls /mnt/
bin        boot       dev        etc        home       init
lib        lib32      linuxrc    media      mnt        opt
proc       root       run        sbin       sys        tmp
usr        var



Also I see a memory leak on mount (By mistake I have tried to mount non-cde=
v squashfs image):

barebox:/ meminfo
used: 2693564
free: 14074728
barebox:/ mount -t squashfs rootfs.20160223.xz-squashfs /mnt/
squashfs squashfs0: probe failed: Invalid argument
mount: Invalid argument
barebox:/ meminfo
used: 2693636
free: 14074644
barebox:/ mount -t squashfs rootfs.20160223.xz-squashfs /mnt/
squashfs squashfs0: probe failed: Invalid argument
mount: Invalid argument
barebox:/ meminfo
used: 2693748
free: 14074524
barebox:/ mount -t squashfs rootfs.20160223.xz-squashfs /mnt/
squashfs squashfs0: probe failed: Invalid argument
mount: Invalid argument
barebox:/ meminfo
used: 2693832
free: 14074428

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
