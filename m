Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22f.google.com ([2a00:1450:4013:c00::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vdzri-0001V6-58
 for barebox@lists.infradead.org; Wed, 06 Nov 2013 09:57:34 +0000
Received: by mail-ee0-f47.google.com with SMTP id c13so2379886eek.20
 for <barebox@lists.infradead.org>; Wed, 06 Nov 2013 01:57:10 -0800 (PST)
Date: Wed, 6 Nov 2013 11:04:02 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20131106100401.GA15254@x61s.campuswlan.hs-rm.de>
References: <1383606064-30494-1-git-send-email-a.heider@gmail.com>
 <20131106094628.GH24559@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131106094628.GH24559@pengutronix.de>
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
Subject: Re: [PATCH v2 0/6] BCM2835 / simple framebuffer support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Wed, Nov 06, 2013 at 10:46:28AM +0100, Sascha Hauer wrote:
> Hi Andre,
> @@ -163,6 +163,13 @@ int register_framebuffer(struct fb_info *info)
>  	if (ret)
>  		goto err_unregister;
>  
> +	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_SIMPLEFB)) {
> +		ret = fb_register_simplefb(info);
> +		if (ret)
> +			dev_err(&info->dev, "failed to register simplefb: %s\n",
> +					strerror(-ret));
maybe we should return ret here?

> +	}
> +
>  	return 0;
>  
>  err_unregister:
> diff --git a/drivers/video/simplefb.c b/drivers/video/simplefb.c

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
