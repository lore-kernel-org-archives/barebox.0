Delivery-date: Thu, 09 Jun 2022 11:32:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzEWG-008cxj-Kz
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 11:32:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzEWE-0002cT-M1
	for lore@pengutronix.de; Thu, 09 Jun 2022 11:31:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=m6w+3XVoq3+dn7mKEz223BIO2lnqSSPoFrOo2kLScSs=; b=EzWwdOOQ5ebcD1vfR35SSfUeX/
	eZfOBiWCjhNVB4yKIcWToypbMhM0hdsXVcmSMTV6+wM1M7M0zSzrqeplkGlQes3JJiIweOU3wkukK
	63vBMkw+Ud0uCVmZCyIMuljVL20ta8LhAGqHbhy2dAFanMZydX/EwzRLm82YXd30BnC/WyRdbA4RR
	XrwKWYuDE/ZqCicvkfdHgUtz4iGEtOCrYgfscucGX6jZyzSlUvHOtcY6fFWSrFocsvEi/i4nzFoOO
	vhyC1gqOrta7HBYVoy0F1FR9JZktZSUpIcdmTqpjxr3489IOIw3fBw9we91rY4ESuvKjfj0LnmT/n
	B6xXBiyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzEUy-000fAR-7h; Thu, 09 Jun 2022 09:30:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzEUs-000f8P-Ow
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 09:30:36 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzEUq-000259-VB; Thu, 09 Jun 2022 11:30:32 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzEUq-0004T9-Lj; Thu, 09 Jun 2022 11:30:32 +0200
Date: Thu, 9 Jun 2022 11:30:32 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220609093032.GP1615@pengutronix.de>
References: <20220609072629.15723-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220609072629.15723-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_023034_854213_7418A68F 
X-CRM114-Status: GOOD (  25.83  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH next] read_file: Pass NULL for the size parameter if the
 return value is not used
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 09, 2022 at 10:26:29AM +0300, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/boards/kindle-mx50/board.c  |  3 +--
>  arch/arm/boards/vscom-baltos/board.c |  3 +--
>  arch/arm/mach-omap/xload.c           | 14 +++++---------
>  commands/spd_decode.c                |  3 +--
>  common/menutree.c                    |  3 +--
>  lib/libfile.c                        |  3 +--
>  6 files changed, 10 insertions(+), 19 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/kindle-mx50/board.c b/arch/arm/boards/kindle-mx50/board.c
> index 8fc5af8320..4cfd68a258 100644
> --- a/arch/arm/boards/kindle-mx50/board.c
> +++ b/arch/arm/boards/kindle-mx50/board.c
> @@ -84,10 +84,9 @@ static char *mac;
>  static void kindle_rev_init(void)
>  {
>  	int ret;
> -	size_t size;
>  	void *buf;
>  	const char userdata[] = "/dev/mmc2.boot0.userdata";
> -	ret = read_file_2(userdata, &size, &buf, 128);
> +	ret = read_file_2(userdata, NULL, &buf, 128);
>  	if (ret && ret != -EFBIG) {
>  		pr_err("Could not read board info from %s\n", userdata);
>  		return;
> diff --git a/arch/arm/boards/vscom-baltos/board.c b/arch/arm/boards/vscom-baltos/board.c
> index 59782d2990..83c7dbc8b0 100644
> --- a/arch/arm/boards/vscom-baltos/board.c
> +++ b/arch/arm/boards/vscom-baltos/board.c
> @@ -85,7 +85,6 @@ static uint8_t get_dip_switch(uint16_t id, uint32_t rev)
>  static int baltos_read_eeprom(void)
>  {
>  	struct bsp_vs_hwparam hw_param;
> -	size_t size;
>  	char *buf, var_buf[32];
>  	int rc;
>  	unsigned char mac_addr[6];
> @@ -95,7 +94,7 @@ static int baltos_read_eeprom(void)
>  		return 0;
>  
>  	rc = read_file_2("/dev/eeprom0",
> -			 &size,
> +			 NULL,
>  			 (void *)&buf,
>  			 sizeof(hw_param));
>  	if (rc && rc != -EFBIG)
> diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
> index 6d3704b8cf..6a02e2b589 100644
> --- a/arch/arm/mach-omap/xload.c
> +++ b/arch/arm/mach-omap/xload.c
> @@ -115,7 +115,6 @@ static void *omap_xload_boot_mmc(void)
>  {
>  	int ret;
>  	void *buf;
> -	int len;
>  	const char *diskdev;
>  	char *partname;
>  
> @@ -137,9 +136,9 @@ static void *omap_xload_boot_mmc(void)
>  
>  	free(partname);
>  
> -	buf = read_file("/barebox.bin", &len);
> +	buf = read_file("/barebox.bin", NULL);
>  	if (!buf)
> -		buf = read_file("/boot/barebox.bin", &len);
> +		buf = read_file("/boot/barebox.bin", NULL);
>  	if (!buf) {
>  		printf("could not read barebox.bin from sd card\n");
>  		return NULL;
> @@ -156,7 +155,6 @@ static void *omap_xload_boot_spi(struct omap_barebox_part *part)
>  static void *omap4_xload_boot_usb(void){
>  	int ret;
>  	void *buf;
> -	int len;
>  
>  	ret = mount("omap4_usbboot", "omap4_usbbootfs", "/", NULL);
>  	if (ret) {
> @@ -164,7 +162,7 @@ static void *omap4_xload_boot_usb(void){
>  		return NULL;
>  	}
>  
> -	buf = read_file("/barebox.bin", &len);
> +	buf = read_file("/barebox.bin", NULL);
>  	if (!buf)
>  		printf("could not read barebox.bin from omap4_usbbootfs\n");
>  
> @@ -175,7 +173,6 @@ static void *omap_serial_boot(void){
>  	struct console_device *cdev;
>  	int ret;
>  	void *buf;
> -	int len;
>  	int fd;
>  
>  	/* need temporary place to store file */
> @@ -203,7 +200,7 @@ static void *omap_serial_boot(void){
>  		return NULL;
>  	}
>  
> -	buf = read_file("/barebox.bin", &len);
> +	buf = read_file("/barebox.bin", NULL);
>  	if (!buf)
>  		printf("could not read barebox.bin from serial\n");
>  
> @@ -216,7 +213,6 @@ static void *am33xx_net_boot(void)
>  {
>  	void *buf = NULL;
>  	int err;
> -	int len;
>  	struct dhcp_req_param dhcp_param;
>  	const char *bootfile;
>  	IPaddr_t ip;
> @@ -276,7 +272,7 @@ static void *am33xx_net_boot(void)
>  
>  	file = basprintf("%s/%s", TFTP_MOUNT, bootfile);
>  
> -	buf = read_file(file, &len);
> +	buf = read_file(file, NULL);
>  	if (!buf)
>  		printf("could not read %s.\n", bootfile);
>  
> diff --git a/commands/spd_decode.c b/commands/spd_decode.c
> index e8ee339a91..fa8fe86cf8 100644
> --- a/commands/spd_decode.c
> +++ b/commands/spd_decode.c
> @@ -16,13 +16,12 @@
>  static int do_spd_decode(int argc, char *argv[])
>  {
>  	int ret;
> -	size_t size;
>  	void *data;
>  
>  	if (argc != 2)
>  		return COMMAND_ERROR_USAGE;
>  
> -	ret = read_file_2(argv[1], &size, &data, 256);
> +	ret = read_file_2(argv[1], NULL, &data, 256);
>  	if (ret && ret != -EFBIG) {
>  		printf("unable to read %s: %s\n", argv[1], strerror(-ret));
>  		return COMMAND_ERROR;
> diff --git a/common/menutree.c b/common/menutree.c
> index 9a14005ea2..7fa835a7fe 100644
> --- a/common/menutree.c
> +++ b/common/menutree.c
> @@ -87,7 +87,6 @@ int menutree(const char *path, int toplevel)
>  	glob_t g = {};
>  	int i;
>  	char *globpath, *display;
> -	size_t size;
>  
>  	menu = menu_alloc();
>  
> @@ -100,7 +99,7 @@ int menutree(const char *path, int toplevel)
>  	}
>  
>  	globpath = basprintf("%s/title", path);
> -	display = read_file(globpath, &size);
> +	display = read_file(globpath, NULL);
>  	free(globpath);
>  	if (!display) {
>  		eprintf("no title found in %s/title\n", path);
> diff --git a/lib/libfile.c b/lib/libfile.c
> index 1f533133c5..3b7985fbca 100644
> --- a/lib/libfile.c
> +++ b/lib/libfile.c
> @@ -162,7 +162,6 @@ char *read_file_line(const char *fmt, ...)
>  	va_list args;
>  	char *filename;
>  	char *buf, *line = NULL;
> -	size_t size;
>  	int ret;
>  	struct stat s;
>  
> @@ -177,7 +176,7 @@ char *read_file_line(const char *fmt, ...)
>  	if (s.st_size > 1024)
>  		goto out;
>  
> -	buf = read_file(filename, &size);
> +	buf = read_file(filename, NULL);
>  	if (!buf)
>  		goto out;
>  
> -- 
> 2.32.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

