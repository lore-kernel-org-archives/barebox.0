Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22f.google.com ([2a00:1450:400c:c05::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X03Yl-0005bi-0g
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 06:53:27 +0000
Received: by mail-wi0-f175.google.com with SMTP id r20so419268wiv.2
 for <barebox@lists.infradead.org>; Wed, 25 Jun 2014 23:53:04 -0700 (PDT)
Message-ID: <53ABC34E.5040902@gmail.com>
Date: Thu, 26 Jun 2014 08:53:02 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1403469255-9019-1-git-send-email-alex.aring@gmail.com>
 <1403469255-9019-2-git-send-email-alex.aring@gmail.com>
 <53A74FC0.7080206@gmail.com> <20140626042711.GA3858@omega>
In-Reply-To: <20140626042711.GA3858@omega>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC 2/2] dns325: initial support for D-Link DNS-325
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On 06/26/2014 06:27 AM, Alexander Aring wrote:
> On Sun, Jun 22, 2014 at 11:50:56PM +0200, Sebastian Hesselbarth wrote:
>> On 06/22/2014 10:34 PM, Alexander Aring wrote:
>>> This patch add a basic support for the D-Link DNS-325.
>>>
>>> Currently only booting via uart with kwboot is supported. The barebox
>>> kwboot utility doesn't work at the moment. Use kwboot utility from u-boot
>>> instead.
>>
>> Why does kwboot does not work? There is an issue with early Kirkwood's
>> BootROM and UART boot mode. Just try over and over again. I also recall
>> modifying the timeouts may help.
>>
> 
> I tried to change the timeouts and it works now. I take these timings from
> u-boot. Is there any reason why these timings differs?

IIRC, timings differ because barebox kwboot was mainly tested on Armada
370 and that low timings break UART boot mode there. I remember some
discussion about it a while ago. I'll see if I can find the discussion
and if there are any hints for timeouts that suite both Kirkwood and
Armada 370/XP.

> Datasheet says nothing about any delay while loop for sending bootmsg.
> 
> 
> Here is my diff with the very small change:
> 
> diff --git a/scripts/kwboot.c b/scripts/kwboot.c
> index e068660..bcb5972 100644
> --- a/scripts/kwboot.c
> +++ b/scripts/kwboot.c
> @@ -34,8 +34,8 @@ static unsigned char kwboot_msg_debug[] = {
>         0xDD, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77
>  };
>  
> -#define KWBOOT_MSG_REQ_DELAY   1000 /* ms */
> -#define KWBOOT_MSG_RSP_TIMEO   1000 /* ms */
> +#define KWBOOT_MSG_REQ_DELAY   10 /* ms */
> +#define KWBOOT_MSG_RSP_TIMEO   50 /* ms */
>  
>  /*
>   * Xmodem Transfers
> 
> 
> 
> btw.:
> 
> Now I see that the internal ROM bootloader could also boot from SATA
> device - this sounds interesting. I will try that next weekend.

Boot source is determined by bootstrap pins, i.e. some pull-up/pull-down
resistors on board. UART boot mode check was added to BootROM in some
later Kirkwoods and _additionally_ checks for UART boot source.

You cannot just change the default boot source without soldering.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
