Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22c.google.com ([2a00:1450:400c:c09::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYtXR-00082V-Td
 for barebox@lists.infradead.org; Thu, 25 Feb 2016 10:52:55 +0000
Received: by mail-wm0-x22c.google.com with SMTP id g62so22580923wme.1
 for <barebox@lists.infradead.org>; Thu, 25 Feb 2016 02:52:33 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CABQt-Um_GjFByhbMocKc3x1E9Wd=_gQenAPNYN66tFzFAjKQdQ@mail.gmail.com>
References: <CABQt-U=y5nfNQpb88nEF4cRkL7oLQ+a09YYspQPnhPyX4kLQgw@mail.gmail.com>
 <20160225085615.GD3939@pengutronix.de>
 <CABQt-Unp1Kacvc5jwUcwstatUtm6VQ0ROr2CHcQVtL85YizkmA@mail.gmail.com>
 <20160225095142.GF3939@pengutronix.de>
 <CABQt-Um_GjFByhbMocKc3x1E9Wd=_gQenAPNYN66tFzFAjKQdQ@mail.gmail.com>
Date: Thu, 25 Feb 2016 11:52:32 +0100
Message-ID: <CABQt-Uk2HA52EHFwB3QtQ7rK3CrKs-Ad-XoOuQ_3ct8xfVGekg@mail.gmail.com>
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

Hi again,

Thanks to you (and the filetype command), I found the root of the
problem and what happened in barebox that change the behavior.
The commit bc87f4399c6a290d820f2dd00ef772f0f3ef8767 change the
behavior of the MBR detection, and it is the right thing to do. I
discover that fatfs default behavior is to create a fdisk partition
table while I though it was a SFD one, so my addpart was wrong.

Modifiying the f_mkfs option resolve the problem.

Thank you for the help and sorry to bother you with this report.

Best regards,

--
Philippe LEDUC
ledphilippe@gmail.com


2016-02-25 11:23 GMT+01:00 Philippe Leduc <ledphilippe@gmail.com>:
>> Can you mount the same device with the -tfat option to mount?
> Well same problem: mount: No such file or directory
>
>> I assume it's a GPT partition, right?
> It isn't: there is no partition table, it is directly the FS on it.
>
>> That's your problem.With /dev/mmc2.netcom detected as MBR barebox won't
> automatically try to mount a FAT filesystem.
> Of course it is, and if the method I am currently using to create the
> FS is wrong, I'll change that, don't worry :)
>
> Regards,
>
> --
> Philippe LEDUC
> ledphilippe@gmail.com
>
>
> 2016-02-25 10:51 GMT+01:00 Sascha Hauer <s.hauer@pengutronix.de>:
>> On Thu, Feb 25, 2016 at 10:37:35AM +0100, Philippe Leduc wrote:
>>> Hi,
>>>
>>> This was working before :) (at least with barebox version 2015.10).
>>> Honestly , this may be a misconfiguration on our part (and the fact
>>> that it worked doesn't mean that it was a normal behavior).
>>>
>>> Here is the output:
>>> filetype  /dev/mmc2.netcom
>>> /dev/mmc2.netcom: MBR sector (mbr)
>>
>> That's your problem. With /dev/mmc2.netcom detected as MBR barebox won't
>> automatically try to mount a FAT filesystem.
>> What is /dev/mmc2.netcom anyway? I assume it's a GPT partition, right?
>>
>> Can you mount the same device with the -tfat option to mount?
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
