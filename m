Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x231.google.com ([2a00:1450:400c:c09::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYsRs-0004nG-Be
 for barebox@lists.infradead.org; Thu, 25 Feb 2016 09:43:05 +0000
Received: by mail-wm0-x231.google.com with SMTP id b205so23704260wmb.1
 for <barebox@lists.infradead.org>; Thu, 25 Feb 2016 01:42:44 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CABQt-Unp1Kacvc5jwUcwstatUtm6VQ0ROr2CHcQVtL85YizkmA@mail.gmail.com>
References: <CABQt-U=y5nfNQpb88nEF4cRkL7oLQ+a09YYspQPnhPyX4kLQgw@mail.gmail.com>
 <20160225085615.GD3939@pengutronix.de>
 <CABQt-Unp1Kacvc5jwUcwstatUtm6VQ0ROr2CHcQVtL85YizkmA@mail.gmail.com>
Date: Thu, 25 Feb 2016 10:42:42 +0100
Message-ID: <CABQt-UkPF+RqCp7n1W-QzRXvpk4aSjjEpSVVGe2oSYkt-gVf5A@mail.gmail.com>
From: Philippe Leduc <ledphilippe@gmail.com>
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
Subject: Re: mount fat regression
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

I loaded our 'old' barebox (barebox 2015.10.0-01455-g90387ba) and here
is the output of filetype (same board):

filetype /dev/mmc2.netcom
/dev/mmc2.netcom: FAT filesytem (fat)

Philippe LEDUC
ledphilippe@gmail.com


2016-02-25 10:37 GMT+01:00 Philippe Leduc <ledphilippe@gmail.com>:
> Hi,
>
> This was working before :) (at least with barebox version 2015.10).
> Honestly , this may be a misconfiguration on our part (and the fact
> that it worked doesn't mean that it was a normal behavior).
>
> Here is the output:
> filetype  /dev/mmc2.netcom
> /dev/mmc2.netcom: MBR sector (mbr)
>
> And it is cleary different with a working partition:
> filetype /dev/mmc1.0
> /dev/mmc1.0: FAT filesytem (fat)
>
> I format the partitions with fatfs f_mkfs, and I do not use f_disk to
> create partition table. This could be the problem. I'll check that
> point.
>
> Best regards,
>
> --
> Philippe LEDUC
> ledphilippe@gmail.com
>
>
> 2016-02-25 9:56 GMT+01:00 Sascha Hauer <s.hauer@pengutronix.de>:
>> On Wed, Feb 24, 2016 at 05:44:42PM +0100, Philippe Leduc wrote:
>>> Hi,
>>>
>>> It seems that there is a regression in the mount command for fat
>>> filesystem: if I try to mount a partition that is formatted with
>>> fatfs, I got this error:
>>>
>>> mount /dev/mmc2.netcom
>>> mount: No such file or directory
>>>
>>> I do not have the problem with a fat formatted with Windows or Linux.
>>>
>>> Do you have an idea?
>>
>> Are you sure this is a regression? Did this work before? I don't think
>> that FAT support in general is broken, it's probably something with your
>> special setup.
>>
>> What does 'filetype /dev/mmc2.netcom' give you?
>>
>> Sascha
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
>> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
