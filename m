Delivery-date: Mon, 13 Nov 2023 13:52:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2WQn-00A1p4-1n
	for lore@lore.pengutronix.de;
	Mon, 13 Nov 2023 13:52:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2WQm-0006fn-J3
	for lore@pengutronix.de; Mon, 13 Nov 2023 13:52:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TQCQKgij2nT6ddDWUt1guBQfkpm+8scMcqASbHryDV0=; b=hyzRlFGvHtyJ5Eyz51w6cIO3zC
	x+zD0bzJpp5PizY1dhmoMtTH/r+bXt3iTq3m4VUbdp7mYI1TaBGYyasZaVnfqRo+GX4s4vlwUCpHO
	voqMuZdkdSNiVtMQciwzc2TpQDgEGsNJlHjhj8ob/xU/uV1ZqgGbIOM3MWag9k0ESoArAdokORDDP
	bMLSzpPAURQTCEr2hCw7HE9A9lXuzRwJNVNmvHNN0bmo/UYsWwiJqfEvI6kMoNKxjCSTU5H4/DUbU
	2z00uBA0fUi/S3fFDZynxXq0AyPQf5HpAmqkbNQ70bPgaK6C/ORgoZ+mm99Punb8VI7Niu1p3tlZQ
	x+Rnyygw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2WPZ-00Dztp-22;
	Mon, 13 Nov 2023 12:51:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2WPU-00DztH-1y
	for barebox@lists.infradead.org;
	Mon, 13 Nov 2023 12:51:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r2WPT-0006VS-CX; Mon, 13 Nov 2023 13:51:23 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r2WPS-008jym-Mg; Mon, 13 Nov 2023 13:51:22 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r2WPS-001osQ-KM; Mon, 13 Nov 2023 13:51:22 +0100
