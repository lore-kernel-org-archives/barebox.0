Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f174.google.com ([209.85.212.174])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YIhAv-0008LI-6g
 for barebox@lists.infradead.org; Tue, 03 Feb 2015 17:22:09 +0000
Received: by mail-wi0-f174.google.com with SMTP id n3so26105832wiv.1
 for <barebox@lists.infradead.org>; Tue, 03 Feb 2015 09:21:45 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <54D09205.4070704@atmel.com>
References: <CA+nEJin3xNxtwkhEzPgcfNvP2wiuGxqhdB8cLn71LWC1Y5k-FQ@mail.gmail.com>
 <20150203085931.GI12209@pengutronix.de>
 <54D09205.4070704@atmel.com>
Date: Tue, 3 Feb 2015 10:21:45 -0700
Message-ID: <CA+nEJi=x0PH1Hk0LpB+ELmi8bbjyz3s_KAGeYh-aPpi62Rm9VA@mail.gmail.com>
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
To: Bo Shen <voice.shen@atmel.com>
Cc: barebox@lists.infradead.org

> Couldn't you add "ubi.mtd=8 ubi.mtd=9" and rootfs_mtdblock_nand=10
> instead?

I had thought that barebox had a need to know where the rootfs was
located, which is why I hadn't tried that.  Turns out that it worked
perfectly for the ubi.mtd settings.  Thank you!  Any idea how
"noinitrd" is getting added to the bootargs?  I need to replace that
with a "rw".

> Note that we started with trying to build a generic default environment
> which at some point grew into a monster. We now have the 2nd version of
> the generic default environment which is much better. Unfortunately
> usage of this new default environment is board specific and your board
> isn't converted yet. If you are interested I can show you the steps to
> convert it.

I would be interested in helping with this conversion.

Thanks,

Doug

On Tue, Feb 3, 2015 at 2:16 AM, Bo Shen <voice.shen@atmel.com> wrote:
> Hi Sascha,
>
> On 02/03/2015 04:59 PM, Sascha Hauer wrote:
>>
>> Note that we started with trying to build a generic default environment
>> which at some point grew into a monster. We now have the 2nd version of
>> the generic default environment which is much better. Unfortunately
>> usage of this new default environment is board specific and your board
>> isn't converted yet. If you are interested I can show you the steps to
>> convert it.
>
>
> I am interested in this, could you show me the steps to convert it?
> Thanks.
>
>> Sascha
>
>
> Best Regards,
> Bo Shen

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
