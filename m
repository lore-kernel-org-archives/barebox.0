Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ju7p2-00067p-UR
 for barebox@lists.infradead.org; Sat, 11 Jul 2020 05:13:13 +0000
References: <20200707160124.3188793-1-enrico.scholz@sigma-chemnitz.de>
 <9c7cf1e5-baf1-65b0-ddef-e651f6f21e2d@pengutronix.de>
 <20200711050719.GP15485@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <6525ec7f-c391-4394-4eef-6777459b94da@pengutronix.de>
Date: Sat, 11 Jul 2020 07:13:11 +0200
MIME-Version: 1.0
In-Reply-To: <20200711050719.GP15485@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>, barebox@lists.infradead.org



On 7/11/20 7:07 AM, Sascha Hauer wrote:
> On Tue, Jul 07, 2020 at 07:11:31PM +0200, Ahmad Fatoum wrote:
>> On 7/7/20 6:01 PM, Enrico Scholz wrote:
>>> on 64 bit architectures, the 'enum fec_type' might not be aligned and
>>> large enough to hold a pointer.  
>>
>> I am wondering if we couldn't just adopt the Linux prototype:
>> void *dev_get_drvdata(const struct device_d *dev);
>>
>> and do away with the error code and most of the casts.
>> Users won't be able to differentiate between NULL from id table
>> and NULL due to lack of drvdata, but I don't think this is
>> that much of a downside, compared with not having casts obscure
>> the more common pitfall (besides fec_imx.c, lm75.c, apbh_dma.c and nand_mxs.c
>> are affected as well of which probably only the first is an issue.)
> 
> Sounds good. When we change this we should rename the function
> alongside, because dev_get_drvdata() does something different in Linux.

Does it? I thought it does the same, with the difference that it can
be set with dev_set_drvdata as well. At the cost of one extra pointer
per device_d, we could have both of them.

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
