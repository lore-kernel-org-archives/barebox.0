Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8o20-0005vP-Ta
 for barebox@lists.infradead.org; Tue, 04 Sep 2012 07:58:45 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1T8o1y-0004D0-B4
 for barebox@lists.infradead.org; Tue, 04 Sep 2012 09:58:42 +0200
Date: Tue, 4 Sep 2012 09:58:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120904075842.GM26594@pengutronix.de>
References: <20120903145042.GD19931@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120903145042.GD19931@game.jcrosoft.org>
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
Subject: Re: [PATCH 00/18 v3] fs: add symlink and readlink support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 03, 2012 at 04:50:42PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	v4:
> 	 drop the mounted path added to absolute symlink
> 
> 	v3:
> 	 - fix support
> 	   mkdir mymount
> 	   mount -t ramfs none mymount/
> 	   ln /env/boot/net /mymount/link
> 
> 	 - addres comments
> 
> 	v2:
> 	 addres comments
> 
> please pull
> The following changes since commit b77300ac6c6bbbc7eac774ff0076c7c05d39735f:
> 
>   command/mount: add autodetection support (2012-08-21 18:53:00 +0800)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git tags/fs-symlink

It gets better. Now we still have:

# ln bla link
# ln bla link
# ls -l
lrwxrwxrwx          3 link -> bla
lrwxrwxrwx          3 link -> bla

# ln a b
# rmdir b
unable to handle NULL pointer dereference at address 0x00000008
pc : [<a7f25fd0>]    lr : [<a7f25fb4>]
sp : a6eff948  ip : 00000003  fp : 00000000
r10: a6ffbddc  r9 : 00000000  r8 : 00000002
r7 : 00000000  r6 : 00000000  r5 : a6fe0e98  r4 : a6ffbb44
r3 : 00000000  r2 : 00000000  r1 : a6ffbdc7  r0 : 00000000
Flags: nZCv  IRQs off  FIQs off  Mode SVC_32
[<a7f25fd0>] (ramfs_rmdir+0x48/0x78) from [<a7f28660>] (rmdir+0x5c/0x88)
[<a7f28660>] (rmdir+0x5c/0x88) from [<a7f18628>] (do_rmdir+0x28/0x6c)
[<a7f18628>] (do_rmdir+0x28/0x6c) from [<a7f050b4>] (execute_command+0x38/0x7c)
[<a7f050b4>] (execute_command+0x38/0x7c) from [<a7f01efc>] (run_list_real+0x8dc/0x9dc)
[<a7f01efc>] (run_list_real+0x8dc/0x9dc) from [<a7f02144>] (parse_stream_outer+0x148/0x238)
[<a7f02144>] (parse_stream_outer+0x148/0x238) from [<a7f024cc>] (run_shell+0x3c/0x7c)
[<a7f024cc>] (run_shell+0x3c/0x7c) from [<a7f050b4>] (execute_command+0x38/0x7c)
[<a7f050b4>] (execute_command+0x38/0x7c) from [<a7f01efc>] (run_list_real+0x8dc/0x9dc)
[<a7f01efc>] (run_list_real+0x8dc/0x9dc) from [<a7f01a58>] (run_list_real+0x438/0x9dc)

[<a7f2c524>] (unwind_backtrace+0x0/0x9c) from [<a7f1bce0>] (panic+0x28/0x3c)
[<a7f1bce0>] (panic+0x28/0x3c) from [<a7f2c97c>] (do_exception+0x10/0x14)
[<a7f2c97c>] (do_exception+0x10/0x14) from [<a7f2ca08>] (do_data_abort+0x2c/0x38)
[<a7f2ca08>] (do_data_abort+0x2c/0x38) from [<a7f2c750>] (data_abort+0x50/0x60)

While you are at it, the 'ln' command should be under "file commands",
not under "scripting commands".

For links to directories I agree, this is nontrivial and can be added
later. I don't see though why links to links shouldn't be supported from
the start. All it takes is the following, right?

8<------------------------------------------------

diff --git a/fs/fs.c b/fs/fs.c
index 7c59126..447b56f 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -580,13 +580,13 @@ EXPORT_SYMBOL(unlink);
 static char *realfile(const char *pathname, struct stat *s)
 {
 	char *path = normalise_path(pathname);
-	int ret;
+	int ret, recursive = 16;
 
 	ret = lstat(path, s);
 	if (ret)
 		goto out;
 
-	if (S_ISLNK(s->st_mode)) {
+	while (S_ISLNK(s->st_mode)) {
 		char tmp[PATH_MAX];
 		char *new_path;
 
@@ -603,10 +603,16 @@ static char *realfile(const char *pathname, struct stat *s)
 		path = new_path;
 
 		ret = lstat(path, s);
+		if (ret)
+			goto out;
+
+		if (!recursive--) {
+			ret = -ELOOP;
+			goto out;
+		}
 	}
 
-	if (!ret)
-		return path;
+	return path;
 
 out:
 	free(path);

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
