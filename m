Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RVsIL-0004wI-Pd
 for barebox@lists.infradead.org; Wed, 30 Nov 2011 22:06:27 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <87ipm9yd88.fsf@free.fr> <20111124120400.GC27267@pengutronix.de>
 <87d3chxoxp.fsf@free.fr> <20111125000145.GE27267@pengutronix.de>
 <87lir18ag7.fsf@free.fr> <20111128074319.GO27267@pengutronix.de>
 <87d3cc87o5.fsf@free.fr> <20111129081501.GF27267@pengutronix.de>
Date: Wed, 30 Nov 2011 23:06:13 +0100
In-Reply-To: <20111129081501.GF27267@pengutronix.de> (Sascha Hauer's message
 of "Tue, 29 Nov 2011 09:15:01 +0100")
Message-ID: <87y5ux6zai.fsf@free.fr>
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

> We use high vectors at 0xfff00000, so there won't be vectors at 0x0. the
> 0x0 mapping is only used to catch NULL pointer derefs.

> That said, being able to catch NULL pointers is a very good thing,
> especially when there is flash at 0x0 which might be accidently
> overwritten by some code acting on NULL pointers.
I don't know if it can be that easily overwritten, but catching NPE is always
good, it's true.

> With MMU we could just remap the flash in board code and pass the
> remapped address as resource to the cfi driver. While I think the
> cleanest solution would be to use ioremap in all drivers (and make
> this a no-op on most boards) I don't think it's worth it at the moment.
OK, remap in board, and input virtual mapping address into io ressource, simple
enough. OK, I'll try that.
That would require a function in arch/arm/cpu/mmu.c, to remap a physical address
range into a virtual one, wouldn't it ? Would you have a suggestion for the API
? As in map_io_section(u32 phys_addr, void *virt) ?

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
