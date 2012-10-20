Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo5.mail-out.ovh.net ([46.105.56.132]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TPXxN-0001TB-Us
 for barebox@lists.infradead.org; Sat, 20 Oct 2012 12:15:11 +0000
Received: from mail624.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 79952FF9521
 for <barebox@lists.infradead.org>; Sat, 20 Oct 2012 14:21:55 +0200 (CEST)
Date: Sat, 20 Oct 2012 14:12:50 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121020121250.GC21588@game.jcrosoft.org>
References: <1350715865-4252-1-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350715865-4252-1-git-send-email-alex.aring@gmail.com>
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
Subject: Re: [PATCH 1/2] nandtest: improve nandtest command
To: Alexander Aring <alex.aring@googlemail.com>
Cc: barebox@lists.infradead.org

On 08:51 Sat 20 Oct     , Alexander Aring wrote:
> Improve nandtest command with following changes:
> 
> 	- Make ecc stats per page not per eraseblock.
> 	- Replace current offset output with progressbar.
> 	- Change parameter 'p' - 'passes' to 'i' - 'iterations'.
> 	- Clean up code.

split it in multiple patch
> 
> Signed-off-by: Alexander Aring <alex.aring@gmail.com>
> ---
>  commands/nandtest.c | 157 +++++++++++++++++++++++++++++-----------------------
>  1 file changed, 89 insertions(+), 68 deletions(-)
> 
> diff --git a/commands/nandtest.c b/commands/nandtest.c
> index d683b24..ebcd4de 100644
> --- a/commands/nandtest.c
> +++ b/commands/nandtest.c
> @@ -21,6 +21,7 @@
>  #include <linux/mtd/mtd-abi.h>
>  #include <fcntl.h>
>  #include <stdlib.h>
> +#include <progress.h>
>  
>  /* Max ECC Bits that can be corrected */
>  #define MAX_ECC_BITS 8
> @@ -78,7 +79,7 @@ static ssize_t pwrite(int fd, const void *buf, size_t count, off_t offset)
>  		perror("write");
>  		if (markbad) {
>  			printf("Mark block bad at 0x%08x\n",
> -					(unsigned)(offset + memregion.offset));
> +					(unsigned)(offset+memregion.offset));
no
>  			ioctl(fd, MEMSETBADBLOCK, &offset);
>  		}
>  	}
> @@ -93,12 +94,12 @@ static ssize_t pwrite(int fd, const void *buf, size_t count, off_t offset)
>   * Param data: data to write on flash.
>   * Param rbuf: pointer to allocated buffer to copy readed data.
>   */
> -static int erase_and_write(off_t ofs, unsigned char *data, unsigned char *rbuf)
> +static int erase_and_write(off_t ofs, off_t length,
> +		unsigned char *data, unsigned char *rbuf)
>  {
>  	struct erase_info_user er;
> -	int i, ret;
> -
> -	printf("\r0x%08x: erasing... ", (unsigned)(ofs + memregion.offset));
> +	unsigned int i;
> +	int ret;
>  
>  	er.start = ofs;
>  	er.length = meminfo.erasesize;
> @@ -106,49 +107,55 @@ static int erase_and_write(off_t ofs, unsigned char *data, unsigned char *rbuf)
>  	ret = erase(fd, er.length, er.start);
>  	if (ret < 0) {
>  		perror("erase");
> -		printf("Could't not erase flash at 0x%08x length 0x%08x.\n",
> +		printf("\nCould't not erase flash at 0x%08x length 0x%08x.\n",
>  			   er.start, er.length);
>  		return ret;
>  	}
>  
> -	printf("\r0x%08x: writing...", (unsigned)(ofs + memregion.offset));
> +	for (i = 0; i < meminfo.erasesize;
> +			i = i+meminfo.writesize) {
> +		/* Write data to given offset */
> +		pwrite(fd, data+i, meminfo.erasesize, ofs+i);
>  
> -	/* Write data to given offset */
> -	pwrite(fd, data, meminfo.erasesize, ofs);
> +		/* Read data from offset */
> +		pread(fd, rbuf+i, meminfo.writesize, ofs+i);
>  
> -	printf("\r0x%08x: reading...", (unsigned)(ofs + memregion.offset));
> +		ret = ioctl(fd, ECCGETSTATS, &newstats);
> +		if (ret < 0) {
> +			perror("ECCGETSTATS");
> +			return ret;
> +		}
>  
> -	/* Read data from offset */
> -	pread(fd, rbuf, meminfo.erasesize, ofs);
> +		if (newstats.corrected > oldstats.corrected) {
> +			printf("\n %d bit(s) ECC corrected at 0x%08x\n",
> +					newstats.corrected-oldstats.corrected,
> +					(unsigned)(ofs+memregion.offset));
> +
> +			init_progression_bar(length);
> +
> +			if ((newstats.corrected-oldstats.corrected)
> +					>= MAX_ECC_BITS) {
> +				/* Increment ECC stats that
> +				 * are over MAX_ECC_BITS */
> +				ecc_stats_over++;
> +			} else {
> +				/* Increment ECC stat value */
> +				ecc_stats[(newstats.corrected-
> +						oldstats.corrected)-1]++;
> +			}
> +			/* Set oldstats to newstats */
> +			oldstats.corrected = newstats.corrected;
> +		}
> +		if (newstats.failed > oldstats.failed) {
> +			printf("\nECC failed at 0x%08x\n",
> +					(unsigned)(ofs+memregion.offset));
>  
> -	ret = ioctl(fd, ECCGETSTATS, &newstats);
> -	if (ret < 0) {
> -		perror("ECCGETSTATS");
> -		return ret;
> -	}
> +			init_progression_bar(length);
>  
> -	if (newstats.corrected > oldstats.corrected) {
> -		printf("\n %d bit(s) ECC corrected at 0x%08x\n",
> -				newstats.corrected - oldstats.corrected,
> -				(unsigned)(ofs + memregion.offset));
> -		if ((newstats.corrected-oldstats.corrected) >= MAX_ECC_BITS) {
> -			/* Increment ECC stats that are over MAX_ECC_BITS */
> -			ecc_stats_over++;
> -		} else {
> -			/* Increment ECC stat value */
> -			ecc_stats[(newstats.corrected-oldstats.corrected)-1]++;
> +			oldstats.failed = newstats.failed;
> +			ecc_failed_cnt++;
>  		}
> -		/* Set oldstats to newstats */
> -		oldstats.corrected = newstats.corrected;
>  	}
> -	if (newstats.failed > oldstats.failed) {
> -		printf("\nECC failed at 0x%08x\n",
> -				(unsigned)(ofs + memregion.offset));
> -		oldstats.failed = newstats.failed;
> -		ecc_failed_cnt++;
> -	}
> -
> -	printf("\r0x%08x: checking...", (unsigned)(ofs + memregion.offset));
>  
>  	/* Compared written data with read data.
>  	 * If data is not identical, display a detailed
> @@ -161,6 +168,7 @@ static int erase_and_write(off_t ofs, unsigned char *data, unsigned char *rbuf)
>  				printf("Byte 0x%x is %02x should be %02x\n",
>  				       i, rbuf[i], data[i]);
>  		}
> +
>  		return ret;
>  	}
>  	return 0;
> @@ -171,9 +179,9 @@ static void print_stats(int nr_passes, int length)
>  {
>  	int i;
>  	printf("-------- Summary --------\n");
> -	printf("Tested blocks		: %d\n", (length/meminfo.erasesize)
> +	printf("Tested Eraseblocks	: %d\n", (length/meminfo.erasesize)
>  			* nr_passes);
> -
> +	printf("ECC failures per Page:\n");
>  	for (i = 0; i < MAX_ECC_BITS; i++)
>  		printf("ECC %d bit error(s)	: %d\n", i+1, ecc_stats[i]);
>  
> @@ -185,14 +193,12 @@ static void print_stats(int nr_passes, int length)
>  /* Main program. */
>  static int do_nandtest(int argc, char *argv[])
>  {
> -	int opt, length = -1, do_nandtest_dev = -1;
> -	off_t flash_offset = 0;
> -	off_t test_ofs;
> -	unsigned int nr_passes = 1, pass;
> -	int i;
> -	int ret = -1;
> +	off_t flash_offset = 0, test_ofs, length = 0;
> +	unsigned int nr_iterations = 1, iter;
>  	unsigned char *wbuf, *rbuf;
> +	int opt, do_nandtest_dev = -1, ret = -1;
>  
> +	/* Init global variables. */
>  	ecc_failed_cnt = 0;
>  	ecc_stats_over = 0;
>  	markbad = 0;
> @@ -200,7 +206,7 @@ static int do_nandtest(int argc, char *argv[])
>  
>  	memset(ecc_stats, 0, MAX_ECC_BITS);
>  
> -	while ((opt = getopt(argc, argv, "ms:p:o:l:t")) > 0) {
> +	while ((opt = getopt(argc, argv, "ms:i:o:l:t")) > 0) {
>  		switch (opt) {
>  		case 'm':
>  			markbad = 1;
> @@ -208,8 +214,8 @@ static int do_nandtest(int argc, char *argv[])
>  		case 's':
>  			seed = simple_strtoul(optarg, NULL, 0);
>  			break;
> -		case 'p':
> -			nr_passes = simple_strtoul(optarg, NULL, 0);
> +		case 'i':
> +			nr_iterations = simple_strtoul(optarg, NULL, 0);
>  			break;
>  		case 'o':
>  			flash_offset = simple_strtoul(optarg, NULL, 0);
> @@ -225,7 +231,7 @@ static int do_nandtest(int argc, char *argv[])
>  		}
>  	}
>  
> -	/* Check if no device is given */
> +	/* Check if no device is given. */
>  	if (optind >= argc)
>  		return COMMAND_ERROR_USAGE;
>  
> @@ -243,7 +249,6 @@ static int do_nandtest(int argc, char *argv[])
>  	}
>  
>  	/* Getting flash information. */
> -
>  	ret = ioctl(fd, MEMGETINFO, &meminfo);
>  	if (ret < 0) {
>  		perror("MEMGETINFO");
> @@ -262,18 +267,25 @@ static int do_nandtest(int argc, char *argv[])
>  		goto err;
>  	}
>  
> -	if (length == -1) {
> +	if (!length) {
>  		length = meminfo.size;
>  		length -= flash_offset;
>  	}
>  
>  	printf("Flash offset: 0x%08x\n",
>  			(unsigned)(flash_offset+memregion.offset));
> -	printf("Length: 0x%08x\n", (unsigned)length);
> -	printf("End address: 0x%08x\n",
> +	printf("Length:       0x%08x\n", (unsigned)length);
> +	printf("End address:  0x%08x\n",
>  			(unsigned)(flash_offset+length+memregion.offset));
> -	printf("Erasesize: 0x%08x\n", (unsigned)(meminfo.erasesize));
> -	printf("Starting nandtest...\n");
> +	printf("Erasesize:    0x%08x\n", (unsigned)(meminfo.erasesize));
> +	printf("Testing device...\n");
> +
> +	/* Check constraints */
> +	if (meminfo.erasesize % meminfo.writesize) {
> +		printf("Erasesize is not a multiple of writesize.\n"
> +				"Please check driver implementation\n.");
> +		goto err;
> +	}
>  
>  	if (flash_offset % meminfo.erasesize) {
>  		printf("Offset 0x%08x not multiple of erase size 0x%08x\n",
> @@ -281,12 +293,12 @@ static int do_nandtest(int argc, char *argv[])
>  		goto err;
>  	}
>  	if (length % meminfo.erasesize) {
> -		printf("Length 0x%08x not multiple of erase size 0x%08x\n",
> +		printf("Length 0x%08lx not multiple of erase size 0x%08x\n",
>  			length, meminfo.erasesize);
>  		goto err;
>  	}
> -	if (length + flash_offset > meminfo.size) {
> -		printf("Length 0x%08x + offset 0x%08x exceeds "
> +	if (length+flash_offset > meminfo.size) {
> +		printf("Length 0x%08lx + offset 0x%08x exceeds "
>  				"device size 0x%08x\n",
>  			length, (unsigned)flash_offset, meminfo.size);
>  		goto err;
> @@ -298,9 +310,12 @@ static int do_nandtest(int argc, char *argv[])
>  			meminfo.erasesize * 2);
>  		goto err;
>  	}
> -	rbuf = wbuf + meminfo.erasesize;
>  
> -	for (pass = 0; pass < nr_passes; pass++) {
> +	rbuf = wbuf+meminfo.erasesize;
> +
> +	for (iter = 0; iter < nr_iterations; iter++) {
> +		init_progression_bar(length);
> +
>  		for (test_ofs = flash_offset;
>  				test_ofs < flash_offset+length;
>  				test_ofs += meminfo.erasesize) {
> @@ -309,23 +324,29 @@ static int do_nandtest(int argc, char *argv[])
>  			seed = rand();
>  
>  			if (ioctl(fd, MEMGETBADBLOCK, &__test_ofs)) {
> -				printf("\rBad block at 0x%08x\n",
> -						(unsigned)(test_ofs +
> +				printf("\nBad block at 0x%08x\n",
> +						(unsigned)(test_ofs+
>  							memregion.offset));
> +				init_progression_bar(length);
>  				continue;
>  			}
>  
> -			for (i = 0; i < meminfo.erasesize; i++)
> -				wbuf[i] = rand();
> +			get_random_bytes(wbuf, meminfo.erasesize);
>  
> -			ret = erase_and_write(test_ofs, wbuf, rbuf);
> +			show_progress(test_ofs);
> +
> +			ret = erase_and_write(
> +					test_ofs, length, wbuf, rbuf);
>  			if (ret < 0)
>  				goto err2;
>  		}
> -		printf("\nFinished pass %d successfully\n", pass+1);
> +
> +		show_progress(test_ofs);
> +		printf("\nFinished iteration %d successfully\n", iter+1);
>  	}
>  
> -	print_stats(nr_passes, length);
> +	print_stats(nr_iterations,
> +			length);
>  
>  	ret = close(fd);
>  	if (ret < 0) {
> @@ -350,7 +371,7 @@ static const __maybe_unused char cmd_nandtest_help[] =
>  		"  -t,	Really do a nandtest on device.\n"
>  		"  -m,	Mark blocks bad if they appear so.\n"
>  		"  -s	<seed>,	Supply random seed.\n"
> -		"  -p	<passes>, Number of passes.\n"
> +		"  -i	<iterations>, Number of iterations.\n"
>  		"  -o	<offset>, Start offset on flash.\n"
>  		"  -l	<length>, Length of flash to test.\n";
>  
> -- 
> 1.7.12.4
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
