Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVANh-0005ut-K9
 for barebox@lists.infradead.org; Mon, 27 May 2019 07:49:19 +0000
References: <20190521155626.9906-1-a.fatoum@pengutronix.de>
 <20190521155626.9906-2-a.fatoum@pengutronix.de>
 <CAHQ1cqHnqQoUes2FoDgODkJdtFBFwk30r9ZnYm3BvjUwB0RyLQ@mail.gmail.com>
 <e081b9ae-11af-70bb-ca26-299392dafc4c@pengutronix.de>
 <CAHQ1cqG6WGAbQUr3NXOE0N+kJeJsGUZeweb4T5y0PcZg0hEOOg@mail.gmail.com>
 <b7c639aa-3afc-c000-ad3c-4aa479a60804@pengutronix.de>
 <CAHQ1cqF8R9eN1rosQ8oh2N284VyQYrw1Ynxaykks_o9bKj+Ttw@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <c8ad27d2-607e-099b-3507-78bfba7b555d@pengutronix.de>
Date: Mon, 27 May 2019 09:49:14 +0200
MIME-Version: 1.0
In-Reply-To: <CAHQ1cqF8R9eN1rosQ8oh2N284VyQYrw1Ynxaykks_o9bKj+Ttw@mail.gmail.com>
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

Hello Andrey,

On 27/5/19 09:28, Andrey Smirnov wrote:
>>>> Generally, affected boards have been broken since day 1, because the LVDS output
>>>> would've locked up every blue moon or so. If this patch breaks them, they're just
>>>> more reliably broken. :-)
>>>>
>>>
>>> There's a world of difference between not working every once in a blue
>>> moon and not working from a first boot.
>>
>> Ye, the latter one can be dealt with on-the-spot. The other is much more costly to
>> fix.
>>
> 
> Here's a different perspective: If you needed to make an urgent phone
> call, would you rather you phone didn't work every once in a blue moon
> or be broken for the get go?

The expectation is that the phone's basic operation was verified beforehand
and a once-in-a-blue-moon kind of issue is easier missed than an always
occurring one.

Do I take this as you voicing support of v1 of the patchset?

In v1, I did some dancing to maintain the old parenting
behavior on the SoC revision, where it was happening, i.e.
  - (Quad or Dual) and rev >1.0
  - DualLite
  - Solo and rev >1.0
  - QuadPlus or DualPlus

Philipp and Sascha's opinion on that was to get rid of the reparenting as
Linux did and reorder the commits, so they are easier to follow.

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
