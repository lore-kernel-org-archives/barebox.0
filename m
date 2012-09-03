Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8S7u-000178-Q6
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 08:35:23 +0000
Date: Mon, 3 Sep 2012 10:35:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120903083520.GD26594@pengutronix.de>
References: <20120901123511.GA19233@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120901123511.GA19233@game.jcrosoft.org>
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
Subject: Re: [PATCH 00/18 v2] fs: add symlink and readlink support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Sep 01, 2012 at 02:35:11PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
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
> 

The following results in a crash here:

# mkdir mymount
# mount -t ramfs none mymount/
# ln /env/boot/net /mymount/link
unable to handle paging request at address 0x1b5f655c
pc : [<a7f044f0>]    lr : [<a7f04b10>]
sp : a6eff908  ip : 00000003  fp : 00000000
r10: a6f0efe4  r9 : 00000000  r8 : 00000003
r7 : 00000000  r6 : a6f00000  r5 : a6f0eff4  r4 : a6f0efec
r3 : 1b5f6560  r2 : a6f0eff4  r1 : a6f0eff4  r0 : a6f0efec
Flags: NzCv  IRQs off  FIQs off  Mode SVC_32
[<a7f044f0>] (block_link_next+0x18/0x1c) from [<a7f04b10>] (tlsf_free+0x1c/0x88)
[<a7f04b10>] (tlsf_free+0x1c/0x88) from [<a7f2828c>] (symlink+0xd0/0xfc)
[<a7f2828c>] (symlink+0xd0/0xfc) from [<a7f1ac8c>] (do_ln+0x14/0x3c)
[<a7f1ac8c>] (do_ln+0x14/0x3c) from [<a7f050b4>] (execute_command+0x38/0x7c)
[<a7f050b4>] (execute_command+0x38/0x7c) from [<a7f01efc>] (run_list_real+0x8dc/0x9dc)
[<a7f01efc>] (run_list_real+0x8dc/0x9dc) from [<a7f02144>] (parse_stream_outer+0x148/0x238)
[<a7f02144>] (parse_stream_outer+0x148/0x238) from [<a7f024cc>] (run_shell+0x3c/0x7c)
[<a7f024cc>] (run_shell+0x3c/0x7c) from [<a7f050b4>] (execute_command+0x38/0x7c)
[<a7f050b4>] (execute_command+0x38/0x7c) from [<a7f01efc>] (run_list_real+0x8dc/0x9dc)
[<a7f01efc>] (run_list_real+0x8dc/0x9dc) from [<a7f01a58>] (run_list_real+0x438/0x9dc)

[<a7f2c5e4>] (unwind_backtrace+0x0/0x9c) from [<a7f1bce0>] (panic+0x28/0x3c)
[<a7f1bce0>] (panic+0x28/0x3c) from [<a7f2ca3c>] (do_exception+0x10/0x14)
[<a7f2ca3c>] (do_exception+0x10/0x14) from [<a7f2cac8>] (do_data_abort+0x2c/0x38)
[<a7f2cac8>] (do_data_abort+0x2c/0x38) from [<a7f2c810>] (data_abort+0x50/0x60)



-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
