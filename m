Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x243.google.com ([2a00:1450:4010:c04::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bFNaD-0005py-Oy
 for barebox@lists.infradead.org; Tue, 21 Jun 2016 15:27:22 +0000
Received: by mail-lb0-x243.google.com with SMTP id w10so2288035lbo.1
 for <barebox@lists.infradead.org>; Tue, 21 Jun 2016 08:27:01 -0700 (PDT)
Received: from [192.168.1.100] ([212.225.153.123])
 by smtp.gmail.com with ESMTPSA id u4sm69209413wjz.4.2016.06.21.08.26.58
 for <barebox@lists.infradead.org> (version=TLSv1/SSLv3 cipher=OTHER);
 Tue, 21 Jun 2016 08:26:58 -0700 (PDT)
From: ner0 <avazquez.dev@gmail.com>
Message-ID: <57695CC0.20403@gmail.com>
Date: Tue, 21 Jun 2016 17:26:56 +0200
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Support USB port SAMA5D3
To: barebox@lists.infradead.org

Hi, All!

I know that it is possible detect usb (mass storage devices) and mount 
it using Barebox.

I am trying detect a pen drive in a sama5d3 Xplained but it don't work.
I use the command detect -l  but it seems that USB is not detectable.
I've taken a look at the file "init.c" but there is no declaration of 
USB ports.
I have been modifying the code and have added support for USB (basing on 
at91sam9x5k) but can't get it to work.
The driver started correctly
atmel-ehci atmel-ehci: USB EHCI 1.00
when I run "usb" to detect the devices gives me the following message:

# usb
USB: scanning bus for devices...
atmel-ehci atmel-ehci: fail to reset
0 USB Device(s) found

Am I correctly defining the USB port?
Did I miss something?

I add the patch to the version barebox-2016.06.0
Code (patch)
http://pastebin.com/FN1hcgzR

Thanks!
Regards!


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
