Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hivk5-0005WL-PE
 for barebox@lists.infradead.org; Thu, 04 Jul 2019 07:01:22 +0000
Date: Thu, 4 Jul 2019 09:01:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190704070115.5n5qcgn6qakc32yq@pengutronix.de>
References: <20190617150751.3421-1-a.fatoum@pengutronix.de>
 <20190620143228.wfasxgzjdyd4l4yw@pengutronix.de>
 <385c9d62-a0f0-ff3e-690e-511b36591b35@pengutronix.de>
 <b6952c7b-ddfe-87a6-eb56-9088dc62914c@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b6952c7b-ddfe-87a6-eb56-9088dc62914c@pengutronix.de>
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
Subject: Re: [PATCH v1 00/12] ARM: stm32mp: add drivers for GPIO, pinctrl
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jul 04, 2019 at 07:39:40AM +0200, Ahmad Fatoum wrote:
> Sorry,
> 
> On 3/7/19 18:51, Ahmad Fatoum wrote:
> >   ARM: psci: fix erroneous call of ->system_reset on system_off
> 
> this one is a generic fix and should stay. To sum up, please drop:
> 
> 75624841ec85 ARM: stm32mp157c-dk2: boot kernel in nonsecure mode
> cc392cc3b5df ARM: stm32mp: implement PSCI support
> e7561dba5791 ARM: stm32mp157c-dk2: add board-specific sysconf fixups

Ok, did that.

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
