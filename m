Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yx8od-0002VD-QG
 for barebox@lists.infradead.org; Tue, 26 May 2015 06:58:20 +0000
Date: Tue, 26 May 2015 08:57:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150526065756.GZ6325@pengutronix.de>
References: <1431572067-4038-1-git-send-email-andrew.smirnov@gmail.com>
 <1431572067-4038-10-git-send-email-andrew.smirnov@gmail.com>
 <20150519070613.GX6325@pengutronix.de>
 <CAHQ1cqECGkwNQp4tgBrj1g6NR01EQHjsbf_omeiN+GPHpaeuhA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqECGkwNQp4tgBrj1g6NR01EQHjsbf_omeiN+GPHpaeuhA@mail.gmail.com>
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
Subject: Re: [PATCH 10/10] ARM: pbl: Add an option to validate DRAM
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Sat, May 23, 2015 at 11:48:41AM -0700, Andrey Smirnov wrote:
> On Tue, May 19, 2015 at 12:06 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > Hi Andrey,
> >
> > On Wed, May 13, 2015 at 07:54:27PM -0700, Andrey Smirnov wrote:
> >> Add an option to perform DRAM region validation before using it. The
> >> framework allows individual boards to set up a memory validaion hook
> >> that would be called prior to Barebox using that region of memory.
> >>
> >> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> >
> > What usecase do you have for this patch?
> 
> The usecase is to be able to have a hardware verification build of the
> boot-loader which can be used to test the boards in manufacturing.
> 
> > Is it debugging or something  you always want to enable on your hardware?
> 
> I need it to be always enabled only in a special build of the BL.
> 
> > Why must the validate_memory_range function be board specific?
> 
> Because the choice of a memory validation algorithm depends on many factors:
> - Speed vs. how extensive you want your tests to be
> - Chosen memory fault model (DDR vs. SRAM would be different)
> - etc.
> 
> Also various memory controllers also might various degree of low level
> control so some might allow the developer to flip more switches and
> test more corner cases.
> 
> >
> > I see that you call validate_memory_range on potentially large areas of
> > memory, so I wonder if you can't call validate_memory_range from your
> > board setup code with the complete memory instead.
> 
> Even with the current algorithm implemented in mem_test() (which ,
> having read a number of academic papers on memory testing, I don't
> believe is comprehensible enough) testing any significant of memory
> takes a very noticeable amount of time. I wanted to spend as little
> amount of time without having access to extended Barebox functionality
> to communicate with the rest of the world(like networking, proper
> serial) as possible so I set up the algorithm the way it is and
> configured Barebox to have a small(3MB) heap.
> 
> Also, testing all of the memory in PBL code brings up the question of
> what is the point of 'memtest' command? If the only comprehensive way
> of testing memory is in PBL code than, IMHO, that function is not very
> useful.
> 
> > I am not very fond of overly using get_runtime_offset to calculate
> > pointers. Setting callback functions from early code which does not run
> > on its link address is something I really want to avoid.
> 
> I agree with you on this point. I don't like that code very much either.

How about testing only a small fragment of DRAM, say 8MB, in your
lowlevel board code and calling barebox_arm_entry() with the
membase/memsize you previously tested? This way you can make sure that
barebox only uses tested memory without having to test all memory before
calling barebox_arm_entry() and without having to call back into some
testing function.

The newest TLSF implementation also supports pools, so we could add the
full amount of memory later if we want to.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
