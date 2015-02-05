Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f170.google.com ([74.125.82.170])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YJUlo-00063F-OU
 for barebox@lists.infradead.org; Thu, 05 Feb 2015 22:19:33 +0000
Received: by mail-we0-f170.google.com with SMTP id q59so1439744wes.1
 for <barebox@lists.infradead.org>; Thu, 05 Feb 2015 14:19:10 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CA+nEJingM_3v2-d2OpOfARc-G6sVG_GFzjDh60xXQM4=2tgzSQ@mail.gmail.com>
References: <CA+nEJin3xNxtwkhEzPgcfNvP2wiuGxqhdB8cLn71LWC1Y5k-FQ@mail.gmail.com>
 <20150203085931.GI12209@pengutronix.de>
 <54D09205.4070704@atmel.com>
 <CA+nEJi=x0PH1Hk0LpB+ELmi8bbjyz3s_KAGeYh-aPpi62Rm9VA@mail.gmail.com>
 <20150203193359.GO12209@pengutronix.de>
 <CA+nEJingM_3v2-d2OpOfARc-G6sVG_GFzjDh60xXQM4=2tgzSQ@mail.gmail.com>
Date: Thu, 5 Feb 2015 15:19:08 -0700
Message-ID: <CA+nEJinMJqBSaFBkAY26gb1SEueL+Fb_B7GCCM-tJLq+9NfQLA@mail.gmail.com>
From: Doug Brainard <dbrainard@brainardinsight.com>
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
Subject: Re: Passing kernel arguments - SAMA5D4EK
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha,

Have you had a chance to look into what I need to do to convert to the
new environment?

Also, would it be beneficial to add the ability to load more than one
partition to the bootargs for the old environment setup?  I've almost
finished the boot script modifications to allow for it while still
being backwards compatible.  I can push it back up to the repository
when finished if interested.

Doug

On Tue, Feb 3, 2015 at 2:07 PM, Doug Brainard
<dbrainard@brainardinsight.com> wrote:
>> It comes from /env/bin/boot. You can checkout the sourcecode and grep
>> for it since we do not have any search function in barebox.
>
> Ah, that's the piece I was missing to understand how the bootargs were
> being created and what keywords did what.
>
>> Thanks. I'll prepare a mail tomorrow.
>
> I'll press pause on what I'm doing with this then, and I'll wait on
> receiving that.
>
> Thanks again for your help,
>
> Doug
>
>
> On Tue, Feb 3, 2015 at 12:33 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
>> On Tue, Feb 03, 2015 at 10:21:45AM -0700, Doug Brainard wrote:
>>> > Couldn't you add "ubi.mtd=8 ubi.mtd=9" and rootfs_mtdblock_nand=10
>>> > instead?
>>>
>>> I had thought that barebox had a need to know where the rootfs was
>>> located, which is why I hadn't tried that.  Turns out that it worked
>>> perfectly for the ubi.mtd settings.  Thank you!  Any idea how
>>> "noinitrd" is getting added to the bootargs?  I need to replace that
>>> with a "rw".
>>
>> It comes from /env/bin/boot. You can checkout the sourcecode and grep
>> for it since we do not have any search function in barebox.
>>
>>>
>>> > Note that we started with trying to build a generic default environment
>>> > which at some point grew into a monster. We now have the 2nd version of
>>> > the generic default environment which is much better. Unfortunately
>>> > usage of this new default environment is board specific and your board
>>> > isn't converted yet. If you are interested I can show you the steps to
>>> > convert it.
>>>
>>> I would be interested in helping with this conversion.
>>
>> Thanks. I'll prepare a mail tomorrow.
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
