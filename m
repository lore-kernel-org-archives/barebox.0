Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9Duz-0005cT-Ea
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 11:37:15 +0000
Message-ID: <1346845030.3625.16.camel@lws-weitzel>
From: Jan Weitzel <J.Weitzel@phytec.de>
Date: Wed, 05 Sep 2012 13:37:10 +0200
In-Reply-To: <20120905103400.GC32603@game.jcrosoft.org>
References: <20120904143553.GA32603@game.jcrosoft.org>
 <1346833350-9396-1-git-send-email-j.weitzel@phytec.de>
 <20120905103400.GC32603@game.jcrosoft.org>
Mime-Version: 1.0
Reply-To: J.Weitzel@phytec.de
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Suspected ##SPAM## -:Re: [PATCH v4] xload: get barebox size
 from barebox_arm_head
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Am Mittwoch, den 05.09.2012, 12:34 +0200 schrieb Jean-Christophe
PLAGNIOL-VILLARD:
> On 10:22 Wed 05 Sep     , Jan Weitzel wrote:
> > Add functions to read the barebox_arm_head, check barebox magicword
> > and read out the barebox image size.
> > Create a inital partion of 1Mb to access the barebox image on nand.
> > 
> > Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> > ---
> > v2: remove fall back if header read fail 
> > v3: fix header check, rebase master 
> > v4: factorize barebox detection
> > 
> >  arch/arm/include/asm/barebox-arm-head.h |    9 +++++
> >  arch/arm/mach-omap/include/mach/xload.h |    2 +-
> >  arch/arm/mach-omap/xload.c              |   57 ++++++++++++++++++++++++++++--
> >  common/filetype.c                       |    3 +-
> this con not work
> 
> common/filetype is use accross ARCH
> 
> is_barebox_arm_head need to be a inline returning false if not arm
this is why I use the ugly #include
"../arch/arm/include/asm/barebox-arm-head.h". By now we can detect
filetype_arm_barebox even on non arm architectures. Is breaking this OK?
Jan
> 
> Best Regards,
> J.
> >  4 files changed, 65 insertions(+), 6 deletions(-)
> > 
> > diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/asm/barebox-arm-head.h
> > index 2c250e9..42bd239 100644
> > --- a/arch/arm/include/asm/barebox-arm-head.h
> > +++ b/arch/arm/include/asm/barebox-arm-head.h
> > @@ -1,6 +1,15 @@
> >  #ifndef __ASM_ARM_HEAD_H
> >  #define __ASM_ARM_HEAD_H
> >  
> > +#define ARM_HEAD_SIZE		0x30
> > +#define HEAD_MAGICWORD_OFFSET	0x20
> > +#define HEAD_SIZE_OFFSET	0x2C
> > +
> > +static inline int is_barebox_arm_head(const char *head)
> > +{
> > +	return !strcmp(head + HEAD_MAGICWORD_OFFSET, "barebox");
> > +}
> > +
> >  static inline void barebox_arm_head(void)
> >  {
> >  	__asm__ __volatile__ (
> > diff --git a/arch/arm/mach-omap/include/mach/xload.h b/arch/arm/mach-omap/include/mach/xload.h
> > index 844b57f..26f1b68 100644
> > --- a/arch/arm/mach-omap/include/mach/xload.h
> > +++ b/arch/arm/mach-omap/include/mach/xload.h
> > @@ -1,7 +1,7 @@
> >  #ifndef _MACH_XLOAD_H
> >  #define _MACH_XLOAD_H
> >  
> > -void *omap_xload_boot_nand(int offset, int size);
> > +void *omap_xload_boot_nand(int offset);
> >  void *omap_xload_boot_mmc(void);
> >  
> >  enum omap_boot_src {
> > diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
> > index 13024ab..5f9ca26 100644
> > --- a/arch/arm/mach-omap/xload.c
> > +++ b/arch/arm/mach-omap/xload.c
> > @@ -7,16 +7,65 @@
> >  #include <fcntl.h>
> >  #include <mach/xload.h>
> >  #include <sizes.h>
> > +#include <asm/barebox-arm-head.h>
> >  
> > -void *omap_xload_boot_nand(int offset, int size)
> > +void *read_image_head(const char *name)
> >  {
> > +	void *header = xmalloc(ARM_HEAD_SIZE);
> > +	struct cdev *cdev;
> >  	int ret;
> > -	void *to = xmalloc(size);
> > +
> > +	cdev = cdev_open(name, O_RDONLY);
> > +	if (!cdev) {
> > +		printf("failed to open partition\n");
> > +		return NULL;
> > +	}
> > +
> > +	ret = cdev_read(cdev, header, ARM_HEAD_SIZE, 0, 0);
> > +	cdev_close(cdev);
> > +
> > +	if (ret != ARM_HEAD_SIZE) {
> > +		printf("failed to read from partition\n");
> > +		return NULL;
> > +	}
> > +
> > +	return header;
> > +}
> > +
> > +unsigned int get_image_size(void *head)
> > +{
> > +	unsigned int ret = 0;
> > +	unsigned int *psize = head + HEAD_SIZE_OFFSET;
> > +
> > +	if (is_barebox_arm_head(head))
> > +		ret = *psize;
> > +	debug("Detected barebox image size %u\n", ret);
> > +
> > +	return ret;
> > +}
> > +
> > +void *omap_xload_boot_nand(int offset)
> > +{
> > +	int ret;
> > +	int size;
> > +	void *to, *header;
> >  	struct cdev *cdev;
> >  
> > -	devfs_add_partition("nand0", offset, size, DEVFS_PARTITION_FIXED, "x");
> > +	devfs_add_partition("nand0", offset, SZ_1M, DEVFS_PARTITION_FIXED, "x");
> >  	dev_add_bb_dev("x", "bbx");
> >  
> > +	header = read_image_head("bbx");
> > +	if (header == NULL)
> > +		return NULL;
> > +
> > +	size = get_image_size(header);
> > +	if (!size) {
> > +		printf("failed to get image size\n");
> > +		return NULL;
> > +	}
> > +
> > +	to = xmalloc(size);
> > +
> >  	cdev = cdev_open("bbx", O_RDONLY);
> >  	if (!cdev) {
> >  		printf("failed to open nand\n");
> > @@ -80,7 +129,7 @@ int run_shell(void)
> >  		printf("unknown boot source. Fall back to nand\n");
> >  	case OMAP_BOOTSRC_NAND:
> >  		printf("booting from NAND\n");
> > -		func = omap_xload_boot_nand(SZ_128K, SZ_256K);
> > +		func = omap_xload_boot_nand(SZ_128K);
> >  		break;
> >  	}
> >  
> > diff --git a/common/filetype.c b/common/filetype.c
> > index 1a5b82d..a95e4fd 100644
> > --- a/common/filetype.c
> > +++ b/common/filetype.c
> > @@ -25,6 +25,7 @@
> >  #include <fcntl.h>
> >  #include <fs.h>
> >  #include <malloc.h>
> > +#include "../arch/arm/include/asm/barebox-arm-head.h"
> >  
> >  static const char *filetype_str[] = {
> >  	[filetype_unknown] = "unknown",
> > @@ -57,7 +58,7 @@ enum filetype file_detect_type(void *_buf)
> >  
> >  	if (strncmp(buf8, "#!/bin/sh", 9) == 0)
> >  		return filetype_sh;
> > -	if (buf[8] == 0x65726162 && buf[9] == 0x00786f62)
> > +	if (is_barebox_arm_head(_buf))
> >  		return filetype_arm_barebox;
> >  	if (buf[9] == 0x016f2818 || buf[9] == 0x18286f01)
> >  		return filetype_arm_zimage;
> > -- 
> > 1.7.0.4
> > 



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
