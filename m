Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x234.google.com ([2a00:1450:4013:c00::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WfSL6-0007yv-FM
 for barebox@lists.infradead.org; Wed, 30 Apr 2014 11:06:13 +0000
Received: by mail-ee0-f52.google.com with SMTP id e53so1193521eek.25
 for <barebox@lists.infradead.org>; Wed, 30 Apr 2014 04:05:50 -0700 (PDT)
Date: Wed, 30 Apr 2014 13:05:44 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140430110541.GA16756@omega>
References: <1398852096-32129-1-git-send-email-c.hemp@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1398852096-32129-1-git-send-email-c.hemp@phytec.de>
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
Subject: Re: [PATCH v3] imx6: Add support for phyCARD-i.MX6
To: Christian Hemp <c.hemp@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 30, 2014 at 12:01:36PM +0200, Christian Hemp wrote:
> Add support for Phytec phyCARD-i.MX6.
> 	- 1GB RAM on two banks
> 	- 1GB RAM on one bank
> 	- 2GB RAM on two banks
> 
> Signed-off-by: Christian Hemp <c.hemp@phytec.de>
> ---
> v2: - remove IP addresses from env
>     - remove boot/net
>     - add ethernet pinmux to pcaaxl3
>     - add common function to lowlevel.c
> v3: - remove blank line at EOF
>    - Change ENET_PINGRP to 4
> 
...
> +};
> diff --git a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi b/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
> new file mode 100644
> index 0000000..edbc714
> --- /dev/null
> +++ b/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
> @@ -0,0 +1,147 @@
> +/*
> + * Copyright 2014444 Christian Hemp, Phytec Messtechnik GmbH
> + *

turn off your flux capacitor and come back in the 21th century!

What I mean is:

s/2014444/2014

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
