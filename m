Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x229.google.com ([2a00:1450:4013:c01::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UeguE-0002Fu-OD
 for barebox@lists.infradead.org; Tue, 21 May 2013 07:22:47 +0000
Received: by mail-ea0-f169.google.com with SMTP id m14so168560eaj.28
 for <barebox@lists.infradead.org>; Tue, 21 May 2013 00:22:24 -0700 (PDT)
Message-ID: <519B1F55.1090607@gmail.com>
Date: Tue, 21 May 2013 09:16:37 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1368987835-13323-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1368987835-13323-6-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130521062810.GE32299@pengutronix.de>
 <20130521063331.GF32299@pengutronix.de> <519B1662.7070502@gmail.com>
 <20130521064726.GI32299@pengutronix.de>
In-Reply-To: <20130521064726.GI32299@pengutronix.de>
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
Subject: Re: [PATCH 05/11] arm: mvebu: convert Armada 370/XP to common init
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 05/21/2013 08:47 AM, Sascha Hauer wrote:
> On Tue, May 21, 2013 at 08:38:26AM +0200, Sebastian Hesselbarth wrote:
>> On 05/21/2013 08:33 AM, Sascha Hauer wrote:
>>> On Tue, May 21, 2013 at 08:28:10AM +0200, Sascha Hauer wrote:
>>>>> +	armada_370_xp_add_uart();
>>>>
>>>> How do you want to support a board which uses another UART instead of
>>>> uart0 when you call this from SoC code?
>>>
>>> Ok, I see. You use CONFIG_MVEBU_CONSOLE_UART to determine an UART base.
>>> What's the rationale for doing this? We don't want to have compile time
>>> decisions for things we know at runtime.
>>
>> How do you know the UART console by runtime? It can be on any UART
>> possible.
>
> Well ok, you can't really know it at runtime, but you could use multiple
> consoles or maybe you could register a specific uart based on a
> configuration option in the environment or some bootstrap pin. These
> are all not very common examples, but I think you shouldn't prevent them
> in your SoC code.
>
>> Anyway, as we are moving to DT with the next patches, all
>> enabled uarts will be registered.
>>
>> But leaves the question, how to get the correct UART for console?
>
> Using the linux,stdout-path property in the chosen node.

Well, okay then consider the above a temporary compile time config
option that will be removed as soon as DT patches come. ;)

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
