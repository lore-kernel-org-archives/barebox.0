Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaZC5-0007X1-Il
 for barebox@lists.infradead.org; Mon, 18 May 2020 06:24:13 +0000
Date: Mon, 18 May 2020 08:24:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200518062407.GL11869@pengutronix.de>
References: <20200517121439.2533232-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200517121439.2533232-1-masahiroy@kernel.org>
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
Subject: Re: [PATCH] arch: include <asm-generic/int-ll64.h> from <asm/types.h>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: barebox@lists.infradead.org

On Sun, May 17, 2020 at 09:14:39PM +0900, Masahiro Yamada wrote:
> Many architectures duplicate the same fixed type definitions
> as in <asm-generic/int-ll64.h>.
> 
> Include <asm-generic/int-ll64.h> from <asm/types.h>, and remove
> the duplicated code.
> 
> Note:
> Linux commit 0c79a8e29b5f ("asm/types.h: Remove
> include/asm-generic/int-l64.h") unified the kernel space
> definition into int-ll64.h. Barebox also adopts int-ll64.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---

Applied, thanks

Sascha

> 
>  arch/arm/include/asm/types.h      | 48 +------------------
>  arch/nios2/include/asm/int-ll64.h | 78 -------------------------------
>  arch/nios2/include/asm/types.h    |  2 +-
>  arch/openrisc/include/asm/types.h | 48 +------------------
>  arch/powerpc/include/asm/types.h  | 35 +-------------
>  arch/riscv/include/asm/types.h    | 42 +----------------
>  arch/sandbox/include/asm/types.h  | 42 +----------------
>  arch/x86/include/asm/types.h      | 42 +----------------
>  8 files changed, 11 insertions(+), 326 deletions(-)
>  delete mode 100644 arch/nios2/include/asm/int-ll64.h
> 
> diff --git a/arch/arm/include/asm/types.h b/arch/arm/include/asm/types.h
> index 9c2106688..22b964265 100644
> --- a/arch/arm/include/asm/types.h
> +++ b/arch/arm/include/asm/types.h
> @@ -1,52 +1,6 @@
>  #ifndef __ASM_ARM_TYPES_H
>  #define __ASM_ARM_TYPES_H
>  
> -#ifndef __ASSEMBLY__
> -
> -/*
> - * __xx is ok: it doesn't pollute the POSIX namespace. Use these in the
> - * header files exported to user space
> - */
> -
> -typedef __signed__ char __s8;
> -typedef unsigned char __u8;
> -
> -typedef __signed__ short __s16;
> -typedef unsigned short __u16;
> -
> -typedef __signed__ int __s32;
> -typedef unsigned int __u32;
> -
> -#if defined(__GNUC__) && !defined(__STRICT_ANSI__)
> -typedef __signed__ long long __s64;
> -typedef unsigned long long __u64;
> -#endif
> -
> -#endif /* __ASSEMBLY__ */
> -
> -/*
> - * These aren't exported outside the kernel to avoid name space clashes
> - */
> -#ifdef __KERNEL__
> -
> -#include <asm/bitsperlong.h>
> -
> -#ifndef __ASSEMBLY__
> -
> -typedef signed char s8;
> -typedef unsigned char u8;
> -
> -typedef signed short s16;
> -typedef unsigned short u16;
> -
> -typedef signed int s32;
> -typedef unsigned int u32;
> -
> -typedef signed long long s64;
> -typedef unsigned long long u64;
> -
> -#endif /* __ASSEMBLY__ */
> -
> -#endif /* __KERNEL__ */
> +#include <asm-generic/int-ll64.h>
>  
>  #endif
> diff --git a/arch/nios2/include/asm/int-ll64.h b/arch/nios2/include/asm/int-ll64.h
> deleted file mode 100644
> index f394147c0..000000000
> --- a/arch/nios2/include/asm/int-ll64.h
> +++ /dev/null
> @@ -1,78 +0,0 @@
> -/*
> - * asm-generic/int-ll64.h
> - *
> - * Integer declarations for architectures which use "long long"
> - * for 64-bit types.
> - */
> -
> -#ifndef _ASM_GENERIC_INT_LL64_H
> -#define _ASM_GENERIC_INT_LL64_H
> -
> -#include <asm/bitsperlong.h>
> -
> -#ifndef __ASSEMBLY__
> -/*
> - * __xx is ok: it doesn't pollute the POSIX namespace. Use these in the
> - * header files exported to user space
> - */
> -
> -typedef __signed__ char __s8;
> -typedef unsigned char __u8;
> -
> -typedef __signed__ short __s16;
> -typedef unsigned short __u16;
> -
> -typedef __signed__ int __s32;
> -typedef unsigned int __u32;
> -
> -#ifdef __GNUC__
> -__extension__ typedef __signed__ long long __s64;
> -__extension__ typedef unsigned long long __u64;
> -#else
> -typedef __signed__ long long __s64;
> -typedef unsigned long long __u64;
> -#endif
> -
> -#endif /* __ASSEMBLY__ */
> -
> -#ifdef __KERNEL__
> -
> -#ifndef __ASSEMBLY__
> -
> -typedef signed char s8;
> -typedef unsigned char u8;
> -
> -typedef signed short s16;
> -typedef unsigned short u16;
> -
> -typedef signed int s32;
> -typedef unsigned int u32;
> -
> -typedef signed long long s64;
> -typedef unsigned long long u64;
> -
> -#define S8_C(x)  x
> -#define U8_C(x)  x ## U
> -#define S16_C(x) x
> -#define U16_C(x) x ## U
> -#define S32_C(x) x
> -#define U32_C(x) x ## U
> -#define S64_C(x) x ## LL
> -#define U64_C(x) x ## ULL
> -
> -#else /* __ASSEMBLY__ */
> -
> -#define S8_C(x)  x
> -#define U8_C(x)  x
> -#define S16_C(x) x
> -#define U16_C(x) x
> -#define S32_C(x) x
> -#define U32_C(x) x
> -#define S64_C(x) x
> -#define U64_C(x) x
> -
> -#endif /* __ASSEMBLY__ */
> -
> -#endif /* __KERNEL__ */
> -
> -#endif /* _ASM_GENERIC_INT_LL64_H */
> diff --git a/arch/nios2/include/asm/types.h b/arch/nios2/include/asm/types.h
> index 0067ea83c..380ad340c 100644
> --- a/arch/nios2/include/asm/types.h
> +++ b/arch/nios2/include/asm/types.h
> @@ -1,6 +1,6 @@
>  #ifndef __ASM_TYPES_H
>  #define __ASM_TYPES_H
>  
> -#include <asm/int-ll64.h>
> +#include <asm-generic/int-ll64.h>
>  
>  #endif
> diff --git a/arch/openrisc/include/asm/types.h b/arch/openrisc/include/asm/types.h
> index 8ee6bb00f..21a45b74c 100644
> --- a/arch/openrisc/include/asm/types.h
> +++ b/arch/openrisc/include/asm/types.h
> @@ -16,52 +16,6 @@
>  #ifndef _ASM_TYPES_H
>  #define _ASM_TYPES_H
>  
> -/*
> - * This file is never included by application software unless
> - * explicitly requested (e.g., via linux/types.h) in which case the
> - * application is Linux specific so (user-) name space pollution is
> - * not a major issue.  However, for interoperability, libraries still
> - * need to be careful to avoid a name clashes.
> - */
> -
> -/*
> - * __xx is ok: it doesn't pollute the POSIX namespace. Use these in the
> - * header files exported to user space
> - */
> -
> -typedef __signed__ char __s8;
> -typedef unsigned char __u8;
> -
> -typedef __signed__ short __s16;
> -typedef unsigned short __u16;
> -
> -typedef __signed__ int __s32;
> -typedef unsigned int __u32;
> -
> -#if defined(__GNUC__)
> -__extension__ typedef __signed__ long long __s64;
> -__extension__ typedef unsigned long long __u64;
> -#endif
> -
> -/*
> - * These aren't exported outside the kernel to avoid name space clashes
> - */
> -#ifdef __KERNEL__
> -
> -typedef signed char s8;
> -typedef unsigned char u8;
> -
> -typedef signed short s16;
> -typedef unsigned short u16;
> -
> -typedef signed int s32;
> -typedef unsigned int u32;
> -
> -typedef signed long long s64;
> -typedef unsigned long long u64;
> -
> -#include <asm/bitsperlong.h>
> -
> -#endif /* __KERNEL__ */
> +#include <asm-generic/int-ll64.h>
>  
>  #endif /* _ASM_TYPES_H */
> diff --git a/arch/powerpc/include/asm/types.h b/arch/powerpc/include/asm/types.h
> index 2d3ce0a28..f3d41905c 100644
> --- a/arch/powerpc/include/asm/types.h
> +++ b/arch/powerpc/include/asm/types.h
> @@ -1,45 +1,14 @@
>  #ifndef _PPC_TYPES_H
>  #define _PPC_TYPES_H
>  
> -#ifndef __ASSEMBLY__
> -
> -typedef __signed__ char __s8;
> -typedef unsigned char __u8;
> -
> -typedef __signed__ short __s16;
> -typedef unsigned short __u16;
> +#include <asm-generic/int-ll64.h>
>  
> -typedef __signed__ int __s32;
> -typedef unsigned int __u32;
> -
> -#if defined(__GNUC__) && !defined(__STRICT_ANSI__)
> -typedef __signed__ long long __s64;
> -typedef unsigned long long __u64;
> -#endif
> +#ifndef __ASSEMBLY__
>  
>  typedef struct {
>  	__u32 u[4];
>  } __attribute((aligned(16))) vector128;
>  
> -#ifdef __KERNEL__
> -/*
> - * These aren't exported outside the kernel to avoid name space clashes
> - */
> -typedef signed char s8;
> -typedef unsigned char u8;
> -
> -typedef signed short s16;
> -typedef unsigned short u16;
> -
> -typedef signed int s32;
> -typedef unsigned int u32;
> -
> -typedef signed long long s64;
> -typedef unsigned long long u64;
> -
> -#include <asm-generic/bitsperlong.h>
> -
> -#endif /* __KERNEL__ */
>  #endif /* __ASSEMBLY__ */
>  
>  #endif
> diff --git a/arch/riscv/include/asm/types.h b/arch/riscv/include/asm/types.h
> index 8200a0334..af37d7738 100644
> --- a/arch/riscv/include/asm/types.h
> +++ b/arch/riscv/include/asm/types.h
> @@ -1,6 +1,8 @@
>  #ifndef __ASM_RISCV_TYPES_H
>  #define __ASM_RISCV_TYPES_H
>  
> +#include <asm-generic/int-ll64.h>
> +
>  #ifdef __riscv64
>  /*
>   * This is used in dlmalloc. On RISCV64 we need it to be 64 bit
> @@ -15,44 +17,4 @@
>  
>  #endif
>  
> -/*
> - * __xx is ok: it doesn't pollute the POSIX namespace. Use these in the
> - * header files exported to user space
> - */
> -
> -typedef __signed__ char __s8;
> -typedef unsigned char __u8;
> -
> -typedef __signed__ short __s16;
> -typedef unsigned short __u16;
> -
> -typedef __signed__ int __s32;
> -typedef unsigned int __u32;
> -
> -#if defined(__GNUC__) && !defined(__STRICT_ANSI__)
> -typedef __signed__ long long __s64;
> -typedef unsigned long long __u64;
> -#endif
> -
> -/*
> - * These aren't exported outside the kernel to avoid name space clashes
> - */
> -#ifdef __KERNEL__
> -
> -typedef signed char s8;
> -typedef unsigned char u8;
> -
> -typedef signed short s16;
> -typedef unsigned short u16;
> -
> -typedef signed int s32;
> -typedef unsigned int u32;
> -
> -typedef signed long long s64;
> -typedef unsigned long long u64;
> -
> -#include <asm/bitsperlong.h>
> -
> -#endif /* __KERNEL__ */
> -
>  #endif /* __ASM_RISCV_TYPES_H */
> diff --git a/arch/sandbox/include/asm/types.h b/arch/sandbox/include/asm/types.h
> index 8426de4cc..3e4a8f7ba 100644
> --- a/arch/sandbox/include/asm/types.h
> +++ b/arch/sandbox/include/asm/types.h
> @@ -1,6 +1,8 @@
>  #ifndef __ASM_I386_TYPES_H
>  #define __ASM_I386_TYPES_H
>  
> +#include <asm-generic/int-ll64.h>
> +
>  #ifdef __x86_64__
>  /*
>   * This is used in dlmalloc. On X86_64 we need it to be
> @@ -16,44 +18,4 @@
>  
>  #endif
>  
> -/*
> - * __xx is ok: it doesn't pollute the POSIX namespace. Use these in the
> - * header files exported to user space
> - */
> -
> -typedef __signed__ char __s8;
> -typedef unsigned char __u8;
> -
> -typedef __signed__ short __s16;
> -typedef unsigned short __u16;
> -
> -typedef __signed__ int __s32;
> -typedef unsigned int __u32;
> -
> -#if defined(__GNUC__) && !defined(__STRICT_ANSI__)
> -typedef __signed__ long long __s64;
> -typedef unsigned long long __u64;
> -#endif
> -
> -/*
> - * These aren't exported outside the kernel to avoid name space clashes
> - */
> -#ifdef __KERNEL__
> -
> -typedef signed char s8;
> -typedef unsigned char u8;
> -
> -typedef signed short s16;
> -typedef unsigned short u16;
> -
> -typedef signed int s32;
> -typedef unsigned int u32;
> -
> -typedef signed long long s64;
> -typedef unsigned long long u64;
> -
> -#include <asm/bitsperlong.h>
> -
> -#endif /* __KERNEL__ */
> -
>  #endif
> diff --git a/arch/x86/include/asm/types.h b/arch/x86/include/asm/types.h
> index e57ae2c8c..17947b2ff 100644
> --- a/arch/x86/include/asm/types.h
> +++ b/arch/x86/include/asm/types.h
> @@ -1,6 +1,8 @@
>  #ifndef __ASM_I386_TYPES_H
>  #define __ASM_I386_TYPES_H
>  
> +#include <asm-generic/int-ll64.h>
> +
>  #ifndef __ASSEMBLY__
>  
>  #ifdef __x86_64__
> @@ -18,46 +20,6 @@
>  
>  #endif
>  
> -/*
> - * __xx is ok: it doesn't pollute the POSIX namespace. Use these in the
> - * header files exported to user space
> - */
> -
> -typedef __signed__ char __s8;
> -typedef unsigned char __u8;
> -
> -typedef __signed__ short __s16;
> -typedef unsigned short __u16;
> -
> -typedef __signed__ int __s32;
> -typedef unsigned int __u32;
> -
> -#if defined(__GNUC__) && !defined(__STRICT_ANSI__)
> -typedef __signed__ long long __s64;
> -typedef unsigned long long __u64;
> -#endif
> -
> -/*
> - * These aren't exported outside the kernel to avoid name space clashes
> - */
> -#ifdef __KERNEL__
> -
> -typedef signed char s8;
> -typedef unsigned char u8;
> -
> -typedef signed short s16;
> -typedef unsigned short u16;
> -
> -typedef signed int s32;
> -typedef unsigned int u32;
> -
> -typedef signed long long s64;
> -typedef unsigned long long u64;
> -
> -#include <asm/bitsperlong.h>
> -
> -#endif /* __KERNEL__ */
> -
>  #endif
>  
>  #endif
> -- 
> 2.25.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
