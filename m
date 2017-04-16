Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1czfU7-0005SK-Fn
 for barebox@lists.infradead.org; Sun, 16 Apr 2017 08:24:41 +0000
Date: Sun, 16 Apr 2017 10:24:12 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170416082412.GA9286@ravnborg.org>
References: <20170323132358.8539-1-andrew.smirnov@gmail.com>
 <20170323132358.8539-2-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170323132358.8539-2-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 01/14] at91sam9x5ek: Convert to mult-image build
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

> --- /dev/null
> +++ b/images/Makefile.at91
> @@ -0,0 +1,7 @@
> +#
> +# barebox image generation Makefile for AT91 images
> +#
> +
> +pblx-$(MACH_AT91SAM9X5EK) += start_at91sam9x5ek
> +FILE_barebox-at91sam9x5ek.img = start_at91sam9x5ek.pblx
> +image-$(MACH_AT91SAM9X5EK) += barebox-at91sam9x5ek.img

I think this should be CONFIG_MACH_AT91SAM9X5EK?

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
