Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZhWzO-00017q-UY
 for barebox@lists.infradead.org; Thu, 01 Oct 2015 06:05:12 +0000
Date: Thu, 1 Oct 2015 08:04:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151001060447.GG7858@pengutronix.de>
References: <1443362931-1881-1-git-send-email-vicencb@gmail.com>
 <20150929070523.GP7858@pengutronix.de>
 <CAAMcf8C9RmOCoGyRECFUk=Yn2x8UscTG=E_wpo7bcaGgYYqAVQ@mail.gmail.com>
 <20150930071916.GZ7858@pengutronix.de>
 <CAAMcf8Deb_J79z+YzptSjw1_=5AN5ToX7c=SOhx+HSPPXcJjkg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAMcf8Deb_J79z+YzptSjw1_=5AN5ToX7c=SOhx+HSPPXcJjkg@mail.gmail.com>
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
To: vj <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 30, 2015 at 06:49:11PM +0100, vj wrote:
> On Wed, Sep 30, 2015 at 8:19 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > On Tue, Sep 29, 2015 at 08:06:35PM +0100, vj wrote:
> >> On Tue, Sep 29, 2015 at 8:05 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >> > On Sun, Sep 27, 2015 at 03:08:51PM +0100, Vicente Bergas wrote:
> >> >> A first stage bootloader can read fat and ext4 filesystems, and
> >> >> even both can be compiled-in at the same time.
> >> >> But then xload has a hardcoded fat filesystem mount option which
> >> >> renders ext4 unusable.
> >> >> This patch tries to mount it as ext4 if the fat attempt fails.
> >> >>
> >> >> Then, a typical use case of an ext4 formatted filesystem
> >> >> is it to be a standard linux filesystem, which contains
> >> >> boot-related files in /boot. So, when searching for the second stage
> >> >> bootloader, try /boot/barebox.bin after not finding it in /barebox.bin
> >> >>
> >> >> Signed-off-by: Vicente Bergas <vicencb@gmail.com>
> >> >> ---
> >> >>  arch/arm/mach-omap/xload.c | 4 ++++
> >> >>  1 file changed, 4 insertions(+)
> >> >>
> >> >> diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
> >> >> index ebcbcbc..c5e29f8 100644
> >> >> --- a/arch/arm/mach-omap/xload.c
> >> >> +++ b/arch/arm/mach-omap/xload.c
> >> >> @@ -118,6 +118,8 @@ static void *omap_xload_boot_mmc(void)
> >> >>       partname = asprintf("%s.0", diskdev);
> >> >>
> >> >>       ret = mount(partname, "fat", "/", NULL);
> >> >> +     if (ret)
> >> >> +             ret = mount(partname, "ext4", "/", NULL);
> >> >
> >> > It should also be possible to pass NULL as fs type in which case we
> >> > automatically detect the fs type. Could you check that?
> >>
> >> I didn't know that. This way it would be nicer and cleaner!
> >> So it has been tested but it didn't work :(
> >> mount calls detect_fs, detect_fs calls file_name_detect_type and
> >> file_name_detect_type calls open.
> >> open fails to open the "mmc0.0" file name
> >
> > Ok, I see. This indeed can't work as it depends on devfs being mounted
> > on /dev/. For this to work we would need a cdev_detect_filetype(const
> > char *name) which uses the cdev_* operations to read a buffer and pass
> > that to file_detect_type(). You're invited to implement that ;)
> >
> >> So, the first 128KB block can hold an MBR plus partition table, then a
> >> raw image of the MLO file can be present at offset 128KB followed by
> >> the disk partitions.
> >>
> >> In section 26.1.7.5.3 page 4939 figure 26-17 MMC/SD Booting
> >> states that raw mode detection is performed before searching for the
> >> MLO file in a filesystem.
> >>
> >> All in all, it is possible to have a "fat-free" SD-card.
> >
> > Now that you say it I remember having read about this before.
> >
> > Does this work well with the rest of barebox? In omap_env_init() we
> > mount the first mmc partition to /boot and put the environment to
> > /boot/barebox.env. That doesn't work when the first partition doesn't
> > contain a FAT. Do you put your environment somewhere else?
> 
> I was not using the environment save/restore feature and was unaware
> that it was broken.
> The environment retrieval could be improved in a similar way: try
> mounting all supported filesystems and search in "mountpoint/" and
> "mountpoint/boot/"
> But the environment save feature can't be easily supported on ext4
> because the driver does not support writes.
> Still I think that this patch is an improvement, is not the patch
> itself that broke the env save/restore, it was a new use case enabled
> by it.

Indeed. Could you create that cdev_detect_filetype() we talked about,
then this patch is good to go.

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
