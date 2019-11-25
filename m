Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZAvZ-00082d-QV
 for barebox@lists.infradead.org; Mon, 25 Nov 2019 09:45:07 +0000
Received: from [2001:67c:670:100:6a05:caff:fe2d:a9b1]
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1iZAvW-0001vE-67
 for barebox@lists.infradead.org; Mon, 25 Nov 2019 10:45:02 +0100
References: <20191121084005.683-1-ahmad@a3f.at>
 <20191121084005.683-3-ahmad@a3f.at>
 <20191125082848.2rkmumxerinj4oa5@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <c53d29c2-8f71-c0be-21bc-3dc75990222e@pengutronix.de>
Date: Mon, 25 Nov 2019 10:45:01 +0100
MIME-Version: 1.0
In-Reply-To: <20191125082848.2rkmumxerinj4oa5@pengutronix.de>
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
Subject: Re: [PATCH 3/3] remoteproc: add .stop device parameter for stopping
 remote processor
To: barebox@lists.infradead.org

On 11/25/19 9:28 AM, Sascha Hauer wrote:
> On Thu, Nov 21, 2019 at 09:40:05AM +0100, Ahmad Fatoum wrote:
>> Both the STM32 and i.MX7 remote proc drivers populate the .stop member
>> in the struct rproc, but it's not used anywhere.
> 
> The .stop member in struct rproc is introduced in this patch.

Indeed. I was referring to the stop member in the ops struct, which is
a so-far unused function pointer.

>>  	ret = rproc_start(rproc, &fw);
>> +	if (ret == 0)
>> +		rproc->stop = PARAM_TRISTATE_FALSE;
> 
> Can we use positive logic here? "Status Stopped is false" is harder to
> read than just "running" or "started".

Naming it .stop emphasizes the fact that it's only meant to stop execution,
not start it. See below.


>> +	return stop(rproc);
>> +}
> 
> I would assume that when I can stop the remote processor with this
> parameter I should be able to start it here as well, no?

Which firmware would the processor execute when started via parameter?
I see no benefit in powering up the co-processor without specifying a
firmware image.

Thoughts?
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
