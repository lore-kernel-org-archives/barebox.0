Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp01.smtpout.orange.fr ([80.12.242.123]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YHGfN-0005tv-IO
 for barebox@lists.infradead.org; Fri, 30 Jan 2015 18:51:42 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <20150129091229.GA424@gmail.com>
 <20150129092151.GE12209@pengutronix.de> <87k305o0cd.fsf@free.fr>
 <20150130074017.GP12209@pengutronix.de>
Date: Fri, 30 Jan 2015 19:51:19 +0100
In-Reply-To: <20150130074017.GP12209@pengutronix.de> (Sascha Hauer's message
 of "Fri, 30 Jan 2015 08:40:17 +0100")
Message-ID: <87lhkkm7a0.fsf@free.fr>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Access to first 0x1000 byte on imx53/imx6
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> On Thu, Jan 29, 2015 at 08:25:54PM +0100, Robert Jarzmik wrote:
>> Sascha Hauer <s.hauer@pengutronix.de> writes:
>> I think the solution in arch/arm/boards/mioa701/board.c (remapping the 0x0
>> address) should work here :
>> 	docg3_iospace = map_io_sections(0x0, (void *)0xe0000000, 0x2000);
>
> We could create a /dev/zeropage with the code above. That would make the
> zero page generally available. I don't know if this is worth the effort
> though.

Yeah, I don't know if it's worth it either. And how "big" should this
/dev/zeropage be (4k, 1M, ...) ?

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
