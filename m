Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RqoKY-0000AJ-SQ
 for barebox@lists.infradead.org; Fri, 27 Jan 2012 16:07:16 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1327607728-2788-1-git-send-email-robert.jarzmik@free.fr>
 <1327607728-2788-5-git-send-email-robert.jarzmik@free.fr>
 <20120127114210.GC5446@pengutronix.de>
Date: Fri, 27 Jan 2012 17:07:04 +0100
In-Reply-To: <20120127114210.GC5446@pengutronix.de> (Sascha Hauer's message of
 "Fri, 27 Jan 2012 12:42:10 +0100")
Message-ID: <87zkd9gmdz.fsf@free.fr>
MIME-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] arm/mach-pxa: add pulse width modulator controller
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> On Thu, Jan 26, 2012 at 08:55:28PM +0100, Robert Jarzmik wrote:
>> Add PXA embedded pulse width modulator support. The PWM can
>> generate signals from 49.6kHz to 1.625MHz.
>> 
>> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
>> ---
>
> [...]
>
>> +
>> +	/* NOTE: the clock to PWM has to be enabled first
>> +	 * before writing to the registers
>> +	 */
>
> Does this mean that pwm_enable() has to be called prior to pxm_config()?
Yes.

> I think we should rather have a real pwm API.
So do I.

> The following Kernel patch could be easily adopted and the overhead is
> acceptable I think.
Would you adapt it or do you want me to do it ?

> The problem is that once we let PXA implement pwm functions we cannot support
> other pwms in the same binary. On i.MX for example we have dedicated PWM
> controllers which most people use, but some others use a pwm internal to the
> framebuffer controller.
True. That's a good reason to have your framework implemented. I don't think the
rework of my patch on top of the framework will take me a lot of time.

Cheers.

--
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
