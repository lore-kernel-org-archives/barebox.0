Delivery-date: Tue, 06 Feb 2024 12:17:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rXJRz-005bT1-26
	for lore@lore.pengutronix.de;
	Tue, 06 Feb 2024 12:17:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rXJRz-0001u2-Eg
	for lore@pengutronix.de; Tue, 06 Feb 2024 12:17:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UhL+FwpMVt9njk2NCaZs4wa22L4R2HeP+oHBm4XPno4=; b=M1ube0wUDbYTDwqntIOT1N4/I8
	Nle/QlLkOQhq2l2xyeL2xaYAJ7CbtyJwQIZtPMNJyZYK4b1OVUX5+/iaRYx8BOcNNn1DMvVb53GQi
	XYG1zMvy8NuXXnKc0j1t6hiNr6q+h5/VhrS7ydkqFqauSmr5tOG7I1sM+foyHr4IrbG+0agL+f2iR
	PwDFXpoZBEnnS2y7Mu59Ucdadi25pcBfmGBIJc+Q+6NFI/JUAV+aQuk8Izn3iOPPnTGABb9dUHzJC
	S1z4/fivJpaInW4zKilKMmBZNcl2Td/5xEMGgL5ajLZIedVaKMGhiE9Xxsjuze3OVjzdMrt/o4MP2
	W5EpZiMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXJRM-00000007GhW-0yIA;
	Tue, 06 Feb 2024 11:16:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXJRI-00000007Ge3-0jI4
	for barebox@lists.infradead.org;
	Tue, 06 Feb 2024 11:16:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rXJRE-0001oO-UY; Tue, 06 Feb 2024 12:16:28 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rXJRE-004oVP-Hp; Tue, 06 Feb 2024 12:16:28 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1rXJRE-00EDIo-1W;
	Tue, 06 Feb 2024 12:16:28 +0100
Date: Tue, 6 Feb 2024 12:16:28 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20240206111628.qirhpzrj7fwrokml@pengutronix.de>
References: <20240206094838.1987246-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240206094838.1987246-1-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240206_031632_562694_74629C53 
X-CRM114-Status: GOOD (  24.81  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] decompress: change length arguments to long
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-02-06, Sascha Hauer wrote:
> In order to support decompression of files > 2GiB Linux has changed
> the prototypes of decompression functions from
> 
> int uncompress(unsigned char *inbuf, int len,
> 	       int(*fill)(void*, unsigned int),
> 	       int(*flush)(void*, unsigned int),
> 	       unsigned char *output,
> 	       int *pos,
> 	       void(*error_fn)(char *x));
> 
> to
> 
> int uncompress(unsigned char *inbuf, long len,
> 	       long(*fill)(void*, unsigned long),
> 	       long(*flush)(void*, unsigned long),
> 	       unsigned char *output,
> 	       long *pos,
> 	       void(*error_fn)(char *x));
> 
> Do likewise in barebox for easier code sharing with Linux.

Thanks a lot.

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  commands/uimage.c                |  2 +-
>  common/uimage.c                  | 24 ++++++++++++------------
>  include/bunzip2.h                |  8 ++++----
>  include/gunzip.h                 |  8 ++++----
>  include/image.h                  |  2 +-
>  include/linux/decompress/unlz4.h |  8 ++++----
>  include/linux/xz.h               |  8 ++++----
>  include/lzo.h                    |  8 ++++----
>  include/uncompress.h             |  8 ++++----
>  lib/decompress_bunzip2.c         | 16 ++++++++--------
>  lib/decompress_inflate.c         | 10 +++++-----
>  lib/decompress_unlz4.c           | 16 ++++++++--------
>  lib/decompress_unlzo.c           |  8 ++++----
>  lib/decompress_unxz.c            |  8 ++++----
>  lib/uncompress.c                 | 28 ++++++++++++++--------------

I do miss the zstd here.

Regards,
  Marco

