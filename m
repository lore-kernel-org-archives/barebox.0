Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ob0-x236.google.com ([2607:f8b0:4003:c01::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZPvqS-0000jw-Lz
 for barebox@lists.infradead.org; Thu, 13 Aug 2015 16:59:13 +0000
Received: by obnw1 with SMTP id w1so41556076obn.3
 for <barebox@lists.infradead.org>; Thu, 13 Aug 2015 09:58:51 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1439480360.13210.22.camel@pengutronix.de>
References: <CAE2nzutff9nhFvrgbQbBQnZ_JXAKzwwUc5V-4hVZmL9ELLyGxw@mail.gmail.com>
 <1439480360.13210.22.camel@pengutronix.de>
Date: Thu, 13 Aug 2015 09:58:51 -0700
Message-ID: <CAE2nzut0jYEGFSXdH72ZYaquH+Ty_-o1N2joUuwdH+S26omrmw@mail.gmail.com>
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
Subject: Re: Passing devicetree to kernel
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Lucas,

I am using Altera's cyclone 5 SoCFPGA.

Barebox version 2015.04.0
Linux is rocketboards version 3.18.0

I put some debug statements into the code at common/bootm.c and found
that the internal device tree is being used and it is the right
version. The problem is probably in the way I'm manipulating the
devicetree in barebox. I'm trying to enable some devices and fill up
the mac address field in barebox before i hand off the same devicetree
to the kernel.  One way i have gotten around the problem is to keep 2
versions of the devicetree but have barebox open the kernel devicetree
file and modify it.

Best,
raj











On Thu, Aug 13, 2015 at 8:39 AM, Lucas Stach <l.stach@pengutronix.de> wrote:
> Hi Raj,
>
> Am Mittwoch, den 12.08.2015, 10:21 -0700 schrieb Raj Swaminathan:
>> Hi,
>>
>> The barebox documentation is a little vague on how the internal device
>> tree is actually passed to the kernel.  I was previously using this
>> environment setting to pass the kernel's devicetree to the kernel:
>> global.bootm.oftree=${PATH}/devicetree
>>
>> My understanding was taking out that line would be sufficient.
>> Unfortunately I can no longer get my kernel to boot. It stalls here:
>>
>> Loading ARM Linux zImage '/boot/linux'
>> commandline:  console=ttyS0,115200 earlyprintk  root=LABEL=root rw rootwait
>>
> Can you be more specific? What's the system/architecture you are using?
> Which version of barebox is this and which kernel version are you trying
> to start?
>
> Regards,
> Lucas
> --
> Pengutronix e.K.             | Lucas Stach                 |
> Industrial Linux Solutions   | http://www.pengutronix.de/  |
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
