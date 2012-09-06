Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9ZXT-0002Ht-Oh
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 10:42:24 +0000
Received: from coredoba.hi.pengutronix.de ([2001:6f8:1178:2:219:99ff:fe56:8d7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jlu@pengutronix.de>) id 1T9ZXR-0008MM-Qq
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 12:42:21 +0200
Received: from jlu by coredoba.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jlu@pengutronix.de>) id 1T9ZXR-0002TU-GX
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 12:42:21 +0200
Message-ID: <1346928141.3775.5.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Thu, 06 Sep 2012 12:42:21 +0200
In-Reply-To: <1346911500-12902-4-git-send-email-plagnioj@jcrosoft.com>
References: <20120906060058.GE4761@game.jcrosoft.org>
 <1346911500-12902-1-git-send-email-plagnioj@jcrosoft.com>
 <1346911500-12902-4-git-send-email-plagnioj@jcrosoft.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH 04/12] introduce image_renderer framework
To: barebox@lists.infradead.org

Hi!

On Thu, 2012-09-06 at 08:04 +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> diff --git a/lib/Kconfig b/lib/Kconfig
> index 93e360b..e74189d 100644
> --- a/lib/Kconfig
> +++ b/lib/Kconfig
> @@ -38,6 +38,9 @@ config BITREV
>  config QSORT
>  	bool
>  
> +config IMAGE_RENDERER
> +	bool
> +
>  config BMP
>  	bool
>  

> +	enum filetype type = file_detect_type(buf);

You're using functions from common/filetype.c but you do not declare the
dependency on FILETYPE in Kconfig.

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
