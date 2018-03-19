Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1exqUy-0007SU-Ti
 for barebox@lists.infradead.org; Mon, 19 Mar 2018 08:50:35 +0000
Date: Mon, 19 Mar 2018 09:50:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180319085019.qbcgurw2aspsmxcr@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
 <20180316125354.23462-31-s.hauer@pengutronix.de>
 <CAHQ1cqGbkHN+Csi7-Bb=_iTea4zXK3-mmK8EK0x-UW9niHNCQg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqGbkHN+Csi7-Bb=_iTea4zXK3-mmK8EK0x-UW9niHNCQg@mail.gmail.com>
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
Subject: Re: [PATCH 30/78] ARM: aarch64: Add relocation support
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Andrey,

On Fri, Mar 16, 2018 at 02:51:19PM -0700, Andrey Smirnov wrote:
> On Fri, Mar 16, 2018 at 5:53 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > This adds aarch64 support for relocating binaries linked with -pie.
> >
> > Support is integrated into the already exisiting
> > relocate_to_current_adr() function which is now used for both arm32
> > and aarch64.
> >
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> 
> Sascha:
> 
> Two small suggestions w.r.t. this patch:
> 
>  - I'd consider changing the code of relocate_to_current_adr() such
> that AARCH64 specific codepaths are not taken on ARM32 (via IS_ENABLED
> check or something similar)

Why? Do you want to make the code more clear or do you fear that we
apply fixups for a foreign architecture?

> 
>  - I've always wanted to fix the original code to use Elf32_rel type
> instead of magic hard-coded offsets, so depending on your
> willingness/time-budget, maybe now would be a good time to do that as
> well as use Elf64_rela for AARCH64?

You mean using 

> struct elf32_rel {
>	Elf32_Addr    r_offset;
>	Elf32_Word    r_info;
> } Elf32_Rel;

and:

> struct elf64_rela {
> 	Elf64_Addr r_offset;  /* Location at which to apply the action */
> 	Elf64_Xword r_info;   /* index and type of relocation */
>	Elf64_Sxword r_addend;        /* Constant addend used to compute value */
> } Elf64_Rela;

?

Yes, I can change that. I wonder though which type is behind R_ARM_ABS32

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
