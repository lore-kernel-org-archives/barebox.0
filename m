Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from moutng.kundenserver.de ([212.227.17.8])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SqmL8-0004EV-7W
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 14:31:59 +0000
Message-ID: <500425C1.70107@cmotion.eu>
Date: Mon, 16 Jul 2012 16:31:29 +0200
From: Christian Kapeller <christian.kapeller@cmotion.eu>
MIME-Version: 1.0
References: <1342432439-27455-1-git-send-email-christian.kapeller@cmotion.eu>
 <1342432439-27455-2-git-send-email-christian.kapeller@cmotion.eu>
 <20120716142524.GN30009@pengutronix.de>
In-Reply-To: <20120716142524.GN30009@pengutronix.de>
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
Subject: Re: [PATCH 1/2] tx51: ensure eth phy resets properly by driving reset
 pin explicitly.
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 07/16/2012 04:25 PM, Sascha Hauer wrote:
> On Mon, Jul 16, 2012 at 11:53:58AM +0200, Christian Kapeller wrote:
>>
>> diff --git a/arch/arm/boards/karo-tx51/tx51.c b/arch/arm/boards/karo-tx51/tx51.c
>> index 096683a..d862a68 100644
>> --- a/arch/arm/boards/karo-tx51/tx51.c
>> +++ b/arch/arm/boards/karo-tx51/tx51.c
>> @@ -205,6 +205,12 @@ static inline void tx51_fec_init(void)
>>  	}
>>  
>>  	/*
>> +	 *Turn off phy power, be cautious and wait
>> +	 */
>> +	gpio_set_value(TX51_FEC_PHY_PWR, 0);
>> +	mdelay(20);
> 
> Does this fix the mentioned regression due to iomuxing or is this
> another issue?

Nope, that is another issue. This fix is from my v2012.03.0 branch.
Without it the phy init worked only flaky.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
