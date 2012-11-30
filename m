Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [220.181.15.113] (helo=m15-113.126.com)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TeOKm-0007Ax-6Y
 for barebox@lists.infradead.org; Fri, 30 Nov 2012 11:00:43 +0000
Date: Fri, 30 Nov 2012 19:00:29 +0800
From: =?utf-8?B?5byg5b+g5bGx?= <zzs213@126.com>
Message-ID: <20121130110029.GA7099@greatfirst.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: gunzip error when uncompress to buf
To: barebox <barebox@lists.infradead.org>

On host use the flowwing cmd build a gziped file

----------------
$ gzip -c9 zbarebox.bin > xxx

$ ls zbarebox.bin xxx -l
-rw-rw-r-- 1 zzs zzs 127605 2012-11-30 17:46 xxx
-rwxrwxr-x 1 zzs zzs 136769 2012-11-30 18:44 zbarebox.bin*
----------------

Then on barebox write it to /dev/nor0.kernel

----------------
[barebox@SSR600]:/
# tftp xxx /dev/nor0.kernel
----------------


And add a barebox cmd to uncompress it:

----------------
char ptr[SZ_512K];
static int do_tx(int argc, char *argv[])
{
	int ret = 0, size = 0, fd, fd1;

	fd = open("/dev/tempmem", O_RDWR);
	if(fd < 0)
		printf("error open tempmem\n");
	fd1 = open("/dev/nor0.kernel", O_RDONLY);
	if(fd1 < 0)
		printf("error open kernel\n");
	ret = uncompress_fd_to_fd (fd1, fd, uncompress_err_stdout);
	printf("ret is %d\n", ret);

	close(fd1);
	fd1 = open("/dev/nor0.kernel", O_RDONLY);
	if(fd1 < 0)
		printf("error open kernel\n");
	ret = uncompress_fd_to_buf(fd1, ptr, uncompress_err_stdout);
	printf("ret is %d\n", ret);

	return 0;
}

BAREBOX_CMD_START(tx)
	.cmd		= do_tx,
BAREBOX_CMD_END
----------------

Compile barebox, download to board and run this command

----------------
[barebox@SSR600]:/
# tx
ret is 0
uncompression error
ret is -1
----------------

The result is:

uncompress_fd_to_fd is OK
uncompress_fd_to_buf fail and lib/decompress_inflate.c:gunzip()
output a message "uncompression error"

Anybody help me!

-- 
Best Regards,
zzs



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
