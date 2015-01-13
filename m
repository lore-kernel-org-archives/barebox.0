Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YAweY-0002N8-UP
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 08:16:44 +0000
Received: from mail94.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id ADF5C1001105
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 09:16:19 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <1421136876-1688-1-git-send-email-yamada.m@jp.panasonic.com>
Date: Tue, 13 Jan 2015 16:16:12 +0800
Message-Id: <1B1999BE-E95F-469C-B2BF-6C9D71A66C01@jcrosoft.com>
References: <1421136876-1688-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: Re: [PATCH v2] kbuild: add KBUILD_DEFCONFIG
To: Masahiro Yamada <yamada.m@jp.panasonic.com>
Cc: barebox@lists.infradead.org


> On Jan 13, 2015, at 4:14 PM, Masahiro Yamada <yamada.m@jp.panasonic.com> wrote:
> 
> This allows "make ARCH=... defconfig".
> 
> Fox example, you can type "make defconfig" instead of
> "make sandbox_defconfig".
> 
> Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
Ack
> ---
> 
> Changes in v2:
>  - Add it only to sandbox, x86, efi.
> 
> arch/efi/Makefile     | 2 ++
> arch/sandbox/Makefile | 1 +
> arch/x86/Makefile     | 2 ++
> 3 files changed, 5 insertions(+)
> 
> diff --git a/arch/efi/Makefile b/arch/efi/Makefile
> index 85cb655..b078bd0 100644
> --- a/arch/efi/Makefile
> +++ b/arch/efi/Makefile
> @@ -1,3 +1,5 @@
> +KBUILD_DEFCONFIG := efi_defconfig
> +
> CFLAGS += -fpic -fshort-wchar -mno-sse -mno-mmx
> 
> ifeq ($(CONFIG_X86_32),y)
> diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
> index ed5d3a3..e3fb039 100644
> --- a/arch/sandbox/Makefile
> +++ b/arch/sandbox/Makefile
> @@ -1,3 +1,4 @@
> +KBUILD_DEFCONFIG := sandbox_defconfig
> 
> CPPFLAGS += -D__SANDBOX__ -fno-strict-aliasing
> 
> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> index a78fa22..da17d70 100644
> --- a/arch/x86/Makefile
> +++ b/arch/x86/Makefile
> @@ -1,3 +1,5 @@
> +KBUILD_DEFCONFIG := generic_defconfig
> +
> CPPFLAGS += -D__X86__ -fno-strict-aliasing
> 
> board-y := x86_generic
> -- 
> 1.9.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
