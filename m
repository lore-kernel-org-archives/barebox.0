Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22f.google.com ([2a00:1450:400c:c05::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZKkC0-0000g6-US
 for barebox@lists.infradead.org; Thu, 30 Jul 2015 09:32:03 +0000
Received: by wibxm9 with SMTP id xm9so60278201wib.1
 for <barebox@lists.infradead.org>; Thu, 30 Jul 2015 02:31:38 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1438156045-1590-1-git-send-email-s.hauer@pengutronix.de>
References: <1438156045-1590-1-git-send-email-s.hauer@pengutronix.de>
Date: Thu, 30 Jul 2015 11:31:38 +0200
Message-ID: <CAOpc7mFskW0iFB9V5Xyjxcr-N9Lx_FFyS5HjxXVpfPUA97b9QA@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
Subject: Re: [PATCH] ARM: i.MX: xload: implement esdhc xload for i.MX6
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

2015-07-29 9:47 GMT+02:00 Sascha Hauer <s.hauer@pengutronix.de>:
> + * imx6_esdhc_start_image - Load and start an image from USDHC controller
> + * @instance: The USDHC controller instance (0..4)
> + *
> + * This uses imx6_esdhc_load_image() to load an image from SPI NOR flash.

Hmm, either it's from USDHC or from SPI-NOR :-)


Question: does this load an image from an eMMC boot partition (e.g.
the tiny ones that some of them have?)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
