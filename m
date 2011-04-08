Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from coyote.quickmin.net ([217.14.112.24])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q87Bp-0006bg-Os
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 08:37:14 +0000
From: Thomas Mayer <thomas.mayer@telemotive.de>
MIME-Version: 1.0
References: <1302163039-29861-1-git-send-email-thomas.mayer@telemotive.de>
	<20110408064155.GR7285@pengutronix.de>
In-Reply-To: <20110408064155.GR7285@pengutronix.de>
Message-ID: <4D9EC937.7030402@telemotive.de>
Date: Fri, 8 Apr 2011 10:37:11 +0200
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
Subject: Re: [PATCH 1/1] freescale-mx35-3-stack: Add mmc0
To: barebox@lists.infradead.org

Hi Sascha,

Am 08.04.2011 08:41, schrieb Sascha Hauer:
> Hi Thomas,
>
> On Thu, Apr 07, 2011 at 09:57:19AM +0200, Thomas Mayer wrote:
>> Signed-off-by: Thomas Mayer<thomas.mayer@telemotive.de>
>> ---
>>   arch/arm/boards/freescale-mx35-3-stack/3stack.c |    4 ++++
>>   1 files changed, 4 insertions(+), 0 deletions(-)
>>
>> diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
>> index 127bfb4..a4cbbe1 100644
>> --- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
>> +++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
>> @@ -199,6 +199,10 @@ static int f3s_devices_init(void)
>>   		break;
>>   	}
>>
>> +#ifdef CONFIG_MCI_IMX_ESDHC
>> +	imx35_add_mmc0(NULL);
>> +#endif
> No ifdef here, please. Registering a device without a driver available
> doesn't hurt, except for a few bytes of binary space.
>
thanks for the advice. New patch is on the way...

Regards,
Thomas

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
