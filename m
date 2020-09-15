Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kI3Sv-0001S1-K9
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 05:25:18 +0000
References: <20200914130640.21416-1-s.hauer@pengutronix.de>
 <20200914130640.21416-4-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <da8f70a1-921f-ad94-ffb1-855eb4004f86@pengutronix.de>
Date: Tue, 15 Sep 2020 07:25:15 +0200
MIME-Version: 1.0
In-Reply-To: <20200914130640.21416-4-s.hauer@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH 4/4] fs: free unused dentries
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

Hello Sascha,

On 9/14/20 3:06 PM, Sascha Hauer wrote:
> So far we only ever freed dentries when the filesystem they are on is
> unmounted. With this patch we actually trust reference counting and free
> the dentries once the reference count hits zero.

Unless I revert this patch, I run into a crash doing:

dd if=/dev/zero of=barebox.env count=1
./barebox --image=barebox.env
barebox@barebox sandbox:/ saveenv
saving environment
barebox@barebox sandbox:/ reset
=================================================================
==894761==ERROR: AddressSanitizer: heap-use-after-free on address 0x60e000005d70 at pc 0x5617cfde210a bp 0x7ffff89957d0 sp 0x7ffff89957c8
WRITE of size 8 at 0x60e000005d70 thread T0
    #0 0x5617cfde2109 in __list_del /home/a3f/dl/barebox-sbr/include/linux/list.h:112
    #1 0x5617cfde2109 in __list_del_entry /home/a3f/dl/barebox-sbr/include/linux/list.h:135
    #2 0x5617cfde2109 in list_del /home/a3f/dl/barebox-sbr/include/linux/list.h:146
    #3 0x5617cfde2109 in dentry_kill /home/a3f/dl/barebox-sbr/fs/fs.c:653
    #4 0x5617cfde20ad in dentry_kill /home/a3f/dl/barebox-sbr/fs/fs.c:651
    #5 0x5617cfde2284 in dentry_delete_subtree /home/a3f/dl/barebox-sbr/fs/fs.c:668
    #6 0x5617cfde2256 in dentry_delete_subtree /home/a3f/dl/barebox-sbr/fs/fs.c:666
    #7 0x5617cfde2256 in dentry_delete_subtree /home/a3f/dl/barebox-sbr/fs/fs.c:666
    #8 0x5617cfde2256 in dentry_delete_subtree /home/a3f/dl/barebox-sbr/fs/fs.c:666
    #9 0x5617cfde25a2 in fs_remove /home/a3f/dl/barebox-sbr/fs/fs.c:704
    #10 0x5617cfbe8edc in devices_shutdown /home/a3f/dl/barebox-sbr/drivers/base/driver.c:484
    #11 0x5617cfbacbba in shutdown_barebox /home/a3f/dl/barebox-sbr/common/startup.c:422
    #12 0x5617cfd2f2a6 in cmd_reset /home/a3f/dl/barebox-sbr/commands/reset.c:43
    #13 0x5617cfbb8df5 in execute_command /home/a3f/dl/barebox-sbr/common/command.c:72
    #14 0x5617cfbcc1be in run_pipe_real /home/a3f/dl/barebox-sbr/common/hush.c:856
    #15 0x5617cfbcc1be in run_list_real /home/a3f/dl/barebox-sbr/common/hush.c:980
    #16 0x5617cfbcc1be in run_list_real /home/a3f/dl/barebox-sbr/common/hush.c:868
    #17 0x5617cfbca445 in run_list /home/a3f/dl/barebox-sbr/common/hush.c:1097
    #18 0x5617cfbca445 in parse_stream_outer /home/a3f/dl/barebox-sbr/common/hush.c:1725
    #19 0x5617cfbccde9 in run_shell /home/a3f/dl/barebox-sbr/common/hush.c:1948
    #20 0x5617cfbaca6b in run_init /home/a3f/dl/barebox-sbr/common/startup.c:366
    #21 0x5617cfbacb6e in start_barebox /home/a3f/dl/barebox-sbr/common/startup.c:394
    #22 0x5617cfe1d261 in main (/home/a3f/dl/build/barebox/sandbox/barebox+0x3e3261)
    #23 0x7fb6b1fc1cc9 in __libc_start_main ../csu/libc-start.c:308
    #24 0x5617cfba91a9 in _start (/home/a3f/dl/build/barebox/sandbox/barebox+0x16f1a9)

