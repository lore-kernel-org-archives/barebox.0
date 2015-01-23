Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eusmtp01.atmel.com ([212.144.249.243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YEZlG-0001h0-Aq
 for barebox@lists.infradead.org; Fri, 23 Jan 2015 08:38:39 +0000
Message-ID: <54C207DD.9060201@atmel.com>
Date: Fri, 23 Jan 2015 16:35:41 +0800
From: Bo Shen <voice.shen@atmel.com>
MIME-Version: 1.0
References: <1421739085-21150-1-git-send-email-voice.shen@atmel.com>
 <20150121094113.GF12209@pengutronix.de>
 <A202A15F-ECFC-4787-A8A2-1F9D45A29BFF@jcrosoft.com>
 <54BF7960.2010006@atmel.com>
 <5A604EAA-7AE3-4195-96A5-23A564655251@jcrosoft.com>
In-Reply-To: <5A604EAA-7AE3-4195-96A5-23A564655251@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: atmel: sama5d3xek: fix conflict between w1 and led
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi J,

On 01/23/2015 03:58 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
>
>> On Jan 21, 2015, at 6:03 PM, Bo Shen <voice.shen@atmel.com> wrote:
>>
>> Hi J,
>>
>> On 01/21/2015 05:56 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
>>>
>>>> On Jan 21, 2015, at 5:41 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
>>>>
>>>> On Tue, Jan 20, 2015 at 03:31:25PM +0800, Bo Shen wrote:
>>>>> As the 1-wire and LED d2 use the same pin (PE25) on the EK board.
>>>>> So, make LED enable only when the 1-wire is disabled.
>>>>>
>>>>> Signed-off-by: Bo Shen <voice.shen@atmel.com>
>>>>> ---
>>>>>
>>>>> arch/arm/boards/sama5d3xek/init.c | 8 ++++++++
>>>>> 1 file changed, 8 insertions(+)
>>>>
>>>
>>> On barebox this does not conflict
>>
>> As both use gpio mode, which will call gpio request, when LED try to request the same gpio, it will failed. So, the led d2 won't be successfully registered.
>
> Yes with the pinctrl driver
>
> but it will be a choice at defconfig level not C code
>
> if you enable both we need to put a warning at compiling time

I don't find any good solution for this, can you provide one? Thanks.

> and decide which one is more important because if you do not use the w1 you may do except to have both legs

Actually, in code, no use for led d2, only d1 heart beat.

>
>>
>>> as we do not have multi task support
>>>
>>> Best Regards,
>>> J.
>>>> Applied, thanks
>>>>
>>>> Sascha
>>>>
>>>>
>>>> --
>>>> Pengutronix e.K.                           |                             |
>>>> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
>>>> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
>>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>>
>>
>> Best Regards,
>> Bo Shen
>

Best Regards,
Bo Shen


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
