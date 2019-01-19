Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkxPL-0000MC-FQ
 for barebox@lists.infradead.org; Sat, 19 Jan 2019 20:40:02 +0000
Received: by mail-wr1-x442.google.com with SMTP id l9so18946181wrt.13
 for <barebox@lists.infradead.org>; Sat, 19 Jan 2019 12:39:58 -0800 (PST)
MIME-Version: 1.0
References: <20190119005108.31747-1-vivien.didelot@gmail.com>
In-Reply-To: <20190119005108.31747-1-vivien.didelot@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 19 Jan 2019 12:39:45 -0800
Message-ID: <CAHQ1cqEaDYyFRo_GJWEEpNOTz57nowhg5rbx+Xj+WptsYbQ7dw@mail.gmail.com>
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
Subject: Re: [PATCH] ARM: zii-vf610-dev: fix boot sd
To: Vivien Didelot <vivien.didelot@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Jan 18, 2019 at 4:51 PM Vivien Didelot <vivien.didelot@gmail.com> wrote:
>
> The 'sd' boot is currently broken on zii-vf610-dev because there are no
> mci devices (anymore?), only mmc.

Yeah, I forgot to update this part in 5f99a8d403 "dts: VFxxx: Add
aliases for ESDHC controllers", sorry about that!

>  There are also no need to check
> for the device number since both Rev B and Rev C report their SD card
> slot on mmc1.
>

I think you might be misreading the if condition in that check. What
it is meant to test is:

if ((board == VF610 Dev Rev C) || (board == VF610 Dev Rev B)) {
     SDHCI = SDHCI1
} else {
     SDHCI = SDHCI2
}

IOW, it is meant to configure development boards to boot from SD card
(attached to SDHCI1 on both revisions) and from eMMC on other boards
supported by that build (CFU1, SPU3, SCU4).

> Note that mmc1.0 is already mounted on /mnt/mmc1.0 once mmc1.probe=1
> is typed. It would've been more appropriate to use "ln /mnt/mmc1.0
> /mnt/sd", but ln isn't useable with automount since the mountpoint
> needs to be already created and ln has no force option. There are
> no complains with having two mountpoints for a device, so just blindly
> mount the device again.
>

I think we can still take advantage of default automount path
(/mnt/mmc1.0), by moving the if check to "boot/sd" and using
"/mnt/mmc${global.sd}.0/" as a prefix for Linux image and DTB blob.
This way there would be no need to create a symlink or a second mount
point and "init/automount-sd" could be dropped completely.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
