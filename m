Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1baGk6-0006b6-Sl
 for barebox@lists.infradead.org; Thu, 18 Aug 2016 06:23:56 +0000
Date: Thu, 18 Aug 2016 08:23:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160818062332.GC20657@pengutronix.de>
References: <1470767897.30803.197.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1470767897.30803.197.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH] socfpga: Add support for V1 images to socfpga_mkimage
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox <barebox@lists.infradead.org>

On Tue, Aug 09, 2016 at 06:38:16PM +0000, Trent Piepho wrote:
> Altera's SocFPGA Arria10 SoC uses a new image format, different from
> the one used on CycloneV.  The formats are similar, with the header
> matching up to the point where the version field is 1 instead of 0.
> At that point the header fields diverge.  The CRC and checksum use is
> the same between the two.
> 
> This patch extends socfpga_mkimage to support generating the new
> format with a version command line option.  The default will be V0 for
> CycloneV.
> 
> The new format is, IMHO, not as good as the previous one.  It requires
> the start location be after the header, while the V0 format would
> allow the start location to be before or after.  Barebox boot images
> are designed to start from offset 0, which is before the header.  To
> avoid modifying the common barebox start code specifically for
> Arria10, I instead add a trampoline instruction after the V1 header to
> jump to the real start location, wherever it might be.
> 
> Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
> ---
>  scripts/socfpga_mkimage.c | 144 +++++++++++++++++++++++++++++++++++-----------
>  1 file changed, 110 insertions(+), 34 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/socfpga_mkimage.c b/scripts/socfpga_mkimage.c
> index 4fbd5c7..d7fe1b1 100644
> --- a/scripts/socfpga_mkimage.c
> +++ b/scripts/socfpga_mkimage.c
> @@ -14,7 +14,10 @@
>  
>  #define BRANCH_INST 0xea /* ARM opcode for "b" (unconditional branch) */
>  
> -#define MAX_IMAGE_SIZE (60 * 1024 - 4)
> +#define MAX_V0IMAGE_SIZE (60 * 1024 - 4)
> +/* Max size without authentication is 224 KB, due to memory used by
> + * the ROM boot code as a workspace out of the 256 KB of OCRAM */
> +#define MAX_V1IMAGE_SIZE (224 * 1024 - 4)
>  
>  static int add_barebox_header;
>  
> @@ -22,10 +25,21 @@ struct socfpga_header {
>  	uint8_t validation_word[4];
>  	uint8_t version;
>  	uint8_t flags;
> -	uint8_t program_length[2];
> -	uint8_t spare[2];
> -	uint8_t checksum[2];
> -	uint8_t start_vector[4];
> +	union {
> +		struct {
> +			uint8_t program_length[2];
> +			uint8_t spare[2];
> +			uint8_t checksum[2];
> +			uint8_t start_vector[4];
> +		} v0;
> +		struct {
> +			uint8_t header_length[2];
> +			uint8_t program_length[4];
> +			uint8_t entry_offset[4];
> +			uint8_t spare[2];
> +			uint8_t checksum[2];
> +		} v1;
> +	};
>  };
>  
>  static uint32_t bb_header[] = {
> @@ -87,7 +101,7 @@ static int write_full(int fd, void *buf, size_t size)
>  	return insize;
>  }
>  
> -static uint32_t crc_table[256] = {
> +static const uint32_t crc_table[256] = {
>  	0x00000000, 0x04c11db7, 0x09823b6e, 0x0d4326d9, 0x130476dc, 0x17c56b6b,
>  	0x1a864db2, 0x1e475005, 0x2608edb8, 0x22c9f00f, 0x2f8ad6d6, 0x2b4bcb61,
>  	0x350c9b64, 0x31cd86d3, 0x3c8ea00a, 0x384fbdbd, 0x4c11db70, 0x48d0c6c7,
> @@ -143,47 +157,94 @@ uint32_t crc32(uint32_t crc, void *_buf, int length)
>  	return crc;
>  }
>  
> +/* Create an ARM relative branch instuction 
> + * branch is where the instruction will be placed and dest points to where
> + * it should branch too. */
> +static void branch(uint8_t *branch, uint8_t *dest)
> +{
> +	int offset = dest - branch - 8; /* PC is offset +8 bytes on ARM */
> +
> +	branch[0] = (offset >> 2) & 0xff; /* instruction uses offset/4 */
> +	branch[1] = (offset >> 10) & 0xff;
> +	branch[2] = (offset >> 18) & 0xff;
> +	branch[3] = BRANCH_INST;
> +}
> +
>  /* start_addr is where the socfpga header's start instruction should branch to.
>   * It should be relative to the start of buf */
> -static int add_socfpga_header(void *buf, size_t size, unsigned start_addr)
> +static int add_socfpga_header(void *buf, size_t size, unsigned start_addr, unsigned version)
>  {
>  	struct socfpga_header *header = buf + 0x40;
> -	uint8_t *bufp;
> +	void *entry;
> +	uint8_t *bufp, *sumendp;
>  	uint32_t *crc;
>  	unsigned checksum;
> -	size_t length = size >> 2;
>  
>  	if (size & 0x3) {
>  		fprintf(stderr, "%s: size must be multiple of 4\n", __func__);
>  		return -EINVAL;
>  	}
>  
> -	/* Calculate relative address of requested start_addr from the
> -	 * start_vector's branch instuction PC (+8 bytes on arm).  */
> -	start_addr = start_addr + (int)(buf - (void*)&header->start_vector[0]) - 8;
> +	/* Absolute address of entry point in buf */
> +	entry = buf + start_addr;
> +	if (version == 0) {
> +		sumendp = &header->v0.checksum[0];
> +	} else {
> +		sumendp = &header->v1.checksum[0];
> +
> +		/* The ROM loader can't handle a negative offset */
> +		if (entry < (void*)header) {
> +			/* add a trampoline branch inst after end of the header */
> +			uint8_t *trampoline = (void*)(header + 1);
> +			branch(trampoline, entry);
> +
> +			/* and then make the trampoline the entry point */
> +			entry = trampoline;
> +		}
> +		/* Calculate start address as offset relative to start of header */
> +		start_addr = entry - (void*)header;
> +	}
>  
>  	header->validation_word[0] = VALIDATION_WORD & 0xff;
>  	header->validation_word[1] = (VALIDATION_WORD >> 8) & 0xff;
>  	header->validation_word[2] = (VALIDATION_WORD >> 16) & 0xff;
>  	header->validation_word[3] = (VALIDATION_WORD >> 24) & 0xff;
> -	header->version = 0;
> +	header->version = version;
>  	header->flags = 0;
> -	header->program_length[0] = length & 0xff;
> -	header->program_length[1] = (length >> 8) & 0xff;
> -	header->spare[0] = 0;
> -	header->spare[1] = 0;
> -	header->start_vector[0] = (start_addr >> 2) & 0xff; /* instruction uses offset/4 */
> -	header->start_vector[1] = (start_addr >> 10) & 0xff;
> -	header->start_vector[2] = (start_addr >> 18) & 0xff;
> -	header->start_vector[3] = BRANCH_INST;
> +
> +	if (version == 0) {
> +		header->v0.program_length[0] = (size >>  2) & 0xff; /* length in words */
> +		header->v0.program_length[1] = (size >> 10) & 0xff;
> +		header->v0.spare[0] = 0;
> +		header->v0.spare[1] = 0;
> +		branch(header->v0.start_vector, entry);
> +	} else {
> +		header->v1.header_length[0] = (sizeof(*header) >> 0) & 0xff;
> +		header->v1.header_length[1] = (sizeof(*header) >> 8) & 0xff;
> +		header->v1.program_length[0] = (size >>  0) & 0xff;
> +		header->v1.program_length[1] = (size >>  8) & 0xff;
> +		header->v1.program_length[2] = (size >> 16) & 0xff;
> +		header->v1.program_length[3] = (size >> 24) & 0xff;
> +		header->v1.entry_offset[0] = (start_addr >>  0) & 0xff;
> +		header->v1.entry_offset[1] = (start_addr >>  8) & 0xff;
> +		header->v1.entry_offset[2] = (start_addr >> 16) & 0xff;
> +		header->v1.entry_offset[3] = (start_addr >> 24) & 0xff;
> +		header->v1.spare[0] = 0;
> +		header->v1.spare[1] = 0;
> +	}
>  
>  	/* Sum from beginning of header to start of checksum field */
>  	checksum = 0;
> -	for (bufp = (uint8_t*)header; bufp < &header->checksum[0]; bufp++)
> +	for (bufp = (uint8_t*)header; bufp < sumendp; bufp++)
>  		checksum += *bufp;
>  
> -	header->checksum[0] = checksum & 0xff;;
> -	header->checksum[1] = (checksum >> 8) & 0xff;;
> +	if (version == 0) {
> +		header->v0.checksum[0] = checksum & 0xff;;
> +		header->v0.checksum[1] = (checksum >> 8) & 0xff;;
> +	} else {
> +		header->v1.checksum[0] = checksum & 0xff;;
> +		header->v1.checksum[1] = (checksum >> 8) & 0xff;;
> +	}
>  
>  	crc = buf + size - sizeof(uint32_t);
>  
> @@ -195,7 +256,7 @@ static int add_socfpga_header(void *buf, size_t size, unsigned start_addr)
>  
>  static void usage(const char *prgname)
>  {
> -	fprintf(stderr, "usage: %s [OPTIONS] <infile>\n", prgname);
> +	fprintf(stderr, "usage: %s [-hb] [-v version] <infile> -o <outfile>\n", prgname);
>  }
>  
>  int main(int argc, char *argv[])
> @@ -205,16 +266,23 @@ int main(int argc, char *argv[])
>  	struct stat s;
>  	void *buf;
>  	int fd;
> -	int min_image_size = 80;
> -	int max_image_size = MAX_IMAGE_SIZE;
> +	int max_image_size, min_image_size = 80;
>  	int addsize = 0, pad;
> +	unsigned int version = 0;
>  
> -	while ((opt = getopt(argc, argv, "o:hb")) != -1) {
> +	while ((opt = getopt(argc, argv, "o:hbv:")) != -1) {
>  		switch (opt) {
> +		case 'v':
> +			version = atoi(optarg);
> +			if (version > 1) {
> +				printf("Versions supported: 0 or 1\n");
> +				usage(argv[0]);
> +				exit(1);
> +			}
> +			break;
>  		case 'b':
>  			add_barebox_header = 1;
>  			min_image_size = 0;
> -			max_image_size = MAX_IMAGE_SIZE - 512;
>  			addsize = 512;
>  			break;
>  		case 'h':
> @@ -224,15 +292,21 @@ int main(int argc, char *argv[])
>  			outfile = optarg;
>  			break;
>  		default:
> +			usage(argv[0]);
>  			exit(1);
>  		}
>  	}
> +	if (version == 0) {
> +		max_image_size = MAX_V0IMAGE_SIZE;
> +	} else {
> +		max_image_size = MAX_V1IMAGE_SIZE;
> +	}
> +	max_image_size -= addsize;
>  
> -	if (optind == argc) {
> +	if (optind == argc || !outfile) {
>  		usage(argv[0]);
>  		exit(1);
>  	}
> -
>  	infile = argv[optind];
>  
>  	ret = stat(infile, &s);
> @@ -242,7 +316,8 @@ int main(int argc, char *argv[])
>  	}
>  
>  	if (s.st_size < min_image_size) {
> -		fprintf(stderr, "input image too small. Minimum is 80 bytes\n");
> +		fprintf(stderr, "input image too small. Minimum is %d bytes\n",
> +			min_image_size);
>  		exit(1);
>  	}
>  
> @@ -253,7 +328,7 @@ int main(int argc, char *argv[])
>  	}
>  
>  	fd = open(infile, O_RDONLY);
> -	if (fd < 0) {
> +	if (fd == -1) {
>  		perror("open infile");
>  		exit(1);
>  	}
> @@ -280,7 +355,8 @@ int main(int argc, char *argv[])
>  		memcpy(buf, bb_header, sizeof(bb_header));
>  	}
>  
> -	ret = add_socfpga_header(buf, s.st_size + 4 + addsize + pad, addsize);
> +	ret = add_socfpga_header(buf, s.st_size + 4 + addsize + pad, addsize,
> +	                         version);
>  	if (ret)
>  		exit(1);
>  
> -- 
> 2.7.0.25.gfc10eb5.dirty
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
