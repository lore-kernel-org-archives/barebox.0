Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from walscop001.walsimou.com ([82.228.201.70]
	helo=bekkor.walsimou.com)
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OtzhZ-0004fX-Es
	for barebox@lists.infradead.org; Fri, 10 Sep 2010 09:15:22 +0000
Message-ID: <4C89F806.9050002@embtoolkit.org>
Date: Fri, 10 Sep 2010 11:19:02 +0200
From: Abdoulaye Walsimou Gaye <awg@embtoolkit.org>
MIME-Version: 1.0
References: <AANLkTi=M-LyNQqYmBmrMivx-Ymfw3PQJvXvZFLjJ_rz6@mail.gmail.com>
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
To: barebox@lists.infradead.org

On 09/10/2010 11:01 AM, Belisko Marek wrote:
> Hi,
>
> I'm porting barebox to mini2440 board.

Good news, I have this board and use a fork of u-boot from
http://repo.or.cz/w/u-boot-openmoko/mini2440.git
which is not maintained any more and it is not in mainline u-boot.

> I can boot barebox from SDRAM
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
>
>   

I am not familiar with barebox (I discovered it recently), but you seem
to wrongly
create your nand  image (think page size,  eraze block size, etc...)

> Thank's in advance,
>
> Marek
>
>   

Best regards,
AWG


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
