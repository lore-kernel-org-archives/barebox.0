Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T6hGl-0003VI-8P
 for barebox@lists.infradead.org; Wed, 29 Aug 2012 12:21:16 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id A28ABDC4E9C
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2012 14:26:19 +0200 (CEST)
Date: Wed, 29 Aug 2012 14:21:25 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120829122125.GF18708@game.jcrosoft.org>
References: <1346227318.3280.1.camel@lws-weitzel>
 <1346231416-28541-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346231416-28541-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH v3] xload: get barebox size from barebox_arm_head
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On 11:10 Wed 29 Aug     , Jan Weitzel wrote:
> Add functions to read the barebox_arm_head, check barebox magicword
> and read out the barebox image size.
> Create a inital partion of 1Mb to access the barebox image on nand.
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> ---
> v2: remove fall back if header read fail 
> v3: fix header check, rebase master 
> 
>  arch/arm/include/asm/barebox-arm-head.h |    4 ++
>  arch/arm/mach-omap/include/mach/xload.h |    2 +-
>  arch/arm/mach-omap/xload.c              |   58 ++++++++++++++++++++++++++++--
>  3 files changed, 59 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/asm/barebox-arm-head.h
> index 2c250e9..1ddfc0f 100644
> --- a/arch/arm/include/asm/barebox-arm-head.h
> +++ b/arch/arm/include/asm/barebox-arm-head.h
> @@ -1,6 +1,10 @@
>  #ifndef __ASM_ARM_HEAD_H
>  #define __ASM_ARM_HEAD_H
>  
> +#define ARM_HEAD_SIZE		0x30
> +#define HEAD_MAGICWORD_OFFSET	0x20
> +#define HEAD_SIZE_OFFSET	0x2C
> +
>  static inline void barebox_arm_head(void)
>  {
>  	__asm__ __volatile__ (
> diff --git a/arch/arm/mach-omap/include/mach/xload.h b/arch/arm/mach-omap/include/mach/xload.h
> index 844b57f..26f1b68 100644
> --- a/arch/arm/mach-omap/include/mach/xload.h
> +++ b/arch/arm/mach-omap/include/mach/xload.h
> @@ -1,7 +1,7 @@
>  #ifndef _MACH_XLOAD_H
>  #define _MACH_XLOAD_H
>  
> -void *omap_xload_boot_nand(int offset, int size);
> +void *omap_xload_boot_nand(int offset);
>  void *omap_xload_boot_mmc(void);
>  
>  enum omap_boot_src {
> diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
> index 13024ab..d9765b7 100644
> --- a/arch/arm/mach-omap/xload.c
> +++ b/arch/arm/mach-omap/xload.c
> @@ -7,16 +7,66 @@
>  #include <fcntl.h>
>  #include <mach/xload.h>
>  #include <sizes.h>
> +#include <asm/barebox-arm-head.h>
>  
> -void *omap_xload_boot_nand(int offset, int size)
> +void *read_image_head(const char *name)
>  {
> +	void *header = xmalloc(ARM_HEAD_SIZE);
> +	struct cdev *cdev;
>  	int ret;
> -	void *to = xmalloc(size);
> +
> +	cdev = cdev_open(name, O_RDONLY);
> +	if (!cdev) {
> +		printf("failed to open partition\n");
> +		return NULL;
> +	}
> +
> +	ret = cdev_read(cdev, header, ARM_HEAD_SIZE, 0, 0);
> +	cdev_close(cdev);
> +
> +	if (ret != ARM_HEAD_SIZE) {
> +		printf("failed to read from partition\n");
> +		return NULL;
> +	}
> +
> +	return header;
> +}
> +
> +unsigned int get_image_size(void *head)
> +{
> +	unsigned int ret = 0;
> +	unsigned int *psize = head + HEAD_SIZE_OFFSET;
> +	const char *pmagic = head + HEAD_MAGICWORD_OFFSET;
> +
> +	if (!strcmp(pmagic, "barebox"))
> +		ret = *psize;
> +	debug("Detected barebox image size %u\n", ret);
factorise the code with filetype

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
