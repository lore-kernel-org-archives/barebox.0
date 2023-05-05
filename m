Delivery-date: Fri, 05 May 2023 10:03:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puqQ1-005f6L-Kp
	for lore@lore.pengutronix.de; Fri, 05 May 2023 10:03:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puqPz-00055K-19
	for lore@pengutronix.de; Fri, 05 May 2023 10:03:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8dhtLUIUdYJlg5CgavRurki5cTHNWBHt1PH93y+O1Tw=; b=vZZCtNBCpwEMcessRXuttlFVqk
	KRWsWUFhKot0zVCRT+rHcTYHY4p2K6d81Ji63BBx9QIRdq8MFWR2FJOYIpIIRKTgznGAc9ZSCGoOu
	+ysZplTT2cDVH4bpLnuyAt0LHevrccK8kpeDTnbcRA6unErX9ckf7ea79kOKASXAi6enlAJ5N7RMz
	4P8b5bEisQGS6yl4lPMEPEyuTS4qTT0F3/byN8/42b43BTPeUVze+QtMOrei6HkOieEPVDoHVu2Pt
	Fz14AlleBVc9/vXb91JD4Z3nqv3mTJj5G4Vx8mLc2gI+06E/X6NTEgGqYAy1EF0bFL18IBTDzjKa4
	ZPC7cG7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puqOy-009ysY-0v;
	Fri, 05 May 2023 08:02:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puqOv-009ys5-2G
	for barebox@lists.infradead.org;
	Fri, 05 May 2023 08:02:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1puqOt-0004jX-7J; Fri, 05 May 2023 10:02:47 +0200
Message-ID: <68c294c2-e2e2-b305-acf8-5ecd14b82991@pengutronix.de>
Date: Fri, 5 May 2023 10:02:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Johannes Zink <j.zink@pengutronix.de>, barebox@lists.infradead.org
Cc: kernel@pengutronix.de, patchwork-jzi@pengutronix.de
References: <20230505075308.1015157-1-j.zink@pengutronix.de>
 <20230505075308.1015157-4-j.zink@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230505075308.1015157-4-j.zink@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_010249_778526_874923FA 
X-CRM114-Status: GOOD (  23.07  )
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
X-Spam-Status: No, score=-7.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1 3/3] imx-usb-loader: add commandline option for
 displaying version number
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 05.05.23 09:53, Johannes Zink wrote:
> For debugging purposes of the imx-usb-loader it can be helpful to
> display the version number as a commandline option.

This breaks builds outside of Kbuild, which is the only way to build a
(currently non-functional) imx-usb-loader for Windows. See

https://lore.barebox.org/barebox/20230411093844.1297004-1-a.fatoum@pengutronix.de/

What you may be able to do instead is -include $(objtree)/include/generated/utsrelease.h

and then have an

  #ifndef UTS_RELEASE
  #define UTS_RELEASE "external" // or something
  #endif

at the start of the file?

(Not sure how long GCC has had support for __has_include)

Cheers,
Ahmad

> 
> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
> ---
>  scripts/imx/Makefile         |  2 +-
>  scripts/imx/imx-usb-loader.c | 21 ++++++++++++++++++++-
>  2 files changed, 21 insertions(+), 2 deletions(-)
> 
> diff --git a/scripts/imx/Makefile b/scripts/imx/Makefile
> index dbfa82910a55..43584427d27d 100644
> --- a/scripts/imx/Makefile
> +++ b/scripts/imx/Makefile
> @@ -3,7 +3,7 @@
>  hostprogs-always-$(CONFIG_ARCH_IMX_IMXIMAGE)	+= imx-image
>  hostprogs-always-$(CONFIG_ARCH_IMX_USBLOADER)	+= imx-usb-loader
>  
> -HOSTCFLAGS_imx-usb-loader.o = `pkg-config --cflags libusb-1.0`
> +HOSTCFLAGS_imx-usb-loader.o = `pkg-config --cflags libusb-1.0` -I$(objtree)/include/generated
>  HOSTLDLIBS_imx-usb-loader  = `pkg-config --libs libusb-1.0`
>  
>  imx-usb-loader-target-userccflags += `$(CROSS_PKG_CONFIG) --cflags libusb-1.0`
> diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
> index e49c0bea6ca4..d4f876bb1c99 100644
> --- a/scripts/imx/imx-usb-loader.c
> +++ b/scripts/imx/imx-usb-loader.c
> @@ -32,6 +32,7 @@
>  #include <libusb.h>
>  #include <getopt.h>
>  #include <linux/kernel.h>
> +#include <utsrelease.h>
>  
>  #include "../common.h"
>  #include "../compiler.h"
> @@ -1526,9 +1527,17 @@ static void usage(const char *prgname)
>  		"-p <devpath> Specify device path: <bus>-<port>[.<port>]...\n"
>  		"-s           skip DCD included in image\n"
>  		"-v           verbose (give multiple times to increase)\n"
> +		"--version    display version number\n"
>  		"-h           this help\n", prgname);
>  }
>  
> +static void version(const char *prgname)
> +{
> +	fprintf(stderr, "%s %s\n",
> +		prgname, UTS_RELEASE);
> +	exit(EXIT_SUCCESS);
> +}
> +
>  int main(int argc, char *argv[])
>  {
>  	libusb_device **devs;
> @@ -1544,10 +1553,20 @@ int main(int argc, char *argv[])
>  	char *initfile = NULL;
>  	char *devpath = NULL;
>  	char *devtype = NULL;
> +	int opt_version = 0;
> +	struct option long_options[] = {
> +		{"version", no_argument, &opt_version, 1},
> +		{ }
> +	};
>  
>  	w.do_dcd_once = 1;
>  
> -	while ((opt = getopt(argc, argv, "cvhd:i:p:s")) != -1) {
> +	while ((opt = getopt_long(argc, argv, "cvhd:i:p:s", long_options, NULL)) != -1) {
> +		if (opt_version) {
> +			version(argv[0]);
> +			exit(EXIT_SUCCESS);
> +		}
> +
>  		switch (opt) {
>  		case 'c':
>  			verify = 1;

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



