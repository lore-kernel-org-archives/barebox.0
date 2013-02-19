Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oa0-f50.google.com ([209.85.219.50])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U7kSs-0005nh-VX
 for barebox@lists.infradead.org; Tue, 19 Feb 2013 10:30:24 +0000
Received: by mail-oa0-f50.google.com with SMTP id l20so6802320oag.9
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2013 02:30:22 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CAHkwnC_3TqOGbtq-XULoR_sWdVH1e0iGSo1=OeP_giHZ5X3SAg@mail.gmail.com>
References: <1361181488-12901-1-git-send-email-fabio.porcedda@gmail.com>
 <20130219073230.GV1906@pengutronix.de>
 <CAHkwnC_3TqOGbtq-XULoR_sWdVH1e0iGSo1=OeP_giHZ5X3SAg@mail.gmail.com>
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Tue, 19 Feb 2013 11:30:01 +0100
Message-ID: <CAHkwnC_XLunH74snYRUfR+RFzEqz5CPZkeT+7Y5RBoK+cOqkRQ@mail.gmail.com>
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
Subject: Re: [PATCH] at91sam9260/9g20ek: use -EINVAL for invalid gpio on
 atmel_mci
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 19, 2013 at 11:03 AM, Fabio Porcedda
<fabio.porcedda@gmail.com> wrote:
> On Tue, Feb 19, 2013 at 8:32 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
>> Hi Fabio,
>>
>> On Mon, Feb 18, 2013 at 10:58:08AM +0100, Fabio Porcedda wrote:
>>> Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>
>>> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
>>> ---
>>>  arch/arm/boards/at91sam9260ek/init.c | 2 ++
>>>  1 file changed, 2 insertions(+)
>>>
>>> diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
>>> index 77ca6bb..dc2976a 100644
>>> --- a/arch/arm/boards/at91sam9260ek/init.c
>>> +++ b/arch/arm/boards/at91sam9260ek/init.c
>>> @@ -156,6 +156,8 @@ static void at91sam9260ek_phy_reset(void)
>>>  static struct atmel_mci_platform_data __initdata ek_mci_data = {
>>>       .bus_width      = 4,
>>>       .slot_b         = 1,
>>> +     .detect_pin     = -EINVAL,
>>> +     .wp_pin         = -EINVAL,
>>>  };
>>
>> Is this for master or for -next?
>
> I think is for master because is a fix.


I'll send a v2 with all the other boards.

> Best regards
> --
> Fabio Porcedda
>
>> Sascha
>>
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
>> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



--
Fabio Porcedda

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
