Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA9gk-0007ja-Jr
 for barebox@lists.infradead.org; Tue, 17 Sep 2019 09:22:25 +0000
References: <20190906140127.17396-1-a.fatoum@pengutronix.de>
 <20190909072331.4xmc6nvjgfdxged3@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <0f039d89-2b64-ae91-a0c3-30c10c461c34@pengutronix.de>
Date: Tue, 17 Sep 2019 11:22:19 +0200
MIME-Version: 1.0
In-Reply-To: <20190909072331.4xmc6nvjgfdxged3@pengutronix.de>
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
Subject: Re: [PATCH] gpio: add driver for SN74273 output expander
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 9/9/19 9:23 AM, Sascha Hauer wrote:
> On Fri, Sep 06, 2019 at 04:01:27PM +0200, Ahmad Fatoum wrote:
>> The SN74273 is an octal D-Type Flip-Flop. When used as an output expander,
>> N existing output signals can be turned into (N-8)*8 outputs using
>> N-8 chips. Add driver to facilitate this.
> 
> The reason I haven't mainlined this driver when writing it was that
> Linux also has a driver for the 74273, but in a completely different
> setup. In the Linux driver the 74273 is assumed to have its inputs on
> the data bus together with a separate address decoder.
> The chip in this driver here instead is connected via GPIO pins. For
> Using flipflops as GPIO expanders there a myriads of different ways to
> implement, so I have my doubts how useful it is to even try to put them
> in a generic driver.

FTR: I talked this over with Sascha. As I understood, the main issue is
with reserving a fairly generic "ti,74273-gpio" compatible with what is
a very special way of using these flip flops. We could however get it in
with a different proprietary compatible. I might revisit this in future
along with a kernel driver, but please dismiss for now.


> 
> Sascha
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
