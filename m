Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5qAW-0002Tj-7g
 for barebox@lists.infradead.org; Wed, 12 Aug 2020 12:47:49 +0000
References: <AM0PR01MB4467F624E0FEFF24256BA6838F420@AM0PR01MB4467.eurprd01.prod.exchangelabs.com>
 <20200812095128.GS9475@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <8612d29a-4832-565f-77bb-d47db26a62e4@pengutronix.de>
Date: Wed, 12 Aug 2020 14:47:45 +0200
MIME-Version: 1.0
In-Reply-To: <20200812095128.GS9475@pengutronix.de>
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
Subject: Re: Enable Display/Splash on Phycore am335x with barebox 2020.01.0
To: Sascha Hauer <s.hauer@pengutronix.de>, "Koelle, Holger" <Holger.Koelle@allegion.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hello Holger,

On 8/12/20 11:51 AM, Sascha Hauer wrote:
> On Wed, Aug 12, 2020 at 07:36:58AM +0000, Koelle, Holger wrote:
>> So my Question :  Is it possible to enable the drm (gpu) unit in

Sidenote: you usually don't touch the GPU in the bootloader, only
the display controller.

>> Barebox 2020.01.0 at the am335x phycore board or is it not supported?
> 
> We don't have a framebuffer driver for am335x, so you won't have any
> luck getting a picture out of the hardware with barebox.

Unless *hint* someone *hint* feels like implementing support. :-)

Cheers
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
