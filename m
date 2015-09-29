Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x22d.google.com ([2607:f8b0:4002:c07::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zh0Eq-0005bn-D8
 for barebox@lists.infradead.org; Tue, 29 Sep 2015 19:06:57 +0000
Received: by ykdg206 with SMTP id g206so16882762ykd.1
 for <barebox@lists.infradead.org>; Tue, 29 Sep 2015 12:06:35 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150929070523.GP7858@pengutronix.de>
References: <1443362931-1881-1-git-send-email-vicencb@gmail.com>
 <20150929070523.GP7858@pengutronix.de>
Date: Tue, 29 Sep 2015 20:06:35 +0100
Message-ID: <CAAMcf8C9RmOCoGyRECFUk=Yn2x8UscTG=E_wpo7bcaGgYYqAVQ@mail.gmail.com>
From: vj <vicencb@gmail.com>
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
Subject: Re: [PATCH] xload: be more flexible when searching for second stage
 bootloader.
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Sep 29, 2015 at 8:05 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Sun, Sep 27, 2015 at 03:08:51PM +0100, Vicente Bergas wrote:
>> A first stage bootloader can read fat and ext4 filesystems, and
>> even both can be compiled-in at the same time.
>> But then xload has a hardcoded fat filesystem mount option which
>> renders ext4 unusable.
>> This patch tries to mount it as ext4 if the fat attempt fails.
>>
>> Then, a typical use case of an ext4 formatted filesystem
>> is it to be a standard linux filesystem, which contains
>> boot-related files in /boot. So, when searching for the second stage
>> bootloader, try /boot/barebox.bin after not finding it in /barebox.bin
>>
>> Signed-off-by: Vicente Bergas <vicencb@gmail.com>
>> ---
>>  arch/arm/mach-omap/xload.c | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
>> index ebcbcbc..c5e29f8 100644
>> --- a/arch/arm/mach-omap/xload.c
>> +++ b/arch/arm/mach-omap/xload.c
>> @@ -118,6 +118,8 @@ static void *omap_xload_boot_mmc(void)
>>       partname = asprintf("%s.0", diskdev);
>>
>>       ret = mount(partname, "fat", "/", NULL);
>> +     if (ret)
>> +             ret = mount(partname, "ext4", "/", NULL);
>
> It should also be possible to pass NULL as fs type in which case we
> automatically detect the fs type. Could you check that?

I didn't know that. This way it would be nicer and cleaner!
So it has been tested but it didn't work :(
mount calls detect_fs, detect_fs calls file_name_detect_type and
file_name_detect_type calls open.
open fails to open the "mmc0.0" file name
Then I changed the name to "/dev/mmc0.0" but it  failed the same way.
The open return code is -2.
(It's been tested on a BeagleBoneBlack)

>
> Where does the MLO come from when you don't have a FAT on your MMC/SD
> device? Don't we need FAT on the first partition to let the boot ROM
> load the MLO?

There are small differences in OMAP variants, so here there is only one
example that refers to the AM3359 on board of a BeagleBoneBlack:
As stated in the
AM335x Sitara Processors Technical Reference Manual Rev L.pdf
(http://www.ti.com/lit/pdf/spruh73)
Section 26.1.7.5.5 page 4940
In raw mode the booting image can be located at one of the four
consecutive locations in the main area: offset 0x0 / 0x20000 (128KB) /
0x40000 (256KB) / 0x60000 (384KB).
The raw mode is detected by reading sectors #0, #256, #512, #768.

So, the first 128KB block can hold an MBR plus partition table, then a
raw image of the MLO file can be present at offset 128KB followed by
the disk partitions.

In section 26.1.7.5.3 page 4939 figure 26-17 MMC/SD Booting
states that raw mode detection is performed before searching for the
MLO file in a filesystem.

All in all, it is possible to have a "fat-free" SD-card.


Regards,
  Vicente.

>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
