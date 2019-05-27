Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV9yo-0004o7-AJ
 for barebox@lists.infradead.org; Mon, 27 May 2019 07:23:36 +0000
References: <20190521155626.9906-1-a.fatoum@pengutronix.de>
 <20190521155626.9906-2-a.fatoum@pengutronix.de>
 <CAHQ1cqHnqQoUes2FoDgODkJdtFBFwk30r9ZnYm3BvjUwB0RyLQ@mail.gmail.com>
 <e081b9ae-11af-70bb-ca26-299392dafc4c@pengutronix.de>
 <CAHQ1cqG6WGAbQUr3NXOE0N+kJeJsGUZeweb4T5y0PcZg0hEOOg@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <b7c639aa-3afc-c000-ad3c-4aa479a60804@pengutronix.de>
Date: Mon, 27 May 2019 09:23:25 +0200
MIME-Version: 1.0
In-Reply-To: <CAHQ1cqG6WGAbQUr3NXOE0N+kJeJsGUZeweb4T5y0PcZg0hEOOg@mail.gmail.com>
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
Subject: Re: [PATCH v2 1/5] clk: imx6: remove quirky
 clk_set_parent(LDB_diN_sel, pll5_video_div)
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>, Raphael Poggi <poggi.raph@gmail.com>, pza@pengutronix.de

Hello,

On 27/5/19 08:50, Andrey Smirnov wrote:
> On Sun, May 26, 2019 at 11:29 PM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>
>> Hello Andrey,
>>
>> On 26/5/19 23:55, Andrey Smirnov wrote:
>>> On Tue, May 21, 2019 at 8:56 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>>>
>>> This particular patch does break a non 6Q+ version of RDU2,  but the
>>> follow up ones in the series fix it, so it seems that no action is
>>> really necessary on my part.
>>
>> The reparenting removed in this patch isn't reinstated by the rest of the series.
>> They merely apply parentage expressed in the device tree in a glitch-free manner.
>>
>> As both barebox and kernel imx6qdl-zii-rdu2.dtsi lack the relevant
>> assigned-clock-parents snippet, I am not sure what it is this patch broke that the
>> follow-up ones fixed?
> 
> Not sure, will investigate.

Ok.

> 
>>
>> Generally, affected boards have been broken since day 1, because the LVDS output
>> would've locked up every blue moon or so. If this patch breaks them, they're just
>> more reliably broken. :-)
>>
> 
> There's a world of difference between not working every once in a blue
> moon and not working from a first boot.

Ye, the latter one can be dealt with on-the-spot. The other is much more costly to
fix.

Cheers
Ahmad

> 
> Thanks,
> Andrey Smirnov
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