0x60e000005d70 is located 112 bytes inside of 160-byte region [0x60e000005d00,0x60e000005da0)
freed by thread T0 here:
    #0 0x7fb6b2bf3277 in __interceptor_free (/lib/x86_64-linux-gnu/libasan.so.5+0x107277)
    #1 0x5617cfe1d3b0 in barebox_free (/home/a3f/dl/build/barebox/sandbox/barebox+0x3e33b0)
    #2 0x5617cfde21af in dentry_kill /home/a3f/dl/barebox-sbr/fs/fs.c:655

previously allocated by thread T0 here:
    #0 0x7fb6b2bf3628 in malloc (/lib/x86_64-linux-gnu/libasan.so.5+0x107628)
    #1 0x5617cfe1d396 in barebox_malloc (/home/a3f/dl/build/barebox/sandbox/barebox+0x3e3396)
    #2 0x5617cfd530b5 in xmalloc /home/a3f/dl/barebox-sbr/lib/xfuncs.c:40

SUMMARY: AddressSanitizer: heap-use-after-free /home/a3f/dl/barebox-sbr/include/linux/list.h:112 in __list_del
Shadow bytes around the buggy address:
  0x0c1c7fff8b50: fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd
  0x0c1c7fff8b60: fa fa fa fa fa fa fa fa fd fd fd fd fd fd fd fd
  0x0c1c7fff8b70: fd fd fd fd fd fd fd fd fd fd fd fd fa fa fa fa
  0x0c1c7fff8b80: fa fa fa fa fd fd fd fd fd fd fd fd fd fd fd fd
  0x0c1c7fff8b90: fd fd fd fd fd fd fd fd fa fa fa fa fa fa fa fa
=>0x0c1c7fff8ba0: fd fd fd fd fd fd fd fd fd fd fd fd fd fd[fd]fd
  0x0c1c7fff8bb0: fd fd fd fd fa fa fa fa fa fa fa fa 00 00 00 00
  0x0c1c7fff8bc0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0c1c7fff8bd0: fa fa fa fa fa fa fa fa fd fd fd fd fd fd fd fd
  0x0c1c7fff8be0: fd fd fd fd fd fd fd fd fd fd fd fd fa fa fa fa
  0x0c1c7fff8bf0: fa fa fa fa 00 00 00 00 00 00 00 00 00 00 00 00
Shadow byte legend (one shadow byte represents 8 application bytes):
  Addressable:           00
  Partially addressable: 01 02 03 04 05 06 07 
  Heap left redzone:       fa
  Freed heap region:       fd
  Stack left redzone:      f1
  Stack mid redzone:       f2
  Stack right redzone:     f3
  Stack after return:      f5
  Stack use after scope:   f8
  Global redzone:          f9
  Global init order:       f6
  Poisoned by user:        f7
  Container overflow:      fc
  Array cookie:            ac
  Intra object redzone:    bb
  ASan internal:           fe
  Left alloca redzone:     ca
  Right alloca redzone:    cb
  Shadow gap:              cc
==894761==ABORTING

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  fs/fs.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index 5784e9c1f3..824c4e2806 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -1129,6 +1129,9 @@ void dput(struct dentry *dentry)
>  		return;
>  
>  	dentry->d_count--;
> +
> +	if (!dentry->d_count)
> +		dentry_kill(dentry);
>  }
>  
>  struct dentry *dget(struct dentry *dentry)
> @@ -2837,7 +2840,6 @@ int mount(const char *device, const char *fsname, const char *pathname,
>  		fsdev->vfsmount.mountpoint->d_flags |= DCACHE_MOUNTED;
>  	} else {
>  		d_root = fsdev->sb.s_root;
> -		path.dentry = d_root;
>  		mnt_root = &fsdev->vfsmount;
>  		fsdev->vfsmount.mountpoint = d_root;
>  		fsdev->vfsmount.parent = &fsdev->vfsmount;
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
