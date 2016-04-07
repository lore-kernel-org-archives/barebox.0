Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ao2XI-0007RK-KS
 for barebox@lists.infradead.org; Thu, 07 Apr 2016 05:31:44 +0000
Date: Thu, 7 Apr 2016 07:30:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160407053057.GF9102@pengutronix.de>
References: <1459841605-8850-1-git-send-email-m.olbrich@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1459841605-8850-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: Re: [PATCH] efi: let the generic relocate code handle all relocations
To: Michael Olbrich <m.olbrich@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Apr 05, 2016 at 09:33:25AM +0200, Michael Olbrich wrote:
> Part of the barebox code and variables are put in separate sections
> (.barebox* and .initcall*). When this code is compiled as position
> independent code then the compiler creates corresponding .rela.barebox* and
> .rela.initcall* sections with the relocation table entries.
> These sections don't match the .rela.data* wildcard in the linker script.
> As a result, they are not added to the .rela section during linking but are
> added individually after it instead. And when the EFI binary is created
> from the ELF binary, these sections are not copied.
> This has two side effects:
> 
> 1. The corresponding relocations are not handled by the generic relocation
> code. 'fixup_tables()' was added to do these relocations manually.
> 
> 2. In the DYNAMIC section, the RELASZ entry contains the total size of
> relocations in bytes. This includes the .rela.barebox* and .rela.initcall*
> sections. This value is not modified when the EFI binary is created. So the
> value is too large.
> The generic relocation code in _relocate() used this value when iterating
> over all relocation entries. With the wrong RELASZ value it iterates beyond
> the end of the .rela section into uninitialized memory. After power-on this
> memory is zero and the relocation code interprets this as 'nothing to do',
> so there is no visible effect. After a soft reset, random data in that area
> may produce a seemingly valid relocation entry, a random address is
> modified and barebox crashes.
> 
> This patch adds the .rela.barebox* and .rela.initcall* sections to the
> normal .rela section. The RELASZ now contains the correct size and the
> generic relocation code works correctly. 'fixup_tables()' must be removed
> at the same time to avoid relocating these entries twice.
> 
> Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
> ---
>  arch/efi/efi/efi.c                | 42 ---------------------------------------
>  arch/efi/lib/elf_x86_64_efi.lds.S |  2 ++
>  2 files changed, 2 insertions(+), 42 deletions(-)

Applied, thanks. And thanks for finally fixing this issue :)

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
