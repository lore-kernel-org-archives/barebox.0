Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from hbe.hbelightingsystems.com ([213.239.196.253])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RJmNj-0006BH-Cw
	for barebox@lists.infradead.org; Fri, 28 Oct 2011 13:22:00 +0000
Message-ID: <4EAAAC7B.2030608@erwinrol.com>
Date: Fri, 28 Oct 2011 15:22:03 +0200
From: Erwin Rol <mailinglists@erwinrol.com>
MIME-Version: 1.0
References: <4EAA6994.1020005@erwinrol.com>
	<CAA4bVAEMFedmy71RUk1LKbfG-E13UoMKSBeKncLG3p=dnjVczg@mail.gmail.com>
In-Reply-To: <CAA4bVAEMFedmy71RUk1LKbfG-E13UoMKSBeKncLG3p=dnjVczg@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Tegra 2
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hey Antony,

On 28-10-2011 15:15, Antony Pavlov wrote:
> On 28 October 2011 12:36, Erwin Rol<mailinglists@erwinrol.com>  wrote:
>> Hey all,
>>
>> If I remember right a while back someone mentioned Tegra 2 here. I would
>> like to ask what the status is of Tegra 2 support. Or if there is support at
>> all ? :-)
>
> There is initial support for Tegra 2 in my private git.
>
> I shall send the patches in a while.
>
> The current status:
>   * barebox can start on Toshiba AC100 smartbook after U-Boot (not
> mainstream U-Boot);

Is this because of the tegra 2 CPU or because of the AC100 ? I am 
looking into the Tegra 2 board from MSC (true embedded board)

>   * barebox support console on Tegra's internal serial port;
>   * barebox support USB host controller and Ethernet-USB
> Barebox does not support:
>   * cache&mmu initialization;
>   * graphical output;
>   * i2c (so barebox can't use AC100's keyboard for input);
>   * mmc controller.
>
> Currently, I'm working on porting of tegra-fb and i2c support.

I should get my board somewhere next week (I hope), and will start to 
take a deeper look into things.

Most important thing will be, does it boot Linux and how fast does it do 
that.

- Erwin

PS: do you have any general links of info on the Tegra 2 cpu ?






_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
