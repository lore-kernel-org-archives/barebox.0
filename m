Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMsSK-00059f-SS
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 12:40:43 +0000
References: <20200914095948.16811-1-a.fatoum@pengutronix.de>
 <20200928093102.GA12463@pengutronix.de>
 <ffe4a9fa-5eec-c9ee-d9d3-44fcd426cc4c@pengutronix.de>
 <20200928115811.GG11648@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <101dfd85-f2e4-74e5-c4c1-725556a11165@pengutronix.de>
Date: Mon, 28 Sep 2020 14:40:33 +0200
MIME-Version: 1.0
In-Reply-To: <20200928115811.GG11648@pengutronix.de>
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
Subject: Re: [PATCH] readkey: shrink table of known escape sequences in size
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

On 9/28/20 1:58 PM, Sascha Hauer wrote:
>>>>  	if (c == 27) {
>>>> @@ -67,7 +69,7 @@ int read_key(void)
>>>>  		}
>>>>  		esc[i] = 0;
>>>>  		for (i = 0; i < ARRAY_SIZE(esccmds); i++){
>>>> -			if (!strcmp(esc, esccmds[i].seq))
>>>> +			if (!strncmp(esc, esccmds[i].seq, MAX_ESC_LEN))
>>>>  				return esccmds[i].val;
>>>
>>> Anyway, I don't think we should play tricks with dropping string
>>> termination characters just to squeeze some bytes out of the binary.
>>
>> I can define #define MAX_ESC_LEN 4 if you prefer that, but I consider
>> it superfluous.
> 
> That would allow you to use strcmp and I really prefer that. strncmp
> doesn't give you the desired result when one string is longer than the
> length given in the third argument. Proving that this cannot happen here
> requires more brain time than parsing strcmp, at least in my brain ;)

I would still maintain the strncmp, because it's less error-prone:
If in future a new sequence is added, it will be truncated instead of
an out-of-bounds read.

v2 just sent out

> 
> Sascha
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
