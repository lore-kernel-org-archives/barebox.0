Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-f54.google.com ([209.85.220.54])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wittn-0008Db-DO
 for barebox@lists.infradead.org; Fri, 09 May 2014 23:08:16 +0000
Received: by mail-pa0-f54.google.com with SMTP id bj1so3658081pad.41
 for <barebox@lists.infradead.org>; Fri, 09 May 2014 16:07:54 -0700 (PDT)
Message-ID: <536D5F9C.9060807@exegin.com>
Date: Fri, 09 May 2014 16:07:08 -0700
From: Owen Kirby <osk@exegin.com>
MIME-Version: 1.0
References: <536BEABE.9060705@exegin.com>
 <20140509063923.GV5858@pengutronix.de>
In-Reply-To: <20140509063923.GV5858@pengutronix.de>
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
Subject: Re: [PATCH] Fix the options and protocols used by the loadx command.
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 14-05-08 11:39 PM, Sascha Hauer wrote:
> Hi Owen,
>
> On Thu, May 08, 2014 at 01:36:14PM -0700, Owen Kirby wrote:
>> From 3cd970250ff17ac406e46e18ebb26aa35949d1db Mon Sep 17 00:00:00 2001
>> From: Owen Kirby <osk@exegin.com>
>> Date: Thu, 8 May 2014 13:27:11 -0700
>> Subject: [PATCH] Fix the options and protocols used by the loadx command.
>>
>> It seems like the loadx command was improperly copy/pasted from the loady
>> implementation, and was trying to load files using the ymodem protocol. This
>> patch should fix the command so that it uses xmodem, implements the -t option
>> and outputs the correct baudrate being used.
>>
>> Signed-off-by: Owen Kirby <osk@exegin.com>
> I'm always surprised to still see patches to the serial download
> protocols. I hardly ever use them. Anyway, patch looks good, so:
> Applied, thanks
>
> Sascha
>
Old protocols never die :)

I'm not yet sure that I want to use xmodem over DFU just yet, but it
seemed like an obvious bug.

Cheers,
Owen

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
