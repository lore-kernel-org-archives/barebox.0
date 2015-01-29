Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp07.smtpout.orange.fr ([80.12.242.129]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGujK-0004gI-8y
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 19:26:19 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <20150129091229.GA424@gmail.com>
 <20150129092151.GE12209@pengutronix.de>
Date: Thu, 29 Jan 2015 20:25:54 +0100
In-Reply-To: <20150129092151.GE12209@pengutronix.de> (Sascha Hauer's message
 of "Thu, 29 Jan 2015 10:21:51 +0100")
Message-ID: <87k305o0cd.fsf@free.fr>
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

> On Thu, Jan 29, 2015 at 10:12:46AM +0100, Wjatscheslaw Stoljarski wrote:
>> Hello,
>> 
>> If I try to read from first 4k RAM on imx53/imx6, with md or from code,
>> barebox show stacktrace with mesage:
>> "unable to handle NULL pointer dereference at address 0x...".
>> Is it possible in some way do that?
>
> The only way I know is to disable CONFIG_MMU in the config.
I think the solution in arch/arm/boards/mioa701/board.c (remapping the 0x0
address) should work here :
	docg3_iospace = map_io_sections(0x0, (void *)0xe0000000, 0x2000);

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
