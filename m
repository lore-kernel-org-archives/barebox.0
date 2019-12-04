Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icULb-00062m-PS
 for barebox@lists.infradead.org; Wed, 04 Dec 2019 13:05:41 +0000
References: <20191114132808.6424-1-a.fatoum@pengutronix.de>
 <20191115133324.4vdjpqzyaepttnw2@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <64ea9d9b-abdf-e8fd-7848-a1005a55a511@pengutronix.de>
Date: Wed, 4 Dec 2019 14:05:36 +0100
MIME-Version: 1.0
In-Reply-To: <20191115133324.4vdjpqzyaepttnw2@pengutronix.de>
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
Subject: Re: [PATCH] net: designware: eqos: remove done TODO
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Sascha,

On 11/15/19 2:33 PM, Sascha Hauer wrote:
> On Thu, Nov 14, 2019 at 02:28:08PM +0100, Ahmad Fatoum wrote:
>> The todo split comment is a left-over from refactoring. Remove it.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/net/designware_stm32.c | 1 -
>>  1 file changed, 1 deletion(-)
> 
> Applied, thanks

I can't find this commit in upstream/next and the string still exists.
Could you take a look?

Thanks,
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
