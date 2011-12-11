Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RZj20-0005v9-I2
 for barebox@lists.infradead.org; Sun, 11 Dec 2011 13:01:29 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <87ipm9yd88.fsf@free.fr> <20111124120400.GC27267@pengutronix.de>
 <87d3chxoxp.fsf@free.fr> <20111125000145.GE27267@pengutronix.de>
 <87lir18ag7.fsf@free.fr> <20111128074319.GO27267@pengutronix.de>
 <87d3cc87o5.fsf@free.fr> <20111129081501.GF27267@pengutronix.de>
 <87y5ux6zai.fsf@free.fr> <20111201142636.GP27267@pengutronix.de>
Date: Sun, 11 Dec 2011 14:01:17 +0100
In-Reply-To: <20111201142636.GP27267@pengutronix.de> (Sascha Hauer's message
 of "Thu, 1 Dec 2011 15:26:36 +0100")
Message-ID: <87borfz2hu.fsf@free.fr>
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
Subject: Re: ARM, MMU and IO space mapping
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

>> That would require a function in arch/arm/cpu/mmu.c, to remap a physical address
>> range into a virtual one, wouldn't it ? Would you have a suggestion for the API
>> ? As in map_io_section(u32 phys_addr, void *virt) ?
>
> How about adding a size parameter ;)
Ok, then it would become "map_io_range(unsignend long phys_addr, void *virt)",
which is a little more complicated that the original map_io_section which
remapped only full 1M sections for simplicity.

But yeah, I can add that parameter :)

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
