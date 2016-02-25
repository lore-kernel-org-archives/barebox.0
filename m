Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22e.google.com ([2a00:1450:400c:c09::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYsZp-0003Kh-SV
 for barebox@lists.infradead.org; Thu, 25 Feb 2016 09:51:19 +0000
Received: by mail-wm0-x22e.google.com with SMTP id b205so23989510wmb.1
 for <barebox@lists.infradead.org>; Thu, 25 Feb 2016 01:50:57 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <87bn7516ji.fsf@gmail.com>
References: <CABQt-UmmZmRR9zPscx=8-eQ49eNUS7GQVxjBXs6D0OgiuWfquQ@mail.gmail.com>
 <20160223080530.GZ3939@pengutronix.de>
 <CABQt-Um-ENNbt_MbbF4NP42jmufsmgxV6pVvEsTFjw0O=++=ow@mail.gmail.com>
 <87bn7516ji.fsf@gmail.com>
Date: Thu, 25 Feb 2016 10:50:56 +0100
Message-ID: <CABQt-U=trcYcMu-uxmR-nMkDTu_te54enJZa8X-d1oN0y9aO5A@mail.gmail.com>
From: Philippe Leduc <ledphilippe@gmail.com>
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
Subject: Re: bootm crash - bad uimage?
To: Holger Schurig <holgerschurig@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

> So if you don't have an initrd, do you need uImage at all? You can boot
a bootable image directly
Well, I do it this way because it was working I guess^^' but I tink
your proposition is the right think to do!

Thank you for the tip and the details, I'll check that and I'll give
you a feedback ASAP :)

Best regards,

--
Philippe LEDUC
ledphilippe@gmail.com


2016-02-25 10:30 GMT+01:00 Holger Schurig <holgerschurig@gmail.com>:
> Philippe Leduc <ledphilippe@gmail.com> writes:
>
>> Note: I am using mkimage to create bootable image of a real-time OS
>> (PikeOS). There is no initrd or dtc at this step for now: I guess it
>> is like loading an old Linux kernel without userspace.
>
> So if you don't have an initrd, do you need uImage at all? You can boot
> a bootable image directly
>
> I use Linux without an initrd and don't bother with an uImage at all. I
> have my kernel on the SD-CARD or eMMC in /boot/vmlinuz, just like on any
> other (x86) Linux box.
>
> Here is my env/boot/emmc script. I use "boot", not "bootm", but AFAIK boot uses
> bootm under the hood.
>
>    global linux.bootargs.dyn.root="root=/dev/mmcblk0p${global.boot.partition} rootwait ro"
>    global bootm.image=/emmc/boot/vmlinuz
>    detect mmc3
>    mkdir -p /emmc
>    mount /dev/mmc3.0 /emmc
>
> I have similar scripts for SD-Card and USB.
>
>
> The kernel is installed using the normal Linux mechanism:
>
> make -C ${KERNEL_DIR} ARCH=arm INSTALL_PATH=${IMAGE_DIR}/boot zinstall
>
> maybe PikeOS has something equivalent. The result is:
>
> $ file image/boot/vmlinuz-4.4.2
> image/boot/vmlinuz-4.4.2: Linux kernel ARM boot executable zImage (little-endian)
>
>
>
> As you see, I boot directly into the vmlinuz ... and I don't use
> Barebox' CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW, too.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
