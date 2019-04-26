Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hJtzU-00040y-Eg
 for barebox@lists.infradead.org; Fri, 26 Apr 2019 06:05:46 +0000
Date: Fri, 26 Apr 2019 08:05:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190426060542.v4tybl24ngvfvf5v@pengutronix.de>
References: <0b4e8036-c8d2-abef-8ee7-d28994e552a8@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0b4e8036-c8d2-abef-8ee7-d28994e552a8@gmail.com>
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
Subject: Re: Porting Clause 45 PHY support to Barebox
To: Heiner Kallweit <hkallweit1@gmail.com>
Cc: barebox@lists.infradead.org

Hi Heiner,

On Thu, Apr 25, 2019 at 08:14:10PM +0200, Heiner Kallweit wrote:
> I'd like to port Clause 45 PHY support and more recent Linux phylib
> extensions to Barebox. Ideally it should be possible later to apply
> most Linux patches as-is on Barebox. Before I start two questions:
> 
> - Any guidelines what it typically takes to port Linux Kernel code
>   to Barebox? (I suppose at least removing mutexes + spinlocks, changing
>   all interrupts to polling)

Well yes, and that's about it. Sometimes you have to simplify the code,
sometimes you have to update some header files we have from Linux.

> - Especially regarding drivers/net/phy: any plans I should be aware of?

Much of the code is from Linux, but there's also much barebox original
code. I don't think the goal should be that it looks identically in the
end.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