>  15 files changed, 81 insertions(+), 81 deletions(-)
> 
> diff --git a/commands/uimage.c b/commands/uimage.c
> index 588519e3f3..72b827b5b2 100644
> --- a/commands/uimage.c
> +++ b/commands/uimage.c
> @@ -13,7 +13,7 @@
>  
>  static int uimage_fd;
>  
> -static int uimage_flush(void *buf, unsigned int len)
> +static long uimage_flush(void *buf, unsigned long len)
>  {
>  	return write_full(uimage_fd, buf, len);
>  }
> diff --git a/common/uimage.c b/common/uimage.c
> index 3c9a79d910..cc9e5e510a 100644
> --- a/common/uimage.c
> +++ b/common/uimage.c
> @@ -218,23 +218,23 @@ EXPORT_SYMBOL(uimage_close);
>  
>  static int uimage_fd;
>  
> -static int uimage_fill(void *buf, unsigned int len)
> +static long uimage_fill(void *buf, unsigned long len)
>  {
>  	return read_full(uimage_fd, buf, len);
>  }
>  
> -static int uncompress_copy(unsigned char *inbuf_unused, int len,
> -		int(*fill)(void*, unsigned int),
> -		int(*flush)(void*, unsigned int),
> +static int uncompress_copy(unsigned char *inbuf_unused, long len,
> +		long(*fill)(void*, unsigned long),
> +		long(*flush)(void*, unsigned long),
>  		unsigned char *outbuf_unused,
> -		int *pos,
> +		long *pos,
>  		void(*error_fn)(char *x))
>  {
>  	int ret;
>  	void *buf = xmalloc(PAGE_SIZE);
>  
>  	while (len) {
> -		int now = min(len, PAGE_SIZE);
> +		int now = min_t(long, len, PAGE_SIZE);
>  		ret = fill(buf, now);
>  		if (ret < 0)
>  			goto err;
> @@ -295,17 +295,17 @@ EXPORT_SYMBOL(uimage_verify);
>   * Load a uimage, flushing output to flush function
>   */
>  int uimage_load(struct uimage_handle *handle, unsigned int image_no,
> -		int(*flush)(void*, unsigned int))
> +		long(*flush)(void*, unsigned long))
>  {
>  	image_header_t *hdr = &handle->header;
>  	struct uimage_handle_data *iha;
>  	int ret;
>  	loff_t off;
> -	int (*uncompress_fn)(unsigned char *inbuf, int len,
> -		    int(*fill)(void*, unsigned int),
> -	            int(*flush)(void*, unsigned int),
> +	int (*uncompress_fn)(unsigned char *inbuf, long len,
> +		    long(*fill)(void*, unsigned long),
> +	            long(*flush)(void*, unsigned long),
>  		    unsigned char *output,
> -	            int *pos,
> +	            long *pos,
>  		    void(*error)(char *x));
>  
>  	if (image_no >= handle->nb_data_entries)
> @@ -336,7 +336,7 @@ static void *uimage_buf;
>  static size_t uimage_size;
>  static struct resource *uimage_resource;
>  
> -static int uimage_sdram_flush(void *buf, unsigned int len)
> +static long uimage_sdram_flush(void *buf, unsigned long len)
>  {
>  	if (uimage_size + len > resource_size(uimage_resource)) {
>  		resource_size_t start = uimage_resource->start;
> diff --git a/include/bunzip2.h b/include/bunzip2.h
> index 55404ff846..d9edaf3a01 100644
> --- a/include/bunzip2.h
> +++ b/include/bunzip2.h
> @@ -2,10 +2,10 @@
>  #ifndef DECOMPRESS_BUNZIP2_H
>  #define DECOMPRESS_BUNZIP2_H
>  
> -int bunzip2(unsigned char *inbuf, int len,
> -	    int(*fill)(void*, unsigned int),
> -	    int(*flush)(void*, unsigned int),
> +int bunzip2(unsigned char *inbuf, long len,
> +	    long(*fill)(void*, unsigned long),
> +	    long(*flush)(void*, unsigned long),
>  	    unsigned char *output,
> -	    int *pos,
> +	    long *pos,
>  	    void(*error)(char *x));
>  #endif
> diff --git a/include/gunzip.h b/include/gunzip.h
> index 0a959d5eb7..d3ec31166a 100644
> --- a/include/gunzip.h
> +++ b/include/gunzip.h
> @@ -2,10 +2,10 @@
>  #ifndef GUNZIP_H
>  #define GUNZIP_H
>  
> -int gunzip(unsigned char *inbuf, int len,
> -	   int(*fill)(void*, unsigned int),
> -	   int(*flush)(void*, unsigned int),
> +int gunzip(unsigned char *inbuf, long len,
> +	   long(*fill)(void*, unsigned long),
> +	   long(*flush)(void*, unsigned long),
>  	   unsigned char *output,
> -	   int *pos,
> +	   long *pos,
>  	   void(*error_fn)(char *x));
>  #endif
> diff --git a/include/image.h b/include/image.h
> index b593ae30ef..b4c69d9a02 100644
> --- a/include/image.h
> +++ b/include/image.h
> @@ -300,7 +300,7 @@ struct uimage_handle *uimage_open(const char *filename);
>  void uimage_close(struct uimage_handle *handle);
>  int uimage_verify(struct uimage_handle *handle);
>  int uimage_load(struct uimage_handle *handle, unsigned int image_no,
> -		int(*flush)(void*, unsigned int));
> +		long(*flush)(void*, unsigned long));
>  void uimage_print_contents(struct uimage_handle *handle);
>  ssize_t uimage_get_size(struct uimage_handle *handle, unsigned int image_no);
>  struct resource *uimage_load_to_sdram(struct uimage_handle *handle,
> diff --git a/include/linux/decompress/unlz4.h b/include/linux/decompress/unlz4.h
> index 0ad189d2d9..fb6d499d1b 100644
> --- a/include/linux/decompress/unlz4.h
> +++ b/include/linux/decompress/unlz4.h
> @@ -3,10 +3,10 @@
>  #ifndef DECOMPRESS_UNLZ4_H
>  #define DECOMPRESS_UNLZ4_H
>  
> -int decompress_unlz4(unsigned char *inbuf, int len,
> -	int(*fill)(void*, unsigned int),
> -	int(*flush)(void*, unsigned int),
> +int decompress_unlz4(unsigned char *inbuf, long len,
> +	long(*fill)(void*, unsigned long),
> +	long(*flush)(void*, unsigned long),
>  	unsigned char *output,
> -	int *pos,
> +	long *pos,
>  	void(*error)(char *x));
>  #endif
> diff --git a/include/linux/xz.h b/include/linux/xz.h
> index 77e80ce4b1..6480877f86 100644
> --- a/include/linux/xz.h
> +++ b/include/linux/xz.h
> @@ -264,10 +264,10 @@ XZ_EXTERN void xz_crc32_init(void);
>  XZ_EXTERN uint32_t xz_crc32(const uint8_t *buf, size_t size, uint32_t crc);
>  #endif
>  
> -STATIC int decompress_unxz(unsigned char *in, int in_size,
> -		     int (*fill)(void *dest, unsigned int size),
> -		     int (*flush)(void *src, unsigned int size),
> -		     unsigned char *out, int *in_used,
> +STATIC int decompress_unxz(unsigned char *in, long in_size,
> +		     long (*fill)(void *dest, unsigned long size),
> +		     long (*flush)(void *src, unsigned long size),
> +		     unsigned char *out, long *in_used,
>  		     void (*error)(char *x));
>  
>  #endif
> diff --git a/include/lzo.h b/include/lzo.h
> index f46f38b0ed..72bac97cc7 100644
> --- a/include/lzo.h
> +++ b/include/lzo.h
> @@ -47,10 +47,10 @@ STATIC int lzo1x_decompress_safe(const unsigned char *src, size_t src_len,
>  #define LZO_E_NOT_YET_IMPLEMENTED	(-9)
>  #define LZO_E_INVALID_ARGUMENT		(-10)
>  
> -STATIC int decompress_unlzo(u8 *input, int in_len,
> -		int (*fill) (void *, unsigned int),
> -		int (*flush) (void *, unsigned int),
> -		u8 *output, int *posp,
> +STATIC int decompress_unlzo(u8 *input, long in_len,
> +		long (*fill) (void *, unsigned long),
> +		long (*flush) (void *, unsigned long),
> +		u8 *output, long *posp,
>  		void (*error) (char *x));
>  
>  #endif
> diff --git a/include/uncompress.h b/include/uncompress.h
> index 72ba1dfda6..69ba18000e 100644
> --- a/include/uncompress.h
> +++ b/include/uncompress.h
> @@ -2,11 +2,11 @@
>  #ifndef __UNCOMPRESS_H
>  #define __UNCOMPRESS_H
>  
> -int uncompress(unsigned char *inbuf, int len,
> -	   int(*fill)(void*, unsigned int),
> -	   int(*flush)(void*, unsigned int),
> +int uncompress(unsigned char *inbuf, long len,
> +	   long(*fill)(void*, unsigned long),
> +	   long(*flush)(void*, unsigned long),
>  	   unsigned char *output,
> -	   int *pos,
> +	   long *pos,
>  	   void(*error_fn)(char *x));
>  
>  int uncompress_fd_to_fd(int infd, int outfd,
> diff --git a/lib/decompress_bunzip2.c b/lib/decompress_bunzip2.c
> index ee2862bebb..2daeb9b38c 100644
> --- a/lib/decompress_bunzip2.c
> +++ b/lib/decompress_bunzip2.c
> @@ -89,7 +89,7 @@ struct bunzip_data {
>  	/* State for interrupting output loop */
>  	int writeCopies, writePos, writeRunCountdown, writeCount, writeCurrent;
>  	/* I/O tracking data (file handles, buffers, positions, etc.) */
> -	int (*fill)(void*, unsigned int);
> +	long (*fill)(void*, unsigned long);
>  	int inbufCount, inbufPos /*, outbufPos*/;
>  	unsigned char *inbuf /*,*outbuf*/;
>  	unsigned int inbufBitCount, inbufBits;
> @@ -614,7 +614,7 @@ static int read_bunzip(struct bunzip_data *bd, char *outbuf, int len)
>  	goto decode_next_byte;
>  }
>  
> -static int nofill(void *buf, unsigned int len)
> +static long nofill(void *buf, unsigned long len)
>  {
>  	return -1;
>  }
> @@ -622,8 +622,8 @@ static int nofill(void *buf, unsigned int len)
>  /* Allocate the structure, read file header.  If in_fd ==-1, inbuf must contain
>     a complete bunzip file (len bytes long).  If in_fd!=-1, inbuf and len are
>     ignored, and data is read from file handle into temporary buffer. */
> -static int start_bunzip(struct bunzip_data **bdp, void *inbuf, int len,
> -			     int (*fill)(void*, unsigned int))
> +static int start_bunzip(struct bunzip_data **bdp, void *inbuf, long len,
> +			     long (*fill)(void*, unsigned long))
>  {
>  	struct bunzip_data *bd;
>  	unsigned int i, j, c;
> @@ -672,11 +672,11 @@ static int start_bunzip(struct bunzip_data **bdp, void *inbuf, int len,
>  
>  /* Example usage: decompress src_fd to dst_fd.  (Stops at end of bzip2 data,
>     not end of file.) */
> -int bunzip2(unsigned char *buf, int len,
> -			int(*fill)(void*, unsigned int),
> -			int(*flush)(void*, unsigned int),
> +int bunzip2(unsigned char *buf, long len,
> +			long(*fill)(void*, unsigned long),
> +			long(*flush)(void*, unsigned long),
>  			unsigned char *outbuf,
> -			int *pos,
> +			long *pos,
>  			void(*error)(char *x))
>  {
>  	struct bunzip_data *bd;
> diff --git a/lib/decompress_inflate.c b/lib/decompress_inflate.c
> index 47bd3db131..507190938c 100644
> --- a/lib/decompress_inflate.c
> +++ b/lib/decompress_inflate.c
> @@ -32,17 +32,17 @@
>  
>  #define GZIP_IOBUF_SIZE (16*1024)
>  
> -static int  nofill(void *buffer, unsigned int len)
> +static long nofill(void *buffer, unsigned long len)
>  {
>  	return -1;
>  }
>  
>  /* Included from initramfs et al code */
> -int  gunzip(unsigned char *buf, int len,
> -		       int(*fill)(void*, unsigned int),
> -		       int(*flush)(void*, unsigned int),
> +int  gunzip(unsigned char *buf, long len,
> +		       long(*fill)(void*, unsigned long),
> +		       long(*flush)(void*, unsigned long),
>  		       unsigned char *out_buf,
> -		       int *pos,
> +		       long *pos,
>  		       void(*error)(char *x)) {
>  	u8 *zbuf;
>  	struct z_stream_s *strm;
> diff --git a/lib/decompress_unlz4.c b/lib/decompress_unlz4.c
> index 2c04eac71c..a18e6591e9 100644
> --- a/lib/decompress_unlz4.c
> +++ b/lib/decompress_unlz4.c
> @@ -38,10 +38,10 @@
>  #define LZ4_DEFAULT_UNCOMPRESSED_CHUNK_SIZE (8 << 20)
>  #define ARCHIVE_MAGICNUMBER 0x184C2102
>  
> -static inline int unlz4(u8 *input, int in_len,
> -				int (*fill) (void *, unsigned int),
> -				int (*flush) (void *, unsigned int),
> -				u8 *output, int *posp,
> +static inline int unlz4(u8 *input, long in_len,
> +				long (*fill) (void *, unsigned long),
> +				long (*flush) (void *, unsigned long),
> +				u8 *output, long *posp,
>  				void (*error) (char *x))
>  {
>  	int ret = -1;
> @@ -180,11 +180,11 @@ static inline int unlz4(u8 *input, int in_len,
>  	return ret;
>  }
>  
> -STATIC int decompress_unlz4(unsigned char *buf, int in_len,
> -			      int(*fill)(void*, unsigned int),
> -			      int(*flush)(void*, unsigned int),
> +STATIC int decompress_unlz4(unsigned char *buf, long in_len,
> +			      long(*fill)(void*, unsigned long),
> +			      long(*flush)(void*, unsigned long),
>  			      unsigned char *output,
> -			      int *posp,
> +			      long *posp,
>  			      void(*error)(char *x)
>  	)
>  {
> diff --git a/lib/decompress_unlzo.c b/lib/decompress_unlzo.c
> index ad7f977280..18168cb948 100644
> --- a/lib/decompress_unlzo.c
> +++ b/lib/decompress_unlzo.c
> @@ -109,10 +109,10 @@ static inline int parse_header(u8 *input, int *skip, int in_len)
>  	return 1;
>  }
>  
> -int decompress_unlzo(u8 *input, int in_len,
> -				int (*fill) (void *, unsigned int),
> -				int (*flush) (void *, unsigned int),
> -				u8 *output, int *posp,
> +int decompress_unlzo(u8 *input, long in_len,
> +				long (*fill) (void *, unsigned long),
> +				long (*flush) (void *, unsigned long),
> +				u8 *output, long *posp,
>  				void (*error) (char *x))
>  {
>  	u8 r = 0;
> diff --git a/lib/decompress_unxz.c b/lib/decompress_unxz.c
> index ad6a5f20ba..7b8a9cd331 100644
> --- a/lib/decompress_unxz.c
> +++ b/lib/decompress_unxz.c
> @@ -235,10 +235,10 @@ static void memzero(void *buf, size_t size)
>   * both input and output buffers are available as a single chunk, i.e. when
>   * fill() and flush() won't be used.
>   */
> -STATIC int decompress_unxz(unsigned char *in, int in_size,
> -		     int (*fill)(void *dest, unsigned int size),
> -		     int (*flush)(void *src, unsigned int size),
> -		     unsigned char *out, int *in_used,
> +STATIC int decompress_unxz(unsigned char *in, long in_size,
> +		     long (*fill)(void *dest, unsigned long size),
> +		     long (*flush)(void *src, unsigned long size),
> +		     unsigned char *out, long *in_used,
>  		     void (*error)(char *x))
>  {
>  	struct xz_buf b;
> diff --git a/lib/uncompress.c b/lib/uncompress.c
> index bfe042fcf8..c23988fc02 100644
> --- a/lib/uncompress.c
> +++ b/lib/uncompress.c
> @@ -27,18 +27,18 @@
>  #include <libfile.h>
>  
>  static void *uncompress_buf;
> -static unsigned int uncompress_size;
> +static unsigned long uncompress_size;
>  
>  void uncompress_err_stdout(char *x)
>  {
>  	printf("%s\n", x);
>  }
>  
> -static int (*uncompress_fill_fn)(void*, unsigned int);
> +static long (*uncompress_fill_fn)(void*, unsigned long);
>  
> -static int uncompress_fill(void *buf, unsigned int len)
> +static long uncompress_fill(void *buf, unsigned long len)
>  {
> -	int total = 0;
> +	long total = 0;
>  
>  	if (uncompress_size) {
>  		int now = min(len, uncompress_size);
> @@ -60,19 +60,19 @@ static int uncompress_fill(void *buf, unsigned int len)
>  	return total;
>  }
>  
> -int uncompress(unsigned char *inbuf, int len,
> -	   int(*fill)(void*, unsigned int),
> -	   int(*flush)(void*, unsigned int),
> +int uncompress(unsigned char *inbuf, long len,
> +	   long(*fill)(void*, unsigned long),
> +	   long(*flush)(void*, unsigned long),
>  	   unsigned char *output,
> -	   int *pos,
> +	   long *pos,
>  	   void(*error_fn)(char *x))
>  {
>  	enum filetype ft;
> -	int (*compfn)(unsigned char *inbuf, int len,
> -            int(*fill)(void*, unsigned int),
> -            int(*flush)(void*, unsigned int),
> +	int (*compfn)(unsigned char *inbuf, long len,
> +            long(*fill)(void*, unsigned long),
> +            long(*flush)(void*, unsigned long),
>              unsigned char *output,
> -            int *pos,
> +            long *pos,
>              void(*error)(char *x));
>  	int ret;
>  	char *err;
> @@ -141,12 +141,12 @@ int uncompress(unsigned char *inbuf, int len,
>  
>  static int uncompress_infd, uncompress_outfd;
>  
> -static int fill_fd(void *buf, unsigned int len)
> +static long fill_fd(void *buf, unsigned long len)
>  {
>  	return read_full(uncompress_infd, buf, len);
>  }
>  
> -static int flush_fd(void *buf, unsigned int len)
> +static long flush_fd(void *buf, unsigned long len)
>  {
>  	return write(uncompress_outfd, buf, len);
>  }
> -- 
> 2.39.2
> 
> 
> 


