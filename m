Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieFsD-00087Q-TV
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 10:02:39 +0000
Message-ID: <72a6bb8e57fdf0db6bf432c965f0817923d757aa.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 09 Dec 2019 11:02:34 +0100
In-Reply-To: <20191209090504.GA32178@ravnborg.org>
References: <20191209080029.3905-1-dev@lynxeye.de>
 <20191209090504.GA32178@ravnborg.org>
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
Subject: Re: [PATCH] lds: align RO_DATA_SECTION members
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

Hi Sam,

On Mo, 2019-12-09 at 10:05 +0100, Sam Ravnborg wrote:
> Hi Lucas.
> 
> On Mon, Dec 09, 2019 at 09:00:29AM +0100, Lucas Stach wrote:
> > When using the RO_DATA_SECTION macro, all the individual components
> > are put into the rodata section. As they now end up in the same
> > section there is no alignment enforced between them anymore. This
> > leads to unaligned start pointers when any of the components have a
> > unaligned size. Enforce some alignment between them.
> 
> In the kernel we have:
> #define ALIGN_FUNCTION()  . = ALIGN(8)
> #define STRUCT_ALIGNMENT 32
> #define STRUCT_ALIGN() . = ALIGN(STRUCT_ALIGNMENT)
> 
> Could we use something similar here?

Actually the STRUCT_ALIGN() define is available in Barebox in the very
same file changed in this commit. However I'm not sure if using those
defines is an improvement. We have some stuff in the RO_DATA_SECTION
like DTB and RSA keys that are neither a struct nor a function, so
using any of those defines is at least misleading.

So if we want to make this more descriptive we would need a new define
with a somewhat fitting name.

Regards,
Lucas


> 	Sam
> 
> > Fixes: c5d38e920101 (lds: Add and use RO_DATA_SECTION macro)
> > Signed-off-by: Lucas Stach <dev@lynxeye.de>
> > ---
> >  include/asm-generic/barebox.lds.h | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> > 
> > diff --git a/include/asm-generic/barebox.lds.h b/include/asm-
> > generic/barebox.lds.h
> > index b6ca8eb2be27..113392d567fa 100644
> > --- a/include/asm-generic/barebox.lds.h
> > +++ b/include/asm-generic/barebox.lds.h
> > @@ -17,6 +17,7 @@
> >  #endif
> >  
> >  #define BAREBOX_INITCALLS			\
> > +	. = ALIGN(8);				\
> >  	__barebox_initcalls_start = .;		\
> >  	KEEP(*(.initcall.0))			\
> >  	KEEP(*(.initcall.1))			\
> > @@ -36,6 +37,7 @@
> >  	__barebox_initcalls_end = .;
> >  
> >  #define BAREBOX_EXITCALLS			\
> > +	. = ALIGN(8);				\
> >  	__barebox_exitcalls_start = .;		\
> >  	KEEP(*(.exitcall.0))			\
> >  	KEEP(*(.exitcall.1))			\
> > @@ -47,37 +49,44 @@
> >  	__barebox_exitcalls_end = .;
> >  
> >  #define BAREBOX_CMDS				\
> > +	. = ALIGN(8);				\
> >  	__barebox_cmd_start = .;		\
> >  	KEEP(*(SORT_BY_NAME(.barebox_cmd*)))	\
> >  	__barebox_cmd_end = .;
> >  
> >  #define BAREBOX_RATP_CMDS			\
> > +	. = ALIGN(8);				\
> >  	__barebox_ratp_cmd_start = .;		\
> >  	KEEP(*(SORT_BY_NAME(.barebox_ratp_cmd*)))	\
> >  	__barebox_ratp_cmd_end = .;
> >  
> >  #define BAREBOX_SYMS				\
> > +	. = ALIGN(8);				\
> >  	__usymtab_start = .;			\
> >  	KEEP(*(__usymtab))			\
> >  	__usymtab_end = .;
> >  
> >  #define BAREBOX_MAGICVARS			\
> > +	. = ALIGN(8);				\
> >  	__barebox_magicvar_start = .;		\
> >  	KEEP(*(SORT_BY_NAME(.barebox_magicvar*)))	\
> >  	__barebox_magicvar_end = .;
> >  
> >  #define BAREBOX_CLK_TABLE			\
> > +	. = ALIGN(8);				\
> >  	__clk_of_table_start = .;		\
> >  	KEEP(*(.__clk_of_table));		\
> >  	KEEP(*(.__clk_of_table_end));		\
> >  	__clk_of_table_end = .;
> >  
> >  #define BAREBOX_DTB				\
> > +	. = ALIGN(8);				\
> >  	__dtb_start = .;			\
> >  	KEEP(*(.dtb.rodata.*));			\
> >  	__dtb_end = .;
> >  
> >  #define BAREBOX_IMD				\
> > +	. = ALIGN(8);				\
> >  	KEEP(*(.barebox_imd_start))		\
> >  	KEEP(*(.barebox_imd_1*))		\
> >  	*(.barebox_imd_0*)			\
> > @@ -85,6 +94,7 @@
> >  
> >  #ifdef CONFIG_PCI
> >  #define BAREBOX_PCI_FIXUP			\
> > +	. = ALIGN(8);				\
> >  	__start_pci_fixups_early = .;		\
> >  	KEEP(*(.pci_fixup_early))		\
> >  	__end_pci_fixups_early = .;		\
> > @@ -99,6 +109,7 @@
> >  #endif
> >  
> >  #define BAREBOX_RSA_KEYS			\
> > +	. = ALIGN(8);				\
> >  	__rsa_keys_start = .;			\
> >  	KEEP(*(.rsa_keys.rodata.*));		\
> >  	__rsa_keys_end = .;			\
> > -- 
> > 2.23.0
> > 
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
