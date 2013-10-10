Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx8-out.webonline.biz ([41.86.105.118]
 helo=assp01.webonline.biz)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VU5YL-0007HZ-S7
 for barebox@lists.infradead.org; Thu, 10 Oct 2013 02:00:38 +0000
Received: from ASSP.nospam (localhost.localdomain [127.0.0.1])
 by assp01.webonline.biz (Postfix) with ESMTP id 39DD46A6CF
 for <barebox@lists.infradead.org>; Thu, 10 Oct 2013 04:00:08 +0200 (SAST)
Date: Wed, 09 Oct 2013 18:59:54 -0700
From: Ivor Kruger <ivor@veriline.co.za>
Message-ID: <CE7B57F6.8D31%ivor@veriline.co.za>
In-Reply-To: <CE7B48EC.8D30%ivor@veriline.co.za>
Mime-version: 1.0
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
Subject: FW: Writing to I2C device during Barebox boot 
To: barebox@lists.infradead.org

I can hardly believe it myself but I have succeeded (i think) in writing a
new driver for a I2C chip I use.
I probe the driver/device during boot and all seems well.
The device shows up in the device tree.
So before the init process for the board ends, I would like to write a few
values to the device (it controls the PSU, thus the reason for doing it in
barebox).

I want to do this in the board.c file at the end of the
pcm049_devices_init function. Is this the right place?

But this is where my linux knowledge is letting me down.

How do I get a "handle" to the device in order to call the write_reg
function?

Your pointers and help is much appreciated.




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