Date: Mon, 13 Nov 2023 13:51:22 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Christian Melki <christian.melki@t2data.com>
Message-ID: <20231113125122.GR3359458@pengutronix.de>
References: <20231109122551.1486020-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231109122551.1486020-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231113_045124_964002_CF8E413A 
X-CRM114-Status: GOOD (  44.23  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 1/3] glob: drop needless ifdeffery in {glob,fnmatch}.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Nov 09, 2023 at 01:25:49PM +0100, Ahmad Fatoum wrote:
> The implementation of the glob and fnmatch functions is taken from glibc
> and it shows in the amount of #ifdefs. We don't need that in barebox and
> can even get the glob_t size down by dropping unused members, so let's
> do that.
> 
> Cc: Christian Melki <christian.melki@t2data.com>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - new patch
> ---
>  include/fnmatch.h |  58 ++-----------
>  include/glob.h    | 201 +++++-----------------------------------------
>  lib/Makefile      |   2 +-
>  lib/fnmatch.c     |  45 +----------
>  lib/glob.c        | 105 ++++--------------------
>  5 files changed, 45 insertions(+), 366 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/include/fnmatch.h b/include/fnmatch.h
> index c13beb9011fb..1bc2cf87391a 100644
> --- a/include/fnmatch.h
> +++ b/include/fnmatch.h
> @@ -4,69 +4,21 @@
>  */
>  
>  #ifndef	_FNMATCH_H
> -#define	_FNMATCH_H	1
> -
> -#ifdef	__cplusplus
> -extern "C" {
> -#endif
> -
> -#if defined __cplusplus || (defined __STDC__ && __STDC__) || defined WINDOWS32
> -# if !defined __GLIBC__ || !defined __P
> -#  undef	__P
> -#  define __P(protos)	protos
> -# endif
> -#else /* Not C++ or ANSI C.  */
> -# undef	__P
> -# define __P(protos)	()
> -/* We can get away without defining `const' here only because in this file
> -   it is used only inside the prototype for `fnmatch', which is elided in
> -   non-ANSI C where `const' is problematical.  */
> -#endif /* C++ or ANSI C.  */
> -
> -#ifndef const
> -# if (defined __STDC__ && __STDC__) || defined __cplusplus
> -#  define __const	const
> -# else
> -#  define __const
> -# endif
> -#endif
> -
> -/* We #undef these before defining them because some losing systems
> -   (HP-UX A.08.07 for example) define these in <unistd.h>.  */
> -#undef	FNM_PATHNAME
> -#undef	FNM_NOESCAPE
> -#undef	FNM_PERIOD
> +#define	_FNMATCH_H
>  
>  /* Bits set in the FLAGS argument to `fnmatch'.  */
>  #define	FNM_PATHNAME	(1 << 0) /* No wildcard can ever match `/'.  */
>  #define	FNM_NOESCAPE	(1 << 1) /* Backslashes don't quote special chars.  */
>  #define	FNM_PERIOD	(1 << 2) /* Leading `.' is matched only explicitly.  */
> -
> -#if !defined _POSIX_C_SOURCE || _POSIX_C_SOURCE < 2 || defined _GNU_SOURCE
> -# define FNM_FILE_NAME	 FNM_PATHNAME	/* Preferred GNU name.  */
> -# define FNM_LEADING_DIR (1 << 3)	/* Ignore `/...' after a match.  */
> -# define FNM_CASEFOLD	 (1 << 4)	/* Compare without regard to case.  */
> -# define FNM_EXTMATCH	 (1 << 5)	/* Use ksh-like extended matching. */
> -#endif
> +#define FNM_FILE_NAME	 FNM_PATHNAME	/* Preferred GNU name.  */
> +#define FNM_LEADING_DIR	(1 << 3)	/* Ignore `/...' after a match.  */
> +#define FNM_CASEFOLD	(1 << 4)	/* Compare without regard to case.  */
>  
>  /* Value returned by `fnmatch' if STRING does not match PATTERN.  */
>  #define	FNM_NOMATCH	1
>  
> -/* This value is returned if the implementation does not support
> -   `fnmatch'.  Since this is not the case here it will never be
> -   returned but the conformance test suites still require the symbol
> -   to be defined.  */
> -#ifdef _XOPEN_SOURCE
> -# define FNM_NOSYS	(-1)
> -#endif
> -
>  /* Match NAME against the filename pattern PATTERN,
>     returning zero if it matches, FNM_NOMATCH if not.  */
> -extern int fnmatch __P ((__const char *__pattern, __const char *__name,
> -			 int __flags));
> -
> -#ifdef	__cplusplus
> -}
> -#endif
> +extern int fnmatch(const char *pattern, const char *name, int flags);
>  
>  #endif /* fnmatch.h */
> diff --git a/include/glob.h b/include/glob.h
> index ec0ac66f8765..67816c9cf0ad 100644
> --- a/include/glob.h
> +++ b/include/glob.h
> @@ -4,54 +4,9 @@
>  */
>  
>  #ifndef	_GLOB_H
> -#define	_GLOB_H	1
> +#define	_GLOB_H
>  
> -#define _FILE_OFFSET_BITS 32
> -
> -#ifdef	__cplusplus
> -extern "C" {
> -#endif
> -
> -#undef	__ptr_t
> -#if defined __cplusplus || (defined __STDC__ && __STDC__) || defined WINDOWS32
> -# if !defined __GLIBC__ || !defined __P
> -#  undef __P
> -#  undef __PMT
> -#  define __P(protos)	protos
> -#  define __PMT(protos)	protos
> -#  if !defined __GNUC__ || __GNUC__ < 2
> -#   undef __const
> -#   define __const const
> -#  endif
> -# endif
> -# define __ptr_t	void *
> -#else /* Not C++ or ANSI C.  */
> -# undef	__P
> -# undef __PMT
> -# define __P(protos)	()
> -# define __PMT(protos)	()
> -# undef	__const
> -# define __const
> -# define __ptr_t	char *
> -#endif /* C++ or ANSI C.  */
> -
> -/* We need `size_t' for the following definitions.  */
> -#ifndef __size_t
> -# if defined __GNUC__ && __GNUC__ >= 2
> -typedef __SIZE_TYPE__ __size_t;
> -#  ifdef _XOPEN_SOURCE
> -typedef __SIZE_TYPE__ size_t;
> -#  endif
> -# else
> -/* This is a guess.  */
> -typedef unsigned long int __size_t;
> -# endif
> -#else
> -/* The GNU CC stddef.h version defines __size_t as empty.  We need a real
> -   definition.  */
> -# undef __size_t
> -# define __size_t size_t
> -#endif
> +#include <linux/types.h>
>  
>  /* Bits set in the FLAGS argument to `glob'.  */
>  #define	GLOB_ERR	(1 << 0)/* Return on read errors.  */
> @@ -62,163 +17,49 @@ typedef unsigned long int __size_t;
>  #define	GLOB_APPEND	(1 << 5)/* Append to results of a previous call.  */
>  #define	GLOB_NOESCAPE	(1 << 6)/* Backslashes don't quote metacharacters.  */
>  #define	GLOB_PERIOD	(1 << 7)/* Leading `.' can be matched by metachars.  */
> -
> -#if (!defined _POSIX_C_SOURCE || _POSIX_C_SOURCE < 2 || defined _BSD_SOURCE \
> -     || defined _GNU_SOURCE)
> -# define GLOB_MAGCHAR	 (1 << 8)/* Set in gl_flags if any metachars seen.  */
> -# define GLOB_ALTDIRFUNC (1 << 9)/* Use gl_opendir et al functions.  */
> -# define GLOB_BRACE	 (1 << 10)/* Expand "{a,b}" to "a" "b".  */
> -# define GLOB_NOMAGIC	 (1 << 11)/* If no magic chars, return the pattern.  */
> -# define GLOB_TILDE	 (1 << 12)/* Expand ~user and ~ to home directories. */
> -# define GLOB_ONLYDIR	 (1 << 13)/* Match only directories.  */
> -# define GLOB_TILDE_CHECK (1 << 14)/* Like GLOB_TILDE but return an error
> -				      if the user name is not available.  */
> -# define __GLOB_FLAGS	(GLOB_ERR|GLOB_MARK|GLOB_NOSORT|GLOB_DOOFFS| \
> -			 GLOB_NOESCAPE|GLOB_NOCHECK|GLOB_APPEND|     \
> -			 GLOB_PERIOD|GLOB_ALTDIRFUNC|GLOB_BRACE|     \
> -			 GLOB_NOMAGIC|GLOB_TILDE|GLOB_ONLYDIR|GLOB_TILDE_CHECK)
> -#else
> +#define	GLOB_MAGCHAR	 (1 << 8)/* Set in gl_flags if any metachars seen.  */
>  # define __GLOB_FLAGS	(GLOB_ERR|GLOB_MARK|GLOB_NOSORT|GLOB_DOOFFS| \
>  			 GLOB_NOESCAPE|GLOB_NOCHECK|GLOB_APPEND|     \
>  			 GLOB_PERIOD)
> -#endif
>  
>  /* Error returns from `glob'.  */
>  #define	GLOB_NOSPACE	1	/* Ran out of memory.  */
>  #define	GLOB_ABORTED	2	/* Read error.  */
>  #define	GLOB_NOMATCH	3	/* No matches found.  */
>  #define GLOB_NOSYS	4	/* Not implemented.  */
> -#ifdef _GNU_SOURCE
> -/* Previous versions of this file defined GLOB_ABEND instead of
> -   GLOB_ABORTED.  Provide a compatibility definition here.  */
> -# define GLOB_ABEND GLOB_ABORTED
> -#endif
> +#define GLOB_ABEND	GLOB_ABORTED
>  
> -/* Structure describing a globbing run.  */
> -#if !defined _AMIGA && !defined VMS /* Buggy compiler.   */
> -# ifdef _GNU_SOURCE
> -struct stat;
> -# endif
> -#endif
> -typedef struct
> -  {
> -    __size_t gl_pathc;		/* Count of paths matched by the pattern.  */
> -    char **gl_pathv;		/* List of matched pathnames.  */
> -    __size_t gl_offs;		/* Slots to reserve in `gl_pathv'.  */
> -    int gl_flags;		/* Set to FLAGS, maybe | GLOB_MAGCHAR.  */
> +typedef struct {
> +	size_t gl_pathc;		/* Count of paths matched by the pattern.  */
> +	char **gl_pathv;		/* List of matched pathnames.  */
> +	size_t gl_offs;		/* Slots to reserve in `gl_pathv'.  */
> +	int gl_flags;		/* Set to FLAGS, maybe | GLOB_MAGCHAR.  */
> +} glob_t;
>  
> -    /* If the GLOB_ALTDIRFUNC flag is set, the following functions
> -       are used instead of the normal file access functions.  */
> -    void (*gl_closedir) __PMT ((void *));
> -#ifdef _GNU_SOURCE
> -    struct dirent *(*gl_readdir) __PMT ((void *));
> +#ifdef CONFIG_GLOB
> +extern int glob (const char *__restrict pattern, int flags,
> +		      int (*errfunc) (const char *, int),
> +		      glob_t *__restrict pglob);
> +
> +extern void globfree(glob_t *pglob);
>  #else
> -    void *(*gl_readdir) __PMT ((void *));
> -#endif
> -    __ptr_t (*gl_opendir) __PMT ((__const char *));
> -#ifdef _GNU_SOURCE
> -    int (*gl_lstat) __PMT ((__const char *__restrict,
> -			    struct stat *__restrict));
> -    int (*gl_stat) __PMT ((__const char *__restrict, struct stat *__restrict));
> -#else
> -    int (*gl_lstat) __PMT ((__const char *__restrict, void *__restrict));
> -    int (*gl_stat) __PMT ((__const char *__restrict, void *__restrict));
> -#endif
> -  } glob_t;
> -
> -#ifdef _LARGEFILE64_SOURCE
> -# ifdef _GNU_SOURCE
> -struct stat64;
> -# endif
> -typedef struct
> -  {
> -    __size_t gl_pathc;
> -    char **gl_pathv;
> -    __size_t gl_offs;
> -    int gl_flags;
> -
> -    /* If the GLOB_ALTDIRFUNC flag is set, the following functions
> -       are used instead of the normal file access functions.  */
> -    void (*gl_closedir) __PMT ((void *));
> -# ifdef _GNU_SOURCE
> -    struct dirent64 *(*gl_readdir) __PMT ((void *));
> -# else
> -    void *(*gl_readdir) __PMT ((void *));
> -# endif
> -    __ptr_t (*gl_opendir) __PMT ((__const char *));
> -# ifdef _GNU_SOURCE
> -    int (*gl_lstat) __PMT ((__const char *__restrict,
> -			    struct stat64 *__restrict));
> -    int (*gl_stat) __PMT ((__const char *__restrict,
> -			   struct stat64 *__restrict));
> -# else
> -    int (*gl_lstat) __PMT ((__const char *__restrict, void *__restrict));
> -    int (*gl_stat) __PMT ((__const char *__restrict, void *__restrict));
> -# endif
> -  } glob64_t;
> -#endif
> -
> -#if _FILE_OFFSET_BITS == 64 && __GNUC__ < 2
> -# define glob glob64
> -# define globfree globfree64
> -#endif
> -
> -/* Do glob searching for PATTERN, placing results in PGLOB.
> -   The bits defined above may be set in FLAGS.
> -   If a directory cannot be opened or read and ERRFUNC is not nil,
> -   it is called with the pathname that caused the error, and the
> -   `errno' value from the failing call; if it returns non-zero
> -   `glob' returns GLOB_ABEND; if it returns zero, the error is ignored.
> -   If memory cannot be allocated for PGLOB, GLOB_NOSPACE is returned.
> -   Otherwise, `glob' returns zero.  */
> -#if _FILE_OFFSET_BITS != 64 || __GNUC__ < 2
> -#if defined CONFIG_GLOB || defined CONFIG_FAKE_GLOB
> -extern int glob __P ((__const char *__restrict __pattern, int __flags,
> -		      int (*__errfunc) (__const char *, int),
> -		      glob_t *__restrict __pglob));
> -
> -extern void globfree __P ((glob_t *__pglob));
> -#else
> -static inline int glob __P ((__const char *__restrict __pattern, int __flags,
> -		      int (*__errfunc) (__const char *, int),
> -		      glob_t *__restrict __pglob))
> +static inline int glob(const char *__restrict pattern, int flags,
> +		      int (*errfunc) (const char *, int),
> +		      glob_t *__restrict pglob)
>  {
>  	return GLOB_ABORTED;
>  }
>  
> -static inline void globfree __P ((glob_t *__pglob))
> +static inline void globfree(glob_t *pglob)
>  {
>  }
>  #endif
> -/* Free storage allocated in PGLOB by a previous `glob' call.  */
> -#else
> -extern int glob __P ((__const char *__restrict __pattern, int __flags,
> -		      int (*__errfunc) (__const char *, int),
> -		      glob_t *__restrict __pglob)) __asm__ ("glob64");
>  
> -extern void globfree __P ((glob_t *__pglob)) __asm__ ("globfree64");
> -#endif
> -
> -#ifdef _LARGEFILE64_SOURCE
> -extern int glob64 __P ((__const char *__restrict __pattern, int __flags,
> -			int (*__errfunc) (__const char *, int),
> -			glob64_t *__restrict __pglob));
> -
> -extern void globfree64 __P ((glob64_t *__pglob));
> -#endif
> -
> -
> -#ifdef _GNU_SOURCE
>  /* Return nonzero if PATTERN contains any metacharacters.
>     Metacharacters can be quoted with backslashes if QUOTE is nonzero.
>  
>     This function is not part of the interface specified by POSIX.2
>     but several programs want to use it.  */
> -extern int glob_pattern_p __P ((__const char *__pattern, int __quote));
> -#endif
> -
> -#ifdef	__cplusplus
> -}
> -#endif
> +extern int glob_pattern_p(const char *pattern, int quote);
>  
>  #endif /* glob.h  */
> diff --git a/lib/Makefile b/lib/Makefile
> index 8817b5f47bac..9bb871f94f71 100644
> --- a/lib/Makefile
> +++ b/lib/Makefile
> @@ -38,7 +38,7 @@ obj-$(CONFIG_CMDLINE_EDITING)	+= readline.o
>  obj-$(CONFIG_SIMPLE_READLINE)	+= readline_simple.o
>  obj-$(CONFIG_FNMATCH)		+= fnmatch.o
>  obj-$(CONFIG_GENERIC_FIND_NEXT_BIT) += find_next_bit.o
> -obj-y			+= glob.o
> +obj-$(CONFIG_GLOB)	+= glob.o
>  obj-y			+= notifier.o
>  obj-y			+= random.o
>  obj-$(CONFIG_IMAGE_SPARSE) += image-sparse.o
> diff --git a/lib/fnmatch.c b/lib/fnmatch.c
> index 0ab530d3b182..ac87ba76219c 100644
> --- a/lib/fnmatch.c
> +++ b/lib/fnmatch.c
> @@ -1,50 +1,11 @@
> -/* Copyright (C) 1991, 1992, 1993, 1996 Free Software Foundation, Inc.
> -
> -This library is free software; you can redistribute it and/or
> -modify it under the terms of the GNU Library General Public License as
> -published by the Free Software Foundation; either version 2 of the
> -License, or (at your option) any later version.
> -
> -This library is distributed in the hope that it will be useful,
> -but WITHOUT ANY WARRANTY; without even the implied warranty of
> -MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> -Library General Public License for more details.
> -
> -You should have received a copy of the GNU Library General Public
> -License along with this library; see the file COPYING.LIB.  If
> -not, write to the Free Software Foundation, Inc., 675 Mass Ave,
> -Cambridge, MA 02139, USA.  */
> -
> -/* Enable GNU extensions in fnmatch.h.  */
> -#ifndef _GNU_SOURCE
> -# define _GNU_SOURCE	1
> -#endif
> +// SPDX-License-Identifier: LGPL-2.1-or-later
> +// SPDX-FileCopyrightText: (C) 1991, 1992, 1993, 1996 Free Software Foundation, Inc.
>  
>  #include <errno.h>
>  #include <fnmatch.h>
>  #include <linux/ctype.h>
>  
> -
> -/* Comment out all this code if we are using the GNU C Library, and are not
> -   actually compiling the library itself.  This code is part of the GNU C
> -   Library, but also included in many other GNU distributions.  Compiling
> -   and linking in this code is a waste when using the GNU C library
> -   (especially if it is a shared library).  Rather than having every GNU
> -   program understand `configure --with-gnu-libc' and omit the object files,
> -   it is simpler to just do this in the source for each such file.  */
> -
> -# if defined (STDC_HEADERS) || !defined (isascii)
> -#  define ISASCII(c) 1
> -# else
> -#  define ISASCII(c) isascii(c)
> -# endif
> -
> -# define ISUPPER(c) (ISASCII (c) && isupper (c))
> -
> -
> -# ifndef errno
> -extern int errno;
> -# endif
> +# define ISUPPER(c) (isascii(c) && isupper(c))
>  
>  /* Match STRING against the filename pattern PATTERN, returning zero if
>     it matches, nonzero if not.  */
> diff --git a/lib/glob.c b/lib/glob.c
> index 8523bad9a7ef..389580b0ed79 100644
> --- a/lib/glob.c
> +++ b/lib/glob.c
> @@ -1,19 +1,5 @@
> -/* Copyright (C) 1991, 1992, 1993, 1994, 1995 Free Software Foundation, Inc.
> -
> -This library is free software; you can redistribute it and/or
> -modify it under the terms of the GNU Library General Public License as
> -published by the Free Software Foundation; either version 2 of the
> -License, or (at your option) any later version.
> -
> -This library is distributed in the hope that it will be useful,
> -but WITHOUT ANY WARRANTY; without even the implied warranty of
> -MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> -Library General Public License for more details.
> -
> -You should have received a copy of the GNU Library General Public
> -License along with this library; see the file COPYING.LIB.  If
> -not, write to the Free Software Foundation, Inc., 675 Mass Ave,
> -Cambridge, MA 02139, USA.  */
> +// SPDX-License-Identifier: LGPL-2.1-or-later
> +// SPDX-FileCopyrightText: (C) 1991, 1992, 1993, 1994, 1995 Free Software Foundation, Inc.
>  
>  #include <common.h>
>  #include <errno.h>
> @@ -23,25 +9,15 @@ Cambridge, MA 02139, USA.  */
>  #include <xfuncs.h>
>  #include <fnmatch.h>
>  #include <qsort.h>
> -#define _GNU_SOURCE
>  #include <glob.h>
>  
> -#ifdef CONFIG_GLOB
> -
> -extern __ptr_t(*__glob_opendir_hook) __P((const char *directory));
> -extern void (*__glob_closedir_hook) __P((__ptr_t stream));
> -extern const char *(*__glob_readdir_hook) __P((__ptr_t stream));
> -
> -static int glob_in_dir __P((const char *pattern, const char *directory,
> +static int glob_in_dir (const char *pattern, const char *directory,
>  			    int flags,
> -			    int (*errfunc) __P((const char *, int)),
> -			    glob_t * pglob));
> -static int prefix_array __P((const char *prefix, char **array, size_t n,
> -			     int add_slash));
> +			    int (*errfunc) (const char *, int),
> +			    glob_t * pglob);
> +static int prefix_array (const char *prefix, char **array, size_t n,
> +			     int add_slash);
>  
> -#ifdef __GLOB64
> -extern int glob_pattern_p(const char *pattern, int quote);
> -#else
>  /* Return nonzero if PATTERN contains any metacharacters.
>     Metacharacters can be quoted with backslashes if QUOTE is nonzero.  */
>  int glob_pattern_p(const char *pattern, int quote)
> @@ -72,7 +48,6 @@ int glob_pattern_p(const char *pattern, int quote)
>  
>  	return 0;
>  }
> -#endif
>  
>  #ifdef CONFIG_GLOB_SORT
>  /* Do a collated comparison of A and B.  */
> @@ -100,7 +75,7 @@ static int collated_compare(const void *a, const void *b)
>     If memory cannot be allocated for PGLOB, GLOB_NOSPACE is returned.
>     Otherwise, `glob' returns zero.  */
>  int glob(const char *pattern, int flags,
> -		int (*errfunc) __P((const char *, int)), glob_t *pglob)
> +		int (*errfunc) (const char *, int), glob_t *pglob)
>  {
>  	const char *filename;
>  	char *dirname = NULL;
> @@ -169,19 +144,6 @@ int glob(const char *pattern, int flags,
>  		for (i = 0; i < dirs.gl_pathc; ++i) {
>  			int oldcount1;
>  
> -#ifdef	SHELL
> -			{
> -				/* Make globbing interruptible in the bash shell. */
> -				extern int interrupt_state;
> -
> -				if (interrupt_state) {
> -					globfree(&dirs);
> -					globfree(&files);
> -					status = GLOB_ABEND goto out;
> -				}
> -			}
> -#endif				/* SHELL.  */
> -
>  			oldcount1 = pglob->gl_pathc;
>  			status = glob_in_dir(filename, dirs.gl_pathv[i],
>  					     (flags | GLOB_APPEND) &
> @@ -263,7 +225,7 @@ int glob(const char *pattern, int flags,
>  #ifdef CONFIG_GLOB_SORT
>  	if (!(flags & GLOB_NOSORT))
>  		/* Sort the vector.  */
> -		qsort((__ptr_t) & pglob->gl_pathv[oldcount],
> +		qsort(&pglob->gl_pathv[oldcount],
>  		      pglob->gl_pathc - oldcount,
>  		      sizeof(char *), collated_compare);
>  #endif
> @@ -299,7 +261,7 @@ static int prefix_array(const char *dirname, char **array, size_t n,
>  		memcpy(new, dirname, dirlen);
>  		new[dirlen] = '/';
>  		memcpy(&new[dirlen + 1], array[i], eltlen);
> -		free((__ptr_t) array[i]);
> +		free(array[i]);
>  		array[i] = new;
>  	}
>  
> @@ -311,9 +273,9 @@ static int prefix_array(const char *dirname, char **array, size_t n,
>     The GLOB_NOSORT bit in FLAGS is ignored.  No sorting is ever done.
>     The GLOB_APPEND flag is assumed to be set (always appends).  */
>  static int glob_in_dir(const char *pattern, const char *directory,
> -		int flags, int (*errfunc) __P((const char *, int)), glob_t *pglob)
> +		int flags, int (*errfunc) (const char *, int), glob_t *pglob)
>  {
> -	__ptr_t stream = NULL;
> +	void *stream = NULL;
>  
>  	struct globlink {
>  		struct globlink *next;
> @@ -356,7 +318,7 @@ static int glob_in_dir(const char *pattern, const char *directory,
>  			    (struct globlink *)xmalloc(sizeof(struct globlink));
>  			len = strlen(name);
>  			new->name = xmalloc(len + ((flags & GLOB_MARK) ? 1 : 0) + 1);
> -			memcpy((__ptr_t) new->name, name, len);
> +			memcpy(new->name, name, len);
>  			new->name[len] = '\0';
>  			new->next = names;
>  			names = new;
> @@ -414,44 +376,7 @@ void globfree(glob_t *pglob)
>  		int i = pglob->gl_flags & GLOB_DOOFFS ? pglob->gl_offs : 0;
>  		for (; i < pglob->gl_pathc; ++i)
>  			if (pglob->gl_pathv[i] != NULL)
> -				free((__ptr_t) pglob->gl_pathv[i]);
> -		free((__ptr_t) pglob->gl_pathv);
> +				free(pglob->gl_pathv[i]);
> +		free(pglob->gl_pathv);
>  	}
>  }
> -#endif /* CONFIG_GLOB */
> -
> -#ifdef CONFIG_FAKE_GLOB
> -/* Fake version of glob. We simply put the input string into
> - * the gl_pathv array. Currently we don't need it as hush.c won't
> - * call us if no glob support is available.
> - */
> -int glob(pattern, flags, errfunc, pglob)
> -const char *pattern;
> -int flags;
> -int (*errfunc) __P((const char *, int));
> -glob_t *pglob;
> -{
> -	int elems, i;
> -
> -	if (!(flags & GLOB_APPEND)) {
> -		pglob->gl_pathc = 0;
> -		pglob->gl_pathv = NULL;
> -	}
> -
> -	elems = pglob->gl_pathc + 2;
> -	if (flags & GLOB_DOOFFS)
> -		elems += pglob->gl_offs;
> -
> -	pglob->gl_pathv = xrealloc(pglob->gl_pathv, elems * sizeof(char *));
> -
> -	if (flags & GLOB_DOOFFS)
> -		for (i = 0; i < pglob->gl_offs; i++)
> -			pglob->gl_pathv[i] = NULL;
> -
> -	pglob->gl_pathv[pglob->gl_pathc] = strdup(pattern);
> -	pglob->gl_pathc++;
> -	pglob->gl_pathv[pglob->gl_pathc] = NULL;
> -
> -	return 0;
> -}
> -#endif /* CONFIG_FAKE_GLOB */
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


