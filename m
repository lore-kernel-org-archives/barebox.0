Return-path: <barebox-bounces@lists.infradead.org>
Received: from mail6.tpgi.com.au ([203.12.160.113])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P1rjB-0000la-Gl
	for barebox@lists.infradead.org; Sat, 02 Oct 2010 02:21:34 +0000
From: Marc Reilly <marc@cpdesign.com.au>
Date: Sat, 2 Oct 2010 12:20:47 +1000
References: <1285904458-7015-1-git-send-email-marc@cpdesign.com.au>
	<201010011458.24626.marc@cpdesign.com.au>
	<20101001165324.GG25320@game.jcrosoft.org>
In-Reply-To: <20101001165324.GG25320@game.jcrosoft.org>
MIME-Version: 1.0
Message-Id: <201010021220.48068.marc@cpdesign.com.au>
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
Errors-To: barebox-bounces@lists.infradead.org
Subject: Re: [PATCH 1/2] imx: Internal boot sources, handle all header offsets
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Saturday, October 02, 2010 02:53:24 am Jean-Christophe PLAGNIOL-VILLARD 
wrote:
> On 14:58 Fri 01 Oct     , Marc Reilly wrote:
> > Hi,
> > 
> > > > -#define __image_len_0x100		__section(.image_len_0x100)
> > > > +#if defined(CONFIG_ARCH_IMX_INTERNAL_BOOT_NOR)
> > > > +	#define __flash_header_section		__section(.flash_header_0x1000)
> > > > +	#define __dcd_entry_section		__section(.dcd_entry_0x1000)
> > > > +	#define __image_len_section		__section(.image_len_0x1000)
> > > > +	#define FLASH_HEADER_OFFSET 0x1000
> > > > +#elif defined(CONFIG_ARCH_IMX_INTERNAL_BOOT_ONENAND)
> > > > +	#define __flash_header_section		__section(.flash_header_0x0100)
> > > > +	#define __dcd_entry_section		__section(.dcd_entry_0x0100)
> > > > +	#define __image_len_section		__section(.image_len_0x0100)
> > > > +	#define FLASH_HEADER_OFFSET 0x0100
> > > 
> > > nor and onenand are the same why duplicate them?
> > 
> > They look similar but, NOR offset is at 4Kb (0x1000), OneNand is 256b
> > (0x100).
> > 
> > (The leading zero for 0x0100 doesn't help, but is necessary otherwise the

(Clarification here, I meant that the leading zero potentially makes them look 
more similar)

> > blah_0x1000 matches the blah_0x100* linker section.)
> 
> why do we need specific section name?

Only the the final link location really matters, there are three locations 
that the internal boot ROM could look for the flash header info, depending on 
the type of external media. 
The way it was set up was that there were the three predefined sections that 
would be located at the correct address. The approach I took with these 
patches was to just keep that the same.

Looking back, possibly there is a simpler way to do it, but I've got to move 
on to other things.

Cheers
Marc

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
