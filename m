Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZPubX-0002bG-Cw
 for barebox@lists.infradead.org; Thu, 13 Aug 2015 15:39:43 +0000
Message-ID: <1439480360.13210.22.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 13 Aug 2015 17:39:20 +0200
In-Reply-To: <CAE2nzutff9nhFvrgbQbBQnZ_JXAKzwwUc5V-4hVZmL9ELLyGxw@mail.gmail.com>
References: <CAE2nzutff9nhFvrgbQbBQnZ_JXAKzwwUc5V-4hVZmL9ELLyGxw@mail.gmail.com>
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
Subject: Re: Passing devicetree to kernel
To: Raj Swaminathan <rajshyam@gmail.com>
Cc: barebox@lists.infradead.org

Hi Raj,

Am Mittwoch, den 12.08.2015, 10:21 -0700 schrieb Raj Swaminathan:
> Hi,
> 
> The barebox documentation is a little vague on how the internal device
> tree is actually passed to the kernel.  I was previously using this
> environment setting to pass the kernel's devicetree to the kernel:
> global.bootm.oftree=${PATH}/devicetree
> 
> My understanding was taking out that line would be sufficient.
> Unfortunately I can no longer get my kernel to boot. It stalls here:
> 
> Loading ARM Linux zImage '/boot/linux'
> commandline:  console=ttyS0,115200 earlyprintk  root=LABEL=root rw rootwait
> 
Can you be more specific? What's the system/architecture you are using?
Which version of barebox is this and which kernel version are you trying
to start?

Regards,
Lucas
-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
