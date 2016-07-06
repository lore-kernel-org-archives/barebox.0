Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22f.google.com ([2a00:1450:400c:c09::22f])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bKnQE-0007Yq-OW
 for barebox@lists.infradead.org; Wed, 06 Jul 2016 14:03:27 +0000
Received: by mail-wm0-x22f.google.com with SMTP id z126so113029017wme.0
 for <barebox@lists.infradead.org>; Wed, 06 Jul 2016 07:03:05 -0700 (PDT)
Received: from gmail.com (p578a7230.dip0.t-ipconnect.de. [87.138.114.48])
 by smtp.gmail.com with ESMTPSA id t71sm1449912wmt.24.2016.07.06.07.03.02
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Wed, 06 Jul 2016 07:03:03 -0700 (PDT)
Date: Wed, 6 Jul 2016 16:02:45 +0200
From: Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>
Message-ID: <20160706140245.GA21034@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Bug?
To: Barebox List <barebox@lists.infradead.org>

Hi,

overwriting a file in barebox, didn't work properly.

---------------------- 8< -------------------------
unable to handle NULL pointer dereference at address 0x00000000
pc : [<2ff20f86>]    lr : [<2ff20eff>]
sp : 2ffef808  ip : 201383fc  fp : 00000000
r10: 2003cc94  r9 : 20138665  r8 : 00000269
r7 : 00000000  r6 : 1ff9a5d0  r5 : 00001fff  r4 : 00000269
r3 : 00000000  r2 : 00001fff  r1 : 00000000  r0 : 201383fc
Flags: Nzcv  IRQs off  FIQs off  Mode SVC_32
[<2ff20f86>] (ramfs_read+0xba/0xc8) from [<2ff228d5>] (__read+0x41/0x58)
[<2ff228d5>] (__read+0x41/0x58) from [<2ff22f6f>] (read+0x2b/0x48)
[<2ff22f6f>] (read+0x2b/0x48) from [<2ff1ca31>] (copy_file+0x85/0x118)
[<2ff1ca31>] (copy_file+0x85/0x118) from [<2ff14ead>] (do_cp+0x109/0x128)
[<2ff14ead>] (do_cp+0x109/0x128) from [<2ff03209>] (execute_command+0x21/0x48)
[<2ff03209>] (execute_command+0x21/0x48) from [<2ff07443>] (run_list_real+0x56b/0x638)
[<2ff07443>] (run_list_real+0x56b/0x638) from [<2ff06da9>] (parse_stream_outer+0xd9/0x164)
[<2ff06da9>] (parse_stream_outer+0xd9/0x164) from [<2ff076d1>] (run_shell+0x31/0x60)
[<2ff076d1>] (run_shell+0x31/0x60) from [<2ff03209>] (execute_command+0x21/0x48)
[<2ff03209>] (execute_command+0x21/0x48) from [<2ff07443>] (run_list_real+0x56b/0x638)
[<2ff07443>] (run_list_real+0x56b/0x638) from [<2ff0715d>] (run_list_real+0x285/0x638)

[<2ff28519>] (unwind_backtrace+0x1/0x58) from [<2ff00cd1>] (panic+0x1d/0x2c)
[<2ff00cd1>] (panic+0x1d/0x2c) from [<2ff289bd>] (do_exception+0xd/0x10)
[<2ff289bd>] (do_exception+0xd/0x10) from [<2ff28a1d>] (do_data_abort+0x21/0x2c)
[<2ff28a1d>] (do_data_abort+0x21/0x2c) from [<2ff28714>] (do_abort_6+0x48/0x54)
---------------------- 8< -------------------------

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
