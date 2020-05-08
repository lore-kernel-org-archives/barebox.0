Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWwit-00026p-QX
 for barebox@lists.infradead.org; Fri, 08 May 2020 06:43:07 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <20200330143915.663705-1-ahmad@a3f.at>
 <20200330143915.663705-6-ahmad@a3f.at>
 <20200331054526.GF27288@pengutronix.de>
 <8409b14a-0219-24b7-d2fd-cbf6de7f5414@pengutronix.de>
Message-ID: <bbc8fc41-e461-f327-a600-e0e63fca3c59@pengutronix.de>
Date: Fri, 8 May 2020 08:43:01 +0200
MIME-Version: 1.0
In-Reply-To: <8409b14a-0219-24b7-d2fd-cbf6de7f5414@pengutronix.de>
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
Subject: Re: [PATCH 6/8] pinctrl: stm32: fix up st,package into stm32mp nodes
To: Sascha Hauer <s.hauer@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On 4/15/20 11:38 AM, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 3/31/20 7:45 AM, Sascha Hauer wrote:
>> Why this detour over device tree? We already have get_cpu_package() and
>> could use it here.
> 
> The first 5 patches could be applied independently of the rest, which
> I'll rework. Can you do so?

Gentle ping.

> 
> Thanks
> Ahmad
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
