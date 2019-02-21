Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwlTf-0007tW-PA
 for barebox@lists.infradead.org; Thu, 21 Feb 2019 10:21:17 +0000
Received: from birne.hi.pengutronix.de ([2001:67c:670:100:feaa:14ff:fe28:e6f5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <a.fatoum@pengutronix.de>) id 1gwlTZ-0005uj-Fp
 for barebox@lists.infradead.org; Thu, 21 Feb 2019 11:21:09 +0100
References: <AM0PR08MB384249D802EC267A6302BAE7EB7E0@AM0PR08MB3842.eurprd08.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <ecafbb9b-6e24-a4ff-5203-fe4659e2dce1@pengutronix.de>
Date: Thu, 21 Feb 2019 11:21:09 +0100
MIME-Version: 1.0
In-Reply-To: <AM0PR08MB384249D802EC267A6302BAE7EB7E0@AM0PR08MB3842.eurprd08.prod.outlook.com>
Content-Language: en-US
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
Subject: Re: i.MX6ul USB serial downloader and Barebox
To: barebox@lists.infradead.org

Hello Patrick,

On 2/21/19 11:01 AM, Patrick Schneider wrote:
> Hi guys,
> I'm trying to find out if the following is possible:
> In a production environment, there is only the USB connection present, no console access to the device. 
> The USB serial downloader mode starts and I am able to load a barebox image to the i.MX6ul RAM. That works either with MFGTools or uuu.
> But how to proceed from there? Is there any way to really flash the barebox image and also the rootFS into a onboard NAND over the USB serial downloader mode with barebox in RAM?
> All examples, guides and tutorials use u-boot so I'm kinda stuck here.

You can
- configure a barebox update handler in your board's code
- export it as Android Fastboot gadget on that USB port
- configure the environment so the gadget is active by default

that way the flashing sequence is:
- use imx-usb-load to load the barebox
- use fastboot to flash the barebox persistently
- use fastboot to flash the rootfs


Cheers
Ahmad 

> 
> Thanks and regards,
> Patrick
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
