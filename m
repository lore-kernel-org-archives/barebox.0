Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 31.mail-out.ovh.net ([213.186.62.10])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OtzuJ-0002FZ-R3
	for barebox@lists.infradead.org; Fri, 10 Sep 2010 09:28:32 +0000
Date: Fri, 10 Sep 2010 11:27:37 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100910092737.GO9112@game.jcrosoft.org>
References: <AANLkTi=M-LyNQqYmBmrMivx-Ymfw3PQJvXvZFLjJ_rz6@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTi=M-LyNQqYmBmrMivx-Ymfw3PQJvXvZFLjJ_rz6@mail.gmail.com>
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
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

On 11:01 Fri 10 Sep     , Belisko Marek wrote:
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
you are not supposed to write directly to nand0

but to nand0.bb

tftp barebox.bin /dev/nand0.bb

after you need a barebox that boor from NAND

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
