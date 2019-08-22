Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0h29-0000If-PD
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 06:57:23 +0000
References: <20190731102143.20503-1-a.fatoum@pengutronix.de>
 <20190731102143.20503-2-a.fatoum@pengutronix.de>
 <20190805085917.xvokyzpvpyc37tk6@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <05b9c808-1af3-b6ba-137a-1bb91930bf91@pengutronix.de>
Date: Thu, 22 Aug 2019 08:57:20 +0200
MIME-Version: 1.0
In-Reply-To: <20190805085917.xvokyzpvpyc37tk6@pengutronix.de>
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
Subject: Re: [PATCH v2 2/3] ratp: return 0 bytes written from puts if busy
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org



On 8/5/19 10:59 AM, Sascha Hauer wrote:
> On Wed, Jul 31, 2019 at 12:21:42PM +0200, Ahmad Fatoum wrote:
>> Prior behavior was to wrongly report all bytes written if enqueueing wasn't
>> possible at the time. Instead we should either return 0 or an error code if
>> users need to retry. write(2) returns 0 in such cases. Follow suit.
>>
>> As no current users run puts in a loop, this has no effect for now.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>> Changes in v2:
>> 	New commit.
>> ---
>>  common/ratp/ratp.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/common/ratp/ratp.c b/common/ratp/ratp.c
>> index 9aea1786d684..8ac7dc98b6f8 100644
>> --- a/common/ratp/ratp.c
>> +++ b/common/ratp/ratp.c
>> @@ -267,7 +267,7 @@ static int ratp_console_puts(struct console_device *cdev, const char *s)
>>  	len = strlen(s);
>>  
>>  	if (ratp_busy(&ctx->ratp))
>> -		return len;
>> +		return 0;
> 
> I'm not sure if this return value is ever used for something useful,
> not sure how relevant this is. ratp_busy() however returns true when
> it's called from inside the ratp code. This is necessary so that we
> don't get stuck in an endless loop. If we start returning 0 for
> "no characters sent" how should code evaluating this return value
> react? Retrying it until all characters are sent obviously is not an
> option.
> 
> I think the current behaviour of just returning 'len' is correct.

I see. I will drop this patch then.

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
