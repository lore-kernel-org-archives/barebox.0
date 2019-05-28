Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVVj5-0006Ii-F8
 for barebox@lists.infradead.org; Tue, 28 May 2019 06:36:49 +0000
Message-ID: <6e4fd1a87381c4a95a2597729e7f1e0858f63c0b.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 28 May 2019 08:36:43 +0200
In-Reply-To: <3d3cf5bb-b119-ee89-a5ed-7a210f7f285b@phytec.de>
References: <1558697578-69121-1-git-send-email-m.otto@phytec.de>
 <0552fb12e541c7e93ee389bccba26b5fede7b995.camel@pengutronix.de>
 <3d3cf5bb-b119-ee89-a5ed-7a210f7f285b@phytec.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH 1/4] Makefile-imx: replace static variant to dynamic for
 signing images
To: Maik Otto <m.otto@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, 2019-05-27 at 15:08 +0200, Maik Otto wrote:
> Hi Mr. Czerwinski,
> 
> i will change the patches and make checkboxes for the different
> images.
> my idea is to use different file extensions for the images
> for example
> .img    for normal
> .simg    for signed
> .esimg    for encrypted signed
> .usimg     for usb signed
> 
> the other idea is to use different filenames for the images.
> for example
> -s.img
> -es.img
> -us.img
> 
> my favorite is to use different file extensions for the images, but
> im
> not shure is this ok or can this have other negative effects.
> so the standard extension is .img
> What do you think about the file name or file extension?

Hm, I'm split on this. Normal images and signed images can be used in
the same way, however booting a signed image using imx-usb-loader is
only possible with the usb-signed image. Therefore the different file
extensions are sensible.
On the other hand all images contain the same data, keeping that in
mind it does not make sense to provide different file extensions.
I like a verbose filename version best, i.e:
-signed.img
-encrypted-signed.img
-signed-usb.img

Best Regards,
Rouven Czerwinski
-- 
Pengutronix e.K.                           |            		 |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
