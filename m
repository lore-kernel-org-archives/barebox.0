Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QoYaL-0007r9-Jd
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 10:22:00 +0000
Date: Wed, 3 Aug 2011 12:21:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110803102152.GP31404@pengutronix.de>
References: <1312360122-26499-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1312360122-26499-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH very-draft] lib: add hexdump function from linux-3.0
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Aug 03, 2011 at 12:28:41PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  include/linux/barebox-wrapper.h |   18 +++
>  lib/Makefile                    |    1 +
>  lib/hexdump.c                   |  240 +++++++++++++++++++++++++++++++++++++++
>  lib/vsprintf.c                  |   24 ++++
>  4 files changed, 283 insertions(+), 0 deletions(-)
>  create mode 100644 lib/hexdump.c

We already have memory_display for this purpose. The Linux version
might be superior, but we don't want to have two hexdump versions
in the tree. If you have the need for the Linux version, please
explain why we need it and replace the old function.

Sascha

> 
> diff --git a/include/linux/barebox-wrapper.h b/include/linux/barebox-wrapper.h
> index 1d1f846..413a66b 100644
> --- a/include/linux/barebox-wrapper.h
> +++ b/include/linux/barebox-wrapper.h
> @@ -22,6 +22,24 @@
>  
>  #define pr_warn			pr_warning
>  
> +extern const char hex_asc[];
> +#define hex_asc_lo(x)   hex_asc[((x) & 0x0f)]
> +#define hex_asc_hi(x)   hex_asc[((x) & 0xf0) >> 4]
> +
> +enum {
> +	DUMP_PREFIX_NONE,
> +	DUMP_PREFIX_ADDRESS,
> +	DUMP_PREFIX_OFFSET
> +};
> +
> +extern void hex_dump_to_buffer(const void *buf, size_t len,
> +			       int rowsize, int groupsize,
> +			       char *linebuf, size_t linebuflen, bool ascii);
> +
> +extern void print_hex_dump(const char *level, const char *prefix_str, int prefix_type,
> +		    int rowsize, int groupsize,
> +		    const void *buf, size_t len, bool ascii);
> +
>  #define __init
>  
>  #define MODULE_AUTHOR(x)
> diff --git a/lib/Makefile b/lib/Makefile
> index d96cfe7..73af0d9 100644
> --- a/lib/Makefile
> +++ b/lib/Makefile
> @@ -3,6 +3,7 @@ obj-y			+= rbtree.o
>  obj-y			+= display_options.o
>  obj-y			+= string.o
>  obj-y			+= vsprintf.o
> +obj-y			+= hexdump.o
>  obj-y			+= div64.o
>  obj-y			+= misc.o
>  obj-y			+= parameter.o
> diff --git a/lib/hexdump.c b/lib/hexdump.c
> new file mode 100644
> index 0000000..908919b
> --- /dev/null
> +++ b/lib/hexdump.c
> @@ -0,0 +1,240 @@
> +/*
> + * lib/hexdump.c
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation. See README and COPYING for
> + * more details.
> + */
> +
> +#include <linux/types.h>
> +#include <linux/ctype.h>
> +#include <linux/kernel.h>
> +#include <module.h>
> +
> +const char hex_asc[] = "0123456789abcdef";
> +EXPORT_SYMBOL(hex_asc);
> +
> +/**
> + * hex_to_bin - convert a hex digit to its real value
> + * @ch: ascii character represents hex digit
> + *
> + * hex_to_bin() converts one hex digit to its actual value or -1 in case of bad
> + * input.
> + */
> +int hex_to_bin(char ch)
> +{
> +	if ((ch >= '0') && (ch <= '9'))
> +		return ch - '0';
> +	ch = tolower(ch);
> +	if ((ch >= 'a') && (ch <= 'f'))
> +		return ch - 'a' + 10;
> +	return -1;
> +}
> +EXPORT_SYMBOL(hex_to_bin);
> +
> +/**
> + * hex2bin - convert an ascii hexadecimal string to its binary representation
> + * @dst: binary result
> + * @src: ascii hexadecimal string
> + * @count: result length
> + */
> +void hex2bin(u8 *dst, const char *src, size_t count)
> +{
> +	while (count--) {
> +		*dst = hex_to_bin(*src++) << 4;
> +		*dst += hex_to_bin(*src++);
> +		dst++;
> +	}
> +}
> +EXPORT_SYMBOL(hex2bin);
> +
> +/**
> + * hex_dump_to_buffer - convert a blob of data to "hex ASCII" in memory
> + * @buf: data blob to dump
> + * @len: number of bytes in the @buf
> + * @rowsize: number of bytes to print per line; must be 16 or 32
> + * @groupsize: number of bytes to print at a time (1, 2, 4, 8; default = 1)
> + * @linebuf: where to put the converted data
> + * @linebuflen: total size of @linebuf, including space for terminating NUL
> + * @ascii: include ASCII after the hex output
> + *
> + * hex_dump_to_buffer() works on one "line" of output at a time, i.e.,
> + * 16 or 32 bytes of input data converted to hex + ASCII output.
> + *
> + * Given a buffer of u8 data, hex_dump_to_buffer() converts the input data
> + * to a hex + ASCII dump at the supplied memory location.
> + * The converted output is always NUL-terminated.
> + *
> + * E.g.:
> + *   hex_dump_to_buffer(frame->data, frame->len, 16, 1,
> + *			linebuf, sizeof(linebuf), true);
> + *
> + * example output buffer:
> + * 40 41 42 43 44 45 46 47 48 49 4a 4b 4c 4d 4e 4f  @ABCDEFGHIJKLMNO
> + */
> +void hex_dump_to_buffer(const void *buf, size_t len, int rowsize,
> +			int groupsize, char *linebuf, size_t linebuflen,
> +			bool ascii)
> +{
> +	const u8 *ptr = buf;
> +	u8 ch;
> +	int j, lx = 0;
> +	int ascii_column;
> +
> +	if (rowsize != 16 && rowsize != 32)
> +		rowsize = 16;
> +
> +	if (!len)
> +		goto nil;
> +	if (len > rowsize)		/* limit to one line at a time */
> +		len = rowsize;
> +	if ((len % groupsize) != 0)	/* no mixed size output */
> +		groupsize = 1;
> +
> +	switch (groupsize) {
> +	case 8: {
> +		const u64 *ptr8 = buf;
> +		int ngroups = len / groupsize;
> +
> +		for (j = 0; j < ngroups; j++)
> +			lx += scnprintf(linebuf + lx, linebuflen - lx,
> +					"%s%16.16llx", j ? " " : "",
> +					(unsigned long long)*(ptr8 + j));
> +		ascii_column = 17 * ngroups + 2;
> +		break;
> +	}
> +
> +	case 4: {
> +		const u32 *ptr4 = buf;
> +		int ngroups = len / groupsize;
> +
> +		for (j = 0; j < ngroups; j++)
> +			lx += scnprintf(linebuf + lx, linebuflen - lx,
> +					"%s%8.8x", j ? " " : "", *(ptr4 + j));
> +		ascii_column = 9 * ngroups + 2;
> +		break;
> +	}
> +
> +	case 2: {
> +		const u16 *ptr2 = buf;
> +		int ngroups = len / groupsize;
> +
> +		for (j = 0; j < ngroups; j++)
> +			lx += scnprintf(linebuf + lx, linebuflen - lx,
> +					"%s%4.4x", j ? " " : "", *(ptr2 + j));
> +		ascii_column = 5 * ngroups + 2;
> +		break;
> +	}
> +
> +	default:
> +		for (j = 0; (j < len) && (lx + 3) <= linebuflen; j++) {
> +			ch = ptr[j];
> +			linebuf[lx++] = hex_asc_hi(ch);
> +			linebuf[lx++] = hex_asc_lo(ch);
> +			linebuf[lx++] = ' ';
> +		}
> +		if (j)
> +			lx--;
> +
> +		ascii_column = 3 * rowsize + 2;
> +		break;
> +	}
> +	if (!ascii)
> +		goto nil;
> +
> +	while (lx < (linebuflen - 1) && lx < (ascii_column - 1))
> +		linebuf[lx++] = ' ';
> +	for (j = 0; (j < len) && (lx + 2) < linebuflen; j++) {
> +		ch = ptr[j];
> +		linebuf[lx++] = (isascii(ch) && isprint(ch)) ? ch : '.';
> +	}
> +nil:
> +	linebuf[lx++] = '\0';
> +}
> +EXPORT_SYMBOL(hex_dump_to_buffer);
> +
> +/**
> + * print_hex_dump - print a text hex dump to syslog for a binary blob of data
> + * @level: kernel log level (e.g. KERN_DEBUG)
> + * @prefix_str: string to prefix each line with;
> + *  caller supplies trailing spaces for alignment if desired
> + * @prefix_type: controls whether prefix of an offset, address, or none
> + *  is printed (%DUMP_PREFIX_OFFSET, %DUMP_PREFIX_ADDRESS, %DUMP_PREFIX_NONE)
> + * @rowsize: number of bytes to print per line; must be 16 or 32
> + * @groupsize: number of bytes to print at a time (1, 2, 4, 8; default = 1)
> + * @buf: data blob to dump
> + * @len: number of bytes in the @buf
> + * @ascii: include ASCII after the hex output
> + *
> + * Given a buffer of u8 data, print_hex_dump() prints a hex + ASCII dump
> + * to the kernel log at the specified kernel log level, with an optional
> + * leading prefix.
> + *
> + * print_hex_dump() works on one "line" of output at a time, i.e.,
> + * 16 or 32 bytes of input data converted to hex + ASCII output.
> + * print_hex_dump() iterates over the entire input @buf, breaking it into
> + * "line size" chunks to format and print.
> + *
> + * E.g.:
> + *   print_hex_dump(KERN_DEBUG, "raw data: ", DUMP_PREFIX_ADDRESS,
> + *		    16, 1, frame->data, frame->len, true);
> + *
> + * Example output using %DUMP_PREFIX_OFFSET and 1-byte mode:
> + * 0009ab42: 40 41 42 43 44 45 46 47 48 49 4a 4b 4c 4d 4e 4f  @ABCDEFGHIJKLMNO
> + * Example output using %DUMP_PREFIX_ADDRESS and 4-byte mode:
> + * ffffffff88089af0: 73727170 77767574 7b7a7978 7f7e7d7c  pqrstuvwxyz{|}~.
> + */
> +void print_hex_dump(const char *level, const char *prefix_str, int prefix_type,
> +		    int rowsize, int groupsize,
> +		    const void *buf, size_t len, bool ascii)
> +{
> +	const u8 *ptr = buf;
> +	int i, linelen, remaining = len;
> +	unsigned char linebuf[32 * 3 + 2 + 32 + 1];
> +
> +	if (rowsize != 16 && rowsize != 32)
> +		rowsize = 16;
> +
> +	for (i = 0; i < len; i += rowsize) {
> +		linelen = min(remaining, rowsize);
> +		remaining -= rowsize;
> +
> +		hex_dump_to_buffer(ptr + i, linelen, rowsize, groupsize,
> +				   linebuf, sizeof(linebuf), ascii);
> +
> +		switch (prefix_type) {
> +		case DUMP_PREFIX_ADDRESS:
> +			printk("%s%s%p: %s\n",
> +			       level, prefix_str, ptr + i, linebuf);
> +			break;
> +		case DUMP_PREFIX_OFFSET:
> +			printk("%s%s%.8x: %s\n", level, prefix_str, i, linebuf);
> +			break;
> +		default:
> +			printk("%s%s%s\n", level, prefix_str, linebuf);
> +			break;
> +		}
> +	}
> +}
> +EXPORT_SYMBOL(print_hex_dump);
> +
> +/**
> + * print_hex_dump_bytes - shorthand form of print_hex_dump() with default params
> + * @prefix_str: string to prefix each line with;
> + *  caller supplies trailing spaces for alignment if desired
> + * @prefix_type: controls whether prefix of an offset, address, or none
> + *  is printed (%DUMP_PREFIX_OFFSET, %DUMP_PREFIX_ADDRESS, %DUMP_PREFIX_NONE)
> + * @buf: data blob to dump
> + * @len: number of bytes in the @buf
> + *
> + * Calls print_hex_dump(), with log level of KERN_DEBUG,
> + * rowsize of 16, groupsize of 1, and ASCII output included.
> + */
> +void print_hex_dump_bytes(const char *prefix_str, int prefix_type,
> +			  const void *buf, size_t len)
> +{
> +	print_hex_dump(KERN_DEBUG, prefix_str, prefix_type, 16, 1,
> +		       buf, len, true);
> +}
> +EXPORT_SYMBOL(print_hex_dump_bytes);
> diff --git a/lib/vsprintf.c b/lib/vsprintf.c
> index ccccc5d..7af842b 100644
> --- a/lib/vsprintf.c
> +++ b/lib/vsprintf.c
> @@ -586,6 +586,30 @@ int snprintf(char * buf, size_t size, const char *fmt, ...)
>  }
>  EXPORT_SYMBOL(snprintf);
>  
> +/**
> + * scnprintf - Format a string and place it in a buffer
> + * @buf: The buffer to place the result into
> + * @size: The size of the buffer, including the trailing null space
> + * @fmt: The format string to use
> + * @...: Arguments for the format string
> + *
> + * The return value is the number of characters written into @buf not including
> + * the trailing '\0'. If @size is == 0 the function returns 0.
> + */
> +
> +int scnprintf(char *buf, size_t size, const char *fmt, ...)
> +{
> +	va_list args;
> +	int i;
> +
> +	va_start(args, fmt);
> +	i = vscnprintf(buf, size, fmt, args);
> +	va_end(args);
> +
> +	return i;
> +}
> +EXPORT_SYMBOL(scnprintf);
> +
>  /* Simplified asprintf. */
>  char *vasprintf(const char *fmt, va_list ap)
>  {
> -- 
> 1.7.5.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
