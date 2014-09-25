Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XXFuz-0007K4-FH
 for barebox@lists.infradead.org; Thu, 25 Sep 2014 20:45:37 +0000
Message-ID: <1411678267.2207.7.camel@tellur.intern.lynxeye.de>
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 25 Sep 2014 22:51:07 +0200
In-Reply-To: <4F988940-A208-4D81-95E0-BBD3FC3C48CF@kamama.com>
References: <2F9C706F-8EBC-453B-8BA1-116680C7926A@kamama.com>
 <1411632866.2207.2.camel@tellur.intern.lynxeye.de>
 <AE2FDA55-436B-4DF7-AE47-9B32D0CFFAC7@kamama.com>
 <4F988940-A208-4D81-95E0-BBD3FC3C48CF@kamama.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: nvidia jetson tk1 help
To: Ryan Du Bois <rdub@kamama.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Am Donnerstag, den 25.09.2014, 10:55 -0700 schrieb Ryan Du Bois:
> Okay, that worked, but I have to use the *-usbloader.img image.  The emmc image doesn't output anything over UART.  
> 
> Is that expected?
> 
That's expected. As said in the docs the images for Tegra are specific
for the boot source. If you are starting with tegrarcm this would be the
-usbloader boot source. If you want to persist barebox on the EMMC by
copying the image to the boot0 partition you need to use the -emmc
image, the -usbloader image won't come up there.

If the doc isn't clear enough in that regard and you have suggestions on
how to improve this: patches welcome. :)

Regards,
Lucas



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
