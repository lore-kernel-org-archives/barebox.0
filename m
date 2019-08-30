Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3dHl-0000pK-HP
 for barebox@lists.infradead.org; Fri, 30 Aug 2019 09:33:38 +0000
References: <20190829052808.25624-1-a.fatoum@pengutronix.de>
 <20190829112626.GA10723@router.tkernel.org>
 <6aad20a4-ca38-2cd0-5df1-4a6b4950ff6a@pengutronix.de>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <536956aa-1857-e50b-4123-6063bac836ef@rempel-privat.de>
Date: Fri, 30 Aug 2019 11:33:22 +0200
MIME-Version: 1.0
In-Reply-To: <6aad20a4-ca38-2cd0-5df1-4a6b4950ff6a@pengutronix.de>
Content-Language: ru
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
Subject: Re: [PATCH] input: add handler for reset and power key input events
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org

Am 30.08.19 um 11:02 schrieb Ahmad Fatoum:
> Hello,
>
> On 8/29/19 1:26 PM, duhuanpeng wrote:
>> Hello, I merged this patch to my barebox. and test on my own board.
>>
>> 1. Abort barebox booting and enter the console.
>>     the board reboots immediately when I press the button without release.
>>     here is my .dts about this button:
>>
>>                  net {
>>                          label = "board:LED1:system";
>>                          gpios = <&gpio 1 GPIO_ACTIVE_LOW>;
>>                          default-state = "off";
>>                          barebox,default-trigger = "net";
>>                  };
>
> Copy-paste mistake?
>
>>
>> 2. Panic.
>>     type 'go 888' make barebox panic. now I really need a 'reset' key.
>>     I press and releaes the key, and try to hold this key several seconds.
>>     no reaction.
>>
>> Is the 'reset' key designed for reset the board when something goes wrong?
>
> That's the watchdog's job. If your hardware features a hardware watchdog, you can
> have it started on bootm or configure barebox' poller to feed it continuously.
> If barebox panics or anything else happens before Linux starts feeding the watchdog,
> your system will then automatically reset.
>
> You could have barebox panic loop on a gpio, but it would only help if barebox
> actually calls panic. If you run into an infinite loop, or the exception vectors
> are overwritten, there's nothing barebox can do (short of evolving to barebOS and
> implementing preemption and privilege separation).

May be it would make sense to have an option simila to the kernel, to reboot on panic.

--
Regards,
Oleksij

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
