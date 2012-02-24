Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S0xqm-0000PQ-B7
 for barebox@lists.infradead.org; Fri, 24 Feb 2012 16:18:28 +0000
Received: by wgbdt13 with SMTP id dt13so1471989wgb.18
 for <barebox@lists.infradead.org>; Fri, 24 Feb 2012 08:18:24 -0800 (PST)
From: Mark Olleson <mark.olleson@yamaha.co.uk>
Date: Fri, 24 Feb 2012 16:18:20 +0000
References: <FCA231F0-6BD8-4368-8303-C664165FAC42@yamaha.co.uk>
Message-Id: <689AA175-B33D-4D56-994B-747B2C5CF019@yamaha.co.uk>
Mime-Version: 1.0 (Apple Message framework v1251.1)
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
Subject: Fwd: PATCH: Fix MMC boot in OMAP4 xload configurations
To: barebox@lists.infradead.org

> Sascha,
> On 24 Feb 2012, at 07:23, Sascha Hauer wrote:
> 
>> Hi Mark,
>> 
>> On Thu, Feb 23, 2012 at 04:53:28PM +0000, Mark Olleson wrote:
>>> omap4_bootsrc() always returns OMAP_BOOTSRC_UNKNOWN when an OMAP4
>>> xload image is built with pcm049_xload_defconfig.  This is likely to
>>> be the case for all OMAP4 xload configurations.
>>> 
>>> This means that when the CPU is configured to boot from MMC1 with
>>> boot[5:0],  xload will load the second stage boot loader from NAND
>>> flash (if present) rather than MMC1 as intended. 
>>> 
>>> omap4_bootsrc() reads data left behind towards the top of the SRAM by
>>> the ROM-based boot-loader.  This is the same SRAM into which the xload
>>> image is loaded.   The xload image is of a sufficient size that it
>>> overwrites these locations, and OMAP4_TRACING_VECTOR3 always contains
>>> 0.
>>> 
>>> These locations are in fact trampled by data in the BSS section of the
>>> image.   The single largest item in there is FILE files[MAX_FILES].
>>> This patch reduces the size of files[] considerably.  The image now
>>> JUST fits.
>> 
>> Sorry, this is not even a short term solution, it will probably break
>> very soon again.
> 
> I totally agree - this fixed me in the very short term, but we're sailing so close 
> to the wind here that changes in the any (few) modules that are used in these 
> configurations will break it again. 
> 
> My patch was really a heads-up that we have an issue. 
> 
>> 


On further digging,  this gets even worse:  Barebox's initial stack is in the same area of SRAM as the ROM-loader's - overwriting the area where bss section of the image is getting loaded, containing various areas of static storage.  Here, these addresses were falling somewhere in the middles of:

static FILE files[MAX_FILES]

Thankfully, there isn't a great deal of function call depth before the stack is then set up in SDRAM, and tramples here don't matter too much.   

Anyway, be warned - some interesting failure modes lie ahead should some of the other bits of static data or even program code fall at this location!


Mark
---

Mark Olleson - Senior R&D Engineer
Technology Research & Development Group
Yamaha R&D Centre London

mark.olleson@yamaha.co.uk






_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
