Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo1.mail-out.ovh.net ([188.165.38.232]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1StBVA-000105-0s
 for barebox@lists.infradead.org; Mon, 23 Jul 2012 05:48:17 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 69402FF94AB
 for <barebox@lists.infradead.org>; Mon, 23 Jul 2012 07:53:54 +0200 (CEST)
Date: Mon, 23 Jul 2012 07:48:50 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120723054850.GL22657@game.jcrosoft.org>
References: <500C4933.8050202@web.de>
 <500C6C5E.2020604@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <500C6C5E.2020604@web.de>
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
Subject: Re: AT91SAM9263-ek - Kernel panic
To: Stutz Sven <stutzsven@web.de>
Cc: barebox@lists.infradead.org

On 23:10 Sun 22 Jul     , Stutz Sven wrote:
>    Hello to everybody,
> 
>    previously I have had some doubts to run a Linux kernel on this evalboard.
>    Especially to find a BSP for my board ....
> 
>    In the meantime I have had some problems which I was able to solve by
>    myself or reading through different forums.
the mainline kernel work perfectly on it
> 
>    I still have some problems with Barebox and it's ECC for the NAND-Flash
>    and also the asterix * in this nand -a /dev/nand0.* is not working. (It is
>    working when I am doing it manually).
> 
>    But in total I am able to load and start Barebox and then again loading
>    and starting the kernel.
> 
>    First I have seen nothing until I switch on the special function
>    earlyprintk=serial,ttyS0,115200n8
>    After that I saw that I have mounting/partitioning problem, so I changed
>    the board specific init.c
>    in that way that the first three partitions match exactly to the
>    definition in the configuration file for the init script of Barebox.
> 
>        init.c > devfs_add_partition("nand0", 0x00000, SZ_128K,
>    DEVFS_PARTITION_FIXED,"at91bootstrap_raw");
>                    dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
>                    devfs_add_partition("nand0", SZ_128K, SZ_256K,
>    DEVFS_PARTITION_FIXED, "self_raw");
>                    dev_add_bb_dev("self_raw", "self0");
>                    devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K,
>    DEVFS_PARTITION_FIXED, "env_raw");
>                    dev_add_bb_dev("env_raw", "env0");
> 
>        env/config >
>    nand_parts="128k(at91bootstrap),256k(barebox),128k(bareboxenv),4M(kernel),80M(rootfs),-(data)"
>                    rootfs_mtdblock_nand=4
>                    rootfs_mtdblock_type=jffs2
> 
>    After that I was really happy that the kernel is prompting "VFS: Mounted
>    root (jffs2 filesystem)"
>    But the next kernel panic is near
>    It cannot find a init script.
>    I tried init=/bin/init, init=/sbin/init init=linuxrc everything with out
>    success each time the same failure occur. I also tried to execute a simple
>    command like init=/bin/ls ...
> 
>    But I see in sysroot-target a softlink linuxrc -> /bin/busybox and also
>    in the root-folder root/sbin/ init-> ../bin/busybox
>    Waht is the difference of those directories? (I thought the root folder is
>    the result for the target, so everything in there will be contained in the
>    root.jffs2)
> 
>    I have also changed in busybox between soft and hard links ...
>    How can I solve this problem?
>    Has anyone a hint for me, pls?
it seems you use the wrong ABI to complie your rootfs

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
