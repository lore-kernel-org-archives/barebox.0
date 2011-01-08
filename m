Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PbXim-0006Fo-AI
	for barebox@lists.infradead.org; Sat, 08 Jan 2011 12:16:37 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
References: <m38vyym6k9.fsf@intrepid.localdomain>
	<m3vd22kq8q.fsf@intrepid.localdomain>
	<20110106233651.GB944@game.jcrosoft.org>
Date: Sat, 08 Jan 2011 13:16:01 +0100
In-Reply-To: <20110106233651.GB944@game.jcrosoft.org> (Jean-Christophe
	PLAGNIOL-VILLARD's message of "Fri, 7 Jan 2011 00:36:51 +0100")
Message-ID: <m3ei8nwpz2.fsf@intrepid.localdomain>
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
Subject: Re: [PATCH 3/3] ARM: Add support for IXP4xx CPU and for Goramo
	Multilink router platform.
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:

>> +/* offsets from start of flash ROM = 0x50000000 */
>> +#define CFG_ETH0_ADDRESS     0x40 /* 6 bytes */
>                            ^^^^^
> whitespace please use tab for indent

Is it the official requirement that I should use tabs for visual
indentation (I use tabs for syntactic indentation).

This forces anyone to display with tabs=8 (vide the discussions on
lkml). Obviously one can decide to use tabs everywhere, I just want
to see such decision has been taken.

>> +static struct device_d cfi_dev = {
>> +	.name     = "cfi_flash",
>> +	.map_base = IXP4XX_EXP_BASE(0),
>> +	.size     = 16 * 1024 * 1024,
   ^^^^^^ I.e., I use tabs here.

>> +#define CFG_ETH1_ADDRESS     0x46 /* 6 bytes */
                            ^^^^^ but not here (probably).

>> +#define ETH_ALEN             6
> IIR we have a macro for it

What's its name?

>> +#define BAREBOX_START        0x00000
>> +#define BAREBOX_LENGTH       0x34000
>> +#define NPE_A_START          (BAREBOX_START + BAREBOX_LENGTH)
>> +#define NPE_A_LENGTH         0x05000
>> +#define NPE_B_START          (NPE_A_START + NPE_A_LENGTH)
>> +#define NPE_B_LENGTH         0x03000
>> +#define NPE_C_START          (NPE_B_START + NPE_B_LENGTH)
>> +#define NPE_C_LENGTH         0x04000
>> +#define NPE_ENV0_START       (NPE_C_START + NPE_C_LENGTH)
>> +#define NPE_ENV0_LENGTH      0x20000
> I prefer we use a fs to store it so we can share it Linux
> with a cramfs at least

That means creating a CRAMFS in Barebox' two read/only blocks. Will look
at it.

>> +	sdram_dev.size = __raw_readl(IXP4XX_EXP_BASE(0) + CFG_SDRAM_SIZE);
> how about check the data before register

The amount of RAM is simply stored at CFG_SDRAM_SIZE (there are boards
with 32, 64, 128 and 256 MB). There is no way it can be invalid (it's
written to flash with JTAG).

> and if not good use the minimum memory size for the hardware design

It can't be "no good". It would mean the config space is corrupted, and
the best we could do in such case is some sort of panic(). Without the
config space we don't know, for example, the number of SDRAM banks,
what RAM chips are there, what are our assigned Ethernet MAC addresses
(which is alone a sufficient reason to panic) etc.

>> +static inline void qmgr_put_entry(unsigned int queue, u32 val)
>> +{
>> +#if DEBUG_QMGR
>> +	BUG_ON(!qmgr_queue_descs[queue]); /* not yet requested */
>> +
>> +	fprintf(stderr, "Queue %s(%i) put %X\n",
>> +		qmgr_queue_descs[queue], queue, val);
> please use debug() instead of fprintf so no need of ifdef if no BUG_ON
> and it will be good to be able to enable the DEBUG via Kconfig

I'll look at it. Guess it will need another CONFIG_* for this.
I'd been doing this for some time in Linux and my experience is users
tend to select stuff like this unnecesarily. Perhaps a boot loader
people are different than casual kernel compilers.

> please avoid the #if 0
> if no need remove it or use a CONFIG

It will probably be needed when using IRQs. At this point it's obviously
unneeded. Using CONFIG for this is pointless since it's not yet
implemented. This code is some sort of copy of (functional) Linux
driver.

I can remove it if it's a problem, of course.
-- 
Krzysztof Halasa

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
