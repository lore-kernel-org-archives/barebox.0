Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-da0-f49.google.com ([209.85.210.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOyUX-0004e7-Fx
 for barebox@lists.infradead.org; Thu, 18 Oct 2012 22:23:02 +0000
Received: by mail-da0-f49.google.com with SMTP id q27so3824635daj.36
 for <barebox@lists.infradead.org>; Thu, 18 Oct 2012 15:22:59 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20121015072726.GL27665@pengutronix.de>
References: <1350260560-15528-1-git-send-email-vicencb@gmail.com>
 <20121015072726.GL27665@pengutronix.de>
Date: Fri, 19 Oct 2012 00:22:58 +0200
Message-ID: <CAAMcf8DqMB=j7BwXEW-rjWOisRRGLsYScL9juoE+cNT1Pb6RvA@mail.gmail.com>
From: vj <vicencb@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/6] archosg9: improve support for tablet
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Oct 15, 2012 at 9:27 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi vj,
>
> On Mon, Oct 15, 2012 at 02:22:34AM +0200, Vicente Bergas wrote:
>> This patch series solves/improves/implements:
>>  ttyOxxx are 0 based, so change ttyO1 to ttyO0
>>  change speed to 115200, there are some issues at Mbaud speed in linux
>>  make the archos environment more flexible: initrd and zImage names are overwritable
>>  added definition of PSR_I_BIT and some others, remaining PSR bits renamed to match the linux ones
>>  disable interrupts at barebox exit
>>  speed up initrd transfer
>>  cleaner voltage switching
>
> I applied up to 4/6.
>
>>
>> For the "OMAP4: clean voltage switch" patch I'm not sure if the changes are compatible with other boards.
>>
>> Vicente Bergas (6):
>>   ArchosG9: changed serial port and env
>>   ARM: add rename PSR bits to match linux names
>>   ARM: ensure irqs are disabled at barebox exit
>>   UIMAGE: improve transfer speed
>>   ARM: use arm setup stack function on archosg9
>
> This one has to wait for some time. Currently the branch containing the
> Archos patches does not have this function. I try to remember that I
> still have to apply it.

I think now it's merged into 'next' as per commit
df67c63ad2fced2d1cc57735470cec543590665c.

>
>>   OMAP4: clean voltage switch
>
> I responded to that separately.
>
> BTW please try to add a bit more verbose commit messages next time. For
> example for the uImage patch it would have been interesting to know
> which workload is affected. Things like this will help us later when
> we wish to change the lines along the commit and we wish to know why
> they are there anyway.
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
