Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x244.google.com ([2607:f8b0:4001:c0b::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c3fFi-0002qq-OF
 for barebox@lists.infradead.org; Mon, 07 Nov 2016 08:26:03 +0000
Received: by mail-it0-x244.google.com with SMTP id b123so2760679itb.2
 for <barebox@lists.infradead.org>; Mon, 07 Nov 2016 00:25:42 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20161107074924.blkryleb2eb5bkhy@pengutronix.de>
References: <CAOTEMUR=FtB_Ox++XPvomyHXsk5Jcm7CG7aEM6WmN++t0211Aw@mail.gmail.com>
 <CAOTEMUQt95XDorid8sj9FHkpCpUJYnqNeRbBU+33aLYz2oM+gw@mail.gmail.com>
 <20161107074924.blkryleb2eb5bkhy@pengutronix.de>
From: Alex Vazquez <avazquez.dev@gmail.com>
Date: Mon, 7 Nov 2016 09:25:41 +0100
Message-ID: <CAOTEMUR=cw8C7K6SwUtUs1PjJB2f8OCBMsmPd1Pe_gwGWJpGfA@mail.gmail.com>
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
Subject: Re: Fwd: boot kernel with append device tree
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sasha!

> Which version are you using. Is it something older?

I am using barebox-2016.03.0


Regards!

2016-11-07 8:49 GMT+01:00 Sascha Hauer <s.hauer@pengutronix.de>:
> Hi Alex,
>
> Added the list to Cc
>
> Please configure your mailer to send plain text, then the server won't
> reject your mails.
>
> On Fri, Nov 04, 2016 at 01:10:30PM +0100, Alex Vazquez wrote:
>>    Hi, all!
>>    I have create a zImage with the device tree appended.
>>    I have removed oftree_loc in the configuration file.
>>    My problem is when I try to launch the kernel, it indicates that it has
>>    the device tree added but fails to boot.
>>
>>      barebox:/# boot
>>      booting kernel from /dev/[1]nand0.kernel.bb
>>      Loading ARM Linux zImage '/dev/[2]nand0.kernel.bb'
>>      zImage: concatenated oftree detected
>>      commandline: console=ttyS0,115200 rw ip=none ...
>>      arch_number: 0
>>
>>    If I don't removed oftree_loc in the configuration file. Load oftree
>>    (nand) and boot fine.
>>
>>      barebox:/# boot
>>      booting kernel from /dev/[3]nand0.kernel.bb
>>      Loading ARM Linux zImage '/dev/[4]nand0.kernel.bb'
>>      zImage: concatenated oftree detected
>>      Loading devicetree from '/dev/[5]nand0.oftree.bb'
>>      commandline: console=ttyS0,115200 rw ip=none ...
>>      Booting Linux on physical CPU 0x0
>>
>>    Do I have to configure something more in Barebox?
>
> Which version are you using. Is it something older?
>
>>    Thanks!
>>    Regards!
>>    P.D
>>    I have enabled CONFIG_ARM_APPENDED_DTB and I create the new zimage with
>>    (cat zImage <filename>.dtb > zImage_w_dtb )
>>    P.D.2.
>>    I have a little problem and i can't send email to list.
>>
>>       Delivery to the following recipient failed permanently:
>>           [6]barebox@lists.infradead.org
>>      Technical details of permanent failure:
>>      Google tried to deliver your message, but it was rejected by the server
>>      for the recipient domain [7]lists.infradead.org by
>>      [8]bombadil.infradead.org. [2001:1868:205::9].
>>      The error that the other server returned was:
>>      550-Mailing lists do not accept HTML mail. See
>        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
