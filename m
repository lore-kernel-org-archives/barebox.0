Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k1G1w-0000Hh-J8
 for barebox@lists.infradead.org; Thu, 30 Jul 2020 21:24:01 +0000
References: <20200707160124.3188793-1-enrico.scholz@sigma-chemnitz.de>
 <9c7cf1e5-baf1-65b0-ddef-e651f6f21e2d@pengutronix.de>
 <20200711050719.GP15485@pengutronix.de>
 <6525ec7f-c391-4394-4eef-6777459b94da@pengutronix.de>
 <20200711052007.GR15485@pengutronix.de>
 <d10c9162-4b11-92ad-daea-69f16b0f214d@pengutronix.de>
 <20200730211356.GA10482@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <5895f2db-5702-c1f9-c4e2-81bd020da291@pengutronix.de>
Date: Thu, 30 Jul 2020 23:23:58 +0200
MIME-Version: 1.0
In-Reply-To: <20200730211356.GA10482@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH] net:fec: fixed unaligned access and stack corruption
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>, barebox@lists.infradead.org

Hello Marco,

On 7/30/20 11:13 PM, Marco Felsch wrote:
> Hi,
> 
> sorry for jumping in.

No worries,

> On 20-07-11 07:28, Ahmad Fatoum wrote:
>> Ah, I thought the drvdata is pre-populated in Linux. I would rename
>> the new function to device_get_match_data then for alignment with
>> Linux, with the difference that it returns either platform data or
>> device tree driver_data as appropriate.
> 
> Linux uses the of_device_get_match_data() [1] for of-based drivers.
> 
> [1] https://elixir.bootlin.com/linux/v5.8-rc4/source/drivers/of/device.c#L189

Yes, future barebox device_get_match_data should work with both of
and platform data, that's why I'd drop the of_ prefix.

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
