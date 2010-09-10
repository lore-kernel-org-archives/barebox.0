Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OtzuB-0002D8-Fi
	for barebox@lists.infradead.org; Fri, 10 Sep 2010 09:28:25 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 10 Sep 2010 11:27:01 +0200
References: <AANLkTi=M-LyNQqYmBmrMivx-Ymfw3PQJvXvZFLjJ_rz6@mail.gmail.com>
In-Reply-To: <AANLkTi=M-LyNQqYmBmrMivx-Ymfw3PQJvXvZFLjJ_rz6@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201009101127.01766.jbe@pengutronix.de>
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
Subject: Re: storing barebox to flash /dev/nand0
To: barebox@lists.infradead.org

Belisko Marek wrote:
> Hi,
>
> I'm porting barebox to mini2440 board. I can boot barebox from SDRAM
> by loading to TEXT_BASE address.
> I would like to test also booting from NAND flash but I can't find a
> way how to store barebox loaded in RAM
> to flash.
>
> I try tftp barebox.bin /dev/nand0 but if failed with:
>
> TFTP from server 10.146.1.21 ('barebox.bin' -> '/dev/nand0')
>         offset 0x00000200 not page aligned
> write: Invalid argument
>
> tftp failed: error -22
>
> How can I properly store to flash?

Consider the bad blocks in your NAND. So, you will need a bad block aware 
device to write to.

This code in your board specific init routine should add the thing:

[...]
/* ----------- add some vital partitions -------- */
devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
dev_add_bb_dev("self_raw", "self0");

devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_raw");
dev_add_bb_dev("env_raw", "env0");
[...]

(Sizes depending on the size of your boot loader binary).

And at runtime:

barebox> addpart /dev/nand0 256k(barebox)ro,128k(bareboxenv)
barebox> erase /dev/nand0.barebox.bb
barebox> tftp barebox.bin /dev/nand0.barebox.bb

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
