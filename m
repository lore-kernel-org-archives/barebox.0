Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x232.google.com ([2a00:1450:400c:c09::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b166a-0000Hv-D8
 for barebox@lists.infradead.org; Fri, 13 May 2016 05:57:45 +0000
Received: by mail-wm0-x232.google.com with SMTP id a17so11663073wme.0
 for <barebox@lists.infradead.org>; Thu, 12 May 2016 22:57:23 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
In-Reply-To: <20160512114411.GA18890@book>
References: <20160512114411.GA18890@book>
Date: Fri, 13 May 2016 07:57:19 +0200
Message-ID: <87mvnu8pq8.fsf@gmail.com>
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
Subject: Re: Is barebox support usb mass storeage?
To: DU HUANPENG <do_not_rep1y@163.com>, barebox <barebox@lists.infradead.org>

> Hi, is barebox now supports load images from usb disk?

better-> Hi, does barebox now support load images from USB?


Yes, this is supported. At least for my hardware (i.MX6).


Basically you first need to detect the USB stick. After this you mount
it and specify the path to vmlinuz, initrd, dtb etc like you'd when you
boot from eMMC or SD-Card.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
