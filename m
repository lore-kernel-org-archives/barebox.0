Delivery-date: Fri, 26 May 2023 07:48:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2QJh-00Ef6Q-TW
	for lore@lore.pengutronix.de; Fri, 26 May 2023 07:48:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2QJf-0008V4-1x
	for lore@pengutronix.de; Fri, 26 May 2023 07:48:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tRjZN+GbyU6VH70Dd8rlN3tfCJHVOxXopzYPin/QEjo=; b=ouWVLH936wXbxiZqdBcGaqQY4y
	lcwEHl55cILtVZ6OoUFw4yPQot6do7EjDV8gTrofAHAY4ynMMsC7/7pPnU4L2DtQDUoxvmORHwBea
	m1iCae5BH5uUigpF+58dQ2OOlGQEKBr9u0Hjh21n83ze9C06ca/T7DAO19hUs2DhUGFk4i7FoF7SV
	/G6QLJzD4asTg2OykY1Yk1JWqfrMFm1j6ht6gjnAzLavjt+ZGwBM9i6nwDNJ1MCZKR7DbDyMnjsmE
	l9jQt0Hc7dBydUdtknMq6ZQvF4wO8dS9giyQq8ehSuWJPiDDznKz0x723aCXGnzgott2ctKhuW3Cb
	NW61zCkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2QHx-0019IY-1K;
	Fri, 26 May 2023 05:46:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2QHu-0019GR-26
	for barebox@lists.infradead.org;
	Fri, 26 May 2023 05:46:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1q2QHq-0008IF-0y; Fri, 26 May 2023 07:46:50 +0200
Message-ID: <e5a3b02d-cab1-bfb0-fb5d-e4b636b838ad@pengutronix.de>
Date: Fri, 26 May 2023 07:46:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: Ahmad Fatoum <ahmad@a3f.at>, barebox@lists.infradead.org
References: <20230525181320.2277320-1-ahmad@a3f.at>
Content-Language: en-US, de-DE
From: Johannes Zink <j.zink@pengutronix.de>
In-Reply-To: <20230525181320.2277320-1-ahmad@a3f.at>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_224654_686337_05A6F859 
X-CRM114-Status: GOOD (  28.55  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master 1/4] Revert "imx-usb-loader: add commandline option
 for displaying version number"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On 5/25/23 20:13, Ahmad Fatoum wrote:
> include/generated/utsrelease.h is only generated in the prepare make
> target, which is not a dependency of the scripts make target. Builds of
> the scripts target, e.g. sandbox $(make hosttools_defconfig; make scripts),
> may thus fail because the file had not yet been generated:
> 
> <command-line>: fatal error: /build/source/include/generated/utsrelease.h:
> 	No such file or directory
> 	compilation terminated.
> 
> That scripts doesn't depend on prepare may be due to scripts/kconfig.
> The kernel may side step this issue by having tools not needed for
> prepare in a separate tools/.
> 

do you have a suggestion how this issue could be solved? I think that it 
is - nevertheless - useful to have a version number in the tooling. Do 
you know of a flag that is set when the files have been generated? Maybe 
we can include the file conditionally if and only if it has been 
generated. Do you think that alternatively we can require the prepare 
make target as a dependency for scripts/imx?

Johannes

> Until this is resolved, revert commit c1b50061f4b33482ae749f9d6d6c92aa5bf6b37a.
> 
> Cc: Johannes Zink <j.zink@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>   scripts/imx/Makefile         |  2 +-
>   scripts/imx/imx-usb-loader.c | 22 +---------------------
>   2 files changed, 2 insertions(+), 22 deletions(-)
> 
> diff --git a/scripts/imx/Makefile b/scripts/imx/Makefile
> index b3be3886d8eb..dbfa82910a55 100644
> --- a/scripts/imx/Makefile
> +++ b/scripts/imx/Makefile
> @@ -3,7 +3,7 @@
>   hostprogs-always-$(CONFIG_ARCH_IMX_IMXIMAGE)	+= imx-image
>   hostprogs-always-$(CONFIG_ARCH_IMX_USBLOADER)	+= imx-usb-loader
>   
> -HOSTCFLAGS_imx-usb-loader.o = `pkg-config --cflags libusb-1.0` -include $(objtree)/include/generated/utsrelease.h
> +HOSTCFLAGS_imx-usb-loader.o = `pkg-config --cflags libusb-1.0`
>   HOSTLDLIBS_imx-usb-loader  = `pkg-config --libs libusb-1.0`
>   
>   imx-usb-loader-target-userccflags += `$(CROSS_PKG_CONFIG) --cflags libusb-1.0`
> diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
> index 676f077c2557..839288f753cc 100644
> --- a/scripts/imx/imx-usb-loader.c
> +++ b/scripts/imx/imx-usb-loader.c
> @@ -46,10 +46,6 @@
>   #define FT_DCD	0xee
>   #define FT_LOAD_ONLY	0x00
>   
> -#ifndef UTS_RELEASE
> -#define UTS_RELEASE "unknown"
> -#endif
> -
>   /*
>    * comment from libusb:
>    * As per the USB 3.0 specs, the current maximum limit for the depth is 7.
> @@ -1530,15 +1526,9 @@ static void usage(const char *prgname)
>   		"-p <devpath> Specify device path: <bus>-<port>[.<port>]...\n"
>   		"-s           skip DCD included in image\n"
>   		"-v           verbose (give multiple times to increase)\n"
> -		"--version    display version number\n"
>   		"-h           this help\n", prgname);
>   }
>   
> -static void version(const char *prgname)
> -{
> -	fprintf(stderr, "%s %s\n", prgname, UTS_RELEASE);
> -}
> -
>   int main(int argc, char *argv[])
>   {
>   	libusb_device **devs;
> @@ -1554,20 +1544,10 @@ int main(int argc, char *argv[])
>   	char *initfile = NULL;
>   	char *devpath = NULL;
>   	char *devtype = NULL;
> -	int opt_version = 0;
> -	struct option long_options[] = {
> -		{"version", no_argument, &opt_version, 1},
> -		{ }
> -	};
>   
>   	w.do_dcd_once = 1;
>   
> -	while ((opt = getopt_long(argc, argv, "cvhd:i:p:s", long_options, NULL)) != -1) {
> -		if (opt_version) {
> -			version(argv[0]);
> -			exit(EXIT_SUCCESS);
> -		}
> -
> +	while ((opt = getopt(argc, argv, "cvhd:i:p:s")) != -1) {
>   		switch (opt) {
>   		case 'c':
>   			verify = 1;

-- 
Pengutronix e.K.                | Johannes Zink                  |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |



