Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gNYbz-0005JG-71
 for barebox@lists.infradead.org; Fri, 16 Nov 2018 07:32:20 +0000
Date: Fri, 16 Nov 2018 08:32:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181116073206.3773odofpb2xxnbl@pengutronix.de>
References: <1542295458.2675.12.camel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1542295458.2675.12.camel@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Transferring files over tftp
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

Hi Teresa,

On Thu, Nov 15, 2018 at 04:24:18PM +0100, Teresa Remmet wrote:
> Hello,
> =

> I am facing tftp issues when trying to transfer files > 2GB. This ends up=
 in a crash:
> =

> barebox@Phytec phyCORE AM335x:/ cp /mnt/tftp/2GB_plus_1M .
> eth0: 100Mbps full duplex link detected
> T T T T T T T T T T T T T T read: Connection timed out
> unable to handle paging request at address 0x200d319a
> pc : [<9fe0587a>]=A0=A0=A0=A0lr : [<9fe058cb>]
> sp : 9ffef810=A0=A0ip : ffffffff=A0=A0fp : 9004d4d0
> r10: 00000000=A0=A0r9 : 9004e410=A0=A0r8 : 00000006
> r7 : 00000000=A0=A0r6 : 8fefeec0=A0=A0r5 : a79cdbf6=A0=A0r4 : 200d318e
> r3 : 0000001a=A0=A0r2 : 00000019=A0=A0r1 : 9004f40c=A0=A0r0 : 8fefeec0
> Flags: nzCv=A0=A0IRQs off=A0=A0FIQs on=A0=A0Mode SVC_32
> [<9fe0587a>] (remove_free_block+0xe/0x3e) from [<9fe058cb>] (block_remove=
+0x21/0x24)
> [<9fe058cb>] (block_remove+0x21/0x24) from [<9fe058eb>] (block_merge_next=
+0x1d/0x34)
> [<9fe058eb>] (block_merge_next+0x1d/0x34) from [<9fe05b73>] (tlsf_free+0x=
55/0x62)
> [<9fe05b73>] (tlsf_free+0x55/0x62) from [<9fe408e7>] (copy_file+0x77/0x13=
c)
> [<9fe408e7>] (copy_file+0x77/0x13c) from [<9fe33c41>] (do_cp+0x101/0x124)
> [<9fe33c41>] (do_cp+0x101/0x124) from [<9fe0318d>] (execute_command+0x21/=
0x48)
> [<9fe0318d>] (execute_command+0x21/0x48) from [<9fe07c81>] (run_list_real=
+0x5a9/0x608)
> [<9fe07c81>] (run_list_real+0x5a9/0x608) from [<9fe075dd>] (parse_stream_=
outer+0x105/0x1
> 5c)
> [<9fe075dd>] (parse_stream_outer+0x105/0x15c) from [<9fe07ea3>] (run_shel=
l+0x33/0x60)
> [<9fe07ea3>] (run_shell+0x33/0x60) from [<9fe0318d>] (execute_command+0x2=
1/0x48)
> [<9fe0318d>] (execute_command+0x21/0x48) from [<9fe07c81>] (run_list_real=
+0x5a9/0x608)
> [<9fe07c81>] (run_list_real+0x5a9/0x608) from [<9fe0796d>] (run_list_real=
+0x295/0x608)
> =

> [<9fe5603d>] (unwind_backtrace+0x1/0x58) from [<9fe00cf1>] (panic+0x1d/0x=
34)
> [<9fe00cf1>] (panic+0x1d/0x34) from [<9fe543ad>] (do_exception+0xd/0x10)
> [<9fe543ad>] (do_exception+0xd/0x10) from [<9fe5440d>] (do_data_abort+0x2=
1/0x2c)
> [<9fe5440d>] (do_data_abort+0x21/0x2c) from [<9fe54134>] (do_abort_6+0x48=
/0x54)
> =

> Copying a file <2GB works even without timeouts.
> =

> Causing this seems to be commit:
> =

> commit e3e55fa3aa698bb92fa4362a36e102749c13c124
> Author: Sascha Hauer <s.hauer@pengutronix.de>
> Date:=A0=A0=A0Thu Aug 30 12:27:00 2018 +0200
> =

> =A0=A0=A0=A0fs: tftp: improve file size handling
> =A0=A0=A0=A0
> =A0=A0=A0=A0Previously we used FILE_SIZE_STREAM unconditionally. Instead,=
 fill the
> =A0=A0=A0=A0inode size with a valid filesize if we have one and only if n=
ot fall
> =A0=A0=A0=A0back to FILE_SIZE_STREAM.
> =

> Reverting the commit reveals a second issue. After 2GB the transfer break=
s up silently.
> Maybe some overflow? Any idea where to look at this further?

As a first step try the attached patch which makes the filesize in tftp
a 64bit type so that we at least can handle the filesize numbers.

I tried transferring a file > 2GiB here and it seemed to work, although
I don't have a board with that amount of memory, so I had to write to
/dev/null. I don't know if that makes a difference.

Also you probably begin to hit the limits of the tftp servers. I
realized that our tftp server (atftpd) only reports the filesize for
files smaller than 2GiB, with bigger files it only reports '0'.

I think other tftp servers begin to make problems when the 16bit block
counter overflows, so with working 2GiB files you are lucky already ;)

Sascha

--------------------------------------8<----------------------------------

From bf3de3391c958c9c44fcfa54b2c1a6a29e68a5a4 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Nov 2018 08:24:06 +0100
Subject: [PATCH] fs: tftp: Make filesize a 64bit type

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/tftp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 0d9ee6effd..8131ab27b3 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -80,7 +80,7 @@ struct file_priv {
 	int state;
 	int err;
 	char *filename;
-	int filesize;
+	loff_t filesize;
 	uint64_t resend_timeout;
 	uint64_t progress_timeout;
 	struct kfifo *fifo;
@@ -136,7 +136,7 @@ static int tftp_send(struct file_priv *priv)
 				"timeout%c"
 				"%d%c"
 				"tsize%c"
-				"%d%c"
+				"%lld%c"
 				"blksize%c"
 				"1432",
 				priv->filename + 1, 0,
@@ -235,7 +235,7 @@ static void tftp_parse_oack(struct file_priv *priv, uns=
igned char *pkt, int len)
 		if (val > s + len)
 			return;
 		if (!strcmp(opt, "tsize"))
-			priv->filesize =3D simple_strtoul(val, NULL, 10);
+			priv->filesize =3D simple_strtoull(val, NULL, 10);
 		if (!strcmp(opt, "blksize"))
 			priv->blocksize =3D simple_strtoul(val, NULL, 10);
 		pr_debug("OACK opt: %s val: %s\n", opt, val);
@@ -658,7 +658,7 @@ static struct dentry *tftp_lookup(struct inode *dir, st=
ruct dentry *dentry,
 	struct fs_device_d *fsdev =3D container_of(sb, struct fs_device_d, sb);
 	struct inode *inode;
 	struct file_priv *priv;
-	int filesize;
+	loff_t filesize;
 =

 	priv =3D tftp_do_open(&fsdev->dev, O_RDONLY, dentry);
 	if (IS_ERR(priv))
-- =

2.19.1


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
