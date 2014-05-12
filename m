Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-f41.google.com ([209.85.220.41])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wjv5Z-0002Qq-SH
 for barebox@lists.infradead.org; Mon, 12 May 2014 18:36:38 +0000
Received: by mail-pa0-f41.google.com with SMTP id lj1so9088752pab.14
 for <barebox@lists.infradead.org>; Mon, 12 May 2014 11:36:15 -0700 (PDT)
Message-ID: <53711499.5020904@exegin.com>
Date: Mon, 12 May 2014 11:36:09 -0700
From: Owen Kirby <osk@exegin.com>
MIME-Version: 1.0
References: <536D5DBF.7040708@exegin.com>
 <20140512055910.GE5858@pengutronix.de>
In-Reply-To: <20140512055910.GE5858@pengutronix.de>
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
Subject: Re: [PATCH] Add readmem command to read values out of memory.
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 14-05-11 10:59 PM, Sascha Hauer wrote:
> On Fri, May 09, 2014 at 03:59:11PM -0700, Owen Kirby wrote:
>> From 299ffc6a961c807b118605bdd9e736c7b096fec9 Mon Sep 17 00:00:00 2001
>> From: Owen Kirby <osk@exegin.com>
>> Date: Fri, 9 May 2014 15:14:30 -0700
>> Subject: [PATCH] Add readmem command to read values out of memory.
>>
>> I was trying to do something conditionally from a shell script based on the type
>> of image present in flash, and finding it rather cumbersome to do. So I added a
>> command that reads values out of memory and into shell variables as hexadecimal.
> Such a functionality might come in handy and indeed it seems to be hard
> to archieve with other commands.
>
> Have you looked into the filetype stuff? This could solve your problem
> without having to interpret hex values from shell. See common/filetype.c
> and commands/filetype.c.
Ooh! That's exactly what I needed, and it looks much more sophisticated
than what I threw together. I really should have spent more time to RTFM
first. Please feel free to drop this patchsince it's no longer needed.
>
>> +config CMD_READMEM
>> +	tristate
>> +	default y
> No default y please, just drop this line.
My bad, that was a copy/paste error.

Thanks,
Owen

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
