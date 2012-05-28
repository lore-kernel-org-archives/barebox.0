Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SYwPO-0006bD-P7
 for barebox@lists.infradead.org; Mon, 28 May 2012 09:38:39 +0000
Received: by lbbgg6 with SMTP id gg6so2386422lbb.36
 for <barebox@lists.infradead.org>; Mon, 28 May 2012 02:38:35 -0700 (PDT)
Message-ID: <4FC34794.7030301@gmail.com>
Date: Mon, 28 May 2012 15:38:28 +0600
From: Alexey Galakhov <agalakhov@gmail.com>
MIME-Version: 1.0
References: <1337866065-6775-1-git-send-email-agalakhov@gmail.com>
 <1337866065-6775-3-git-send-email-agalakhov@gmail.com>
 <20120524201106.GC30400@pengutronix.de>
In-Reply-To: <20120524201106.GC30400@pengutronix.de>
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
Subject: Re: [PATCH 2/2] Add FriendlyArm Tiny210 board (S5PV210)
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 25.05.2012 02:11, Sascha Hauer wrote:
> On Thu, May 24, 2012 at 07:27:45PM +0600, Alexey Galakhov wrote:
>> Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>
>> ---
>> +
>> +#define ADDR_V210_SDMMC_BASE	0xD0037488
>> +#define ADDR_CopySDMMCtoMem	0xD0037F98
>> +
>> +#define RR(x) (*(volatile uint32_t*)(x))
>> +
> 
> why not use regular readl/writel here?

Ok. Aren't readl/writel for register access? This is "not a register"
(although there is in fact no differnce).

> Can we do without pll init? If not, the ifdef should not be here.

The PLL comes initialized in some way from the iROM boot. It may or may
not work depending on the hardware actually used. Looks like DRAM and
UART are OK but others may not work.

> Does it make sense to run this code without SDRAM setup code? It seems
> the ifdef should not be here. Without SDRAM setup code you'll jump to
> nirvana below.

Ok. Thanks.

> Please use DEVICE_ID_DYNAMIC instead of -1.

Ok, thanks.

Regards,
Alex


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
