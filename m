Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout02.posteo.de ([185.67.36.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gFz0Q-0008UV-F3
 for barebox@lists.infradead.org; Fri, 26 Oct 2018 10:06:16 +0000
Received: from submission (posteo.de [89.146.220.130]) 
 by mout02.posteo.de (Postfix) with ESMTPS id 570532400FC
 for <barebox@lists.infradead.org>; Fri, 26 Oct 2018 12:06:00 +0200 (CEST)
Date: Fri, 26 Oct 2018 12:05:58 +0200
From: Patrick Boettcher <patrick.boettcher@posteo.de>
Message-ID: <20181026120558.1ef80a86@yaise-pc1>
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
Subject: IMX6UL: Booting kernel with initramfs blocks
To: barebox@lists.infradead.org
Cc: Mikael Pann <Mikael.pann@stimio.fr>

Hi,

we are using a Phytec IMX6UL-module and would like to use a
kernel+initramfs as a rescue/recovery system (when bootchooser bails
out).

We are building the initramfs-zIamge with Yocto using a
customized Phytec-distribution (not many changes). 

What we added to get an initramfs'd kernel is 

   INITRAMFS_IMAGE = "<image-name>"
   INITRAMFS_IMAGE_BUNDLE = "1"

to local.conf.

bitbaking the thing gives us the zImage-initramfs-file.

Then we created two static volumes within the UBI-partition on the
NAND one for the image, one for the dtb.

When trying to boot the image with bootm -o .. .. it takes some time
(to load I guess) and then blocks.

Putting the zImage "kernel-only" on the same volumes and booting works
(except that there is no rootfs).

Our zImage with initramfs is 28MiB big, the kernel alone 7.

Could anyone advise what's wrong with this setup? Is it is
size-problem in barebox? 

Is it a Yocto-problem? I'm aware that asking here might the wrong
thing, as barebox is only one part of the system.

Thanks in advance for any help.

best regards,
--
Patrick.






_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
