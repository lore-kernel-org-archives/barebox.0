Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTl4Q-0000bT-DW
 for barebox@lists.infradead.org; Thu, 23 May 2019 10:35:36 +0000
References: <20190521155626.9906-1-a.fatoum@pengutronix.de>
 <20190521155626.9906-6-a.fatoum@pengutronix.de>
 <1558605828.5135.9.camel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <05dff572-e5bf-f623-6584-f7178cc93c7e@pengutronix.de>
Date: Thu, 23 May 2019 12:35:28 +0200
MIME-Version: 1.0
In-Reply-To: <1558605828.5135.9.camel@pengutronix.de>
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
Subject: Re: [PATCH v2 5/5] clk: imx6: define an enum for ldb mux inputs
To: Philipp Zabel <p.zabel@pengutronix.de>, barebox@lists.infradead.org
Cc: pza@pengutronix.de

On 23/5/19 12:03, Philipp Zabel wrote:
> On Tue, 2019-05-21 at 17:56 +0200, Ahmad Fatoum wrote:
>> For better readability should this code be reviewed
>> in future, replace the hardcoded input numbers
>> with an enum.
>>
>> This is just a cosmetic change and was verified
>> to not affect clk-imx6.o.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> Is this something that should be proposed for the Linux kernel as well?

I think so. Will add it to the backlog..

> 
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
> 
> regards
> Philipp
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
