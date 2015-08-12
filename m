Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oi0-x229.google.com ([2607:f8b0:4003:c06::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZPZiT-0002Tx-If
 for barebox@lists.infradead.org; Wed, 12 Aug 2015 17:21:30 +0000
Received: by oihn130 with SMTP id n130so12726334oih.2
 for <barebox@lists.infradead.org>; Wed, 12 Aug 2015 10:21:08 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 12 Aug 2015 10:21:07 -0700
Message-ID: <CAE2nzutff9nhFvrgbQbBQnZ_JXAKzwwUc5V-4hVZmL9ELLyGxw@mail.gmail.com>
From: Raj Swaminathan <rajshyam@gmail.com>
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
Subject: Passing devicetree to kernel
To: barebox@lists.infradead.org

Hi,

The barebox documentation is a little vague on how the internal device
tree is actually passed to the kernel.  I was previously using this
environment setting to pass the kernel's devicetree to the kernel:
global.bootm.oftree=${PATH}/devicetree

My understanding was taking out that line would be sufficient.
Unfortunately I can no longer get my kernel to boot. It stalls here:

Loading ARM Linux zImage '/boot/linux'
commandline:  console=ttyS0,115200 earlyprintk  root=LABEL=root rw rootwait

Any help is appreciated.

Thanks,
Raj

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
