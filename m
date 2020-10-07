Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kQD9Z-0007fj-Cg
 for barebox@lists.infradead.org; Wed, 07 Oct 2020 17:23:02 +0000
References: <20201005082835.11413-1-a.fatoum@pengutronix.de>
 <20201005082835.11413-2-a.fatoum@pengutronix.de>
 <20201007081433.GM11648@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <0d676783-a0ec-2725-c497-3319103e0f14@pengutronix.de>
Date: Wed, 7 Oct 2020 19:22:58 +0200
MIME-Version: 1.0
In-Reply-To: <20201007081433.GM11648@pengutronix.de>
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
Subject: Re: [PATCH 2/2] sandbox: compile in a fallback device tree
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Sascha,

On 10/7/20 10:14 AM, Sascha Hauer wrote:
> On Mon, Oct 05, 2020 at 10:28:35AM +0200, Ahmad Fatoum wrote:
>> +	root = of_unflatten_dtb(dtb);
>>  
>>  	if (IS_ERR(root))
>>  		return PTR_ERR(root);
> 
> This is a nice change as it allows us to use the newly created
> barebox_register_fdt() for sandbox as well. I squashed this into this
> patch.

Patch 01/02 didn't wasn't it upstream. This is required for building
sandbox on x86 now. Can you order it before the 2nd patch?

Thanks,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
