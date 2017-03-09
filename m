Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cltmR-0004mG-3f
 for barebox@lists.infradead.org; Thu, 09 Mar 2017 08:50:41 +0000
Received: from player718.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with ESMTP id 30EEE6083B
 for <barebox@lists.infradead.org>; Thu,  9 Mar 2017 09:50:14 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <20170309084631.bkla463pgm5clgwv@pengutronix.de>
Date: Thu, 9 Mar 2017 16:49:58 +0800
Message-Id: <F5D1D6DE-DCE9-45F3-A116-36F36135501F@jcrosoft.com>
References: <20170306050211.GH4120@mail.ovh.net>
 <1488776651-7555-1-git-send-email-plagnioj@jcrosoft.com>
 <20170309084631.bkla463pgm5clgwv@pengutronix.de>
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
Subject: Re: [PATCH 1/2] video: add EFI Graphics Output Protocol support
To: Michael Olbrich <m.olbrich@pengutronix.de>
Cc: barebox@lists.infradead.org


> On Mar 9, 2017, at 4:46 PM, Michael Olbrich <m.olbrich@pengutronix.de> wrote:
> 
> On Mon, Mar 06, 2017 at 06:04:10AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
>> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
>> ---
>> drivers/video/Kconfig   |   4 +
>> drivers/video/Makefile  |   2 +
>> drivers/video/efi_gop.c | 267 ++++++++++++++++++++++++++++++++++++++++++++++++
>> 3 files changed, 273 insertions(+)
>> create mode 100644 drivers/video/efi_gop.c
>> 
> [...]
>> diff --git a/drivers/video/efi_gop.c b/drivers/video/efi_gop.c
>> new file mode 100644
>> index 000000000..ccb4af3d9
> [...]
>> +static struct fb_ops efi_gop_ops = {
>> +	.fb_activate_var = efi_gop_fb_activate_var,
>> +};
> 
> This is missing the fb_enable/fb_disable callbacks. Both are not optional.
> The framebuffer console is broken without this.
you can not enable or disable them

so this need to be fix at framework level not driver

Best Regards,
J.
> 
> Michael
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
