Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from fmmailgate03.web.de ([217.72.192.234])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PUgNG-0008Ut-1D
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 14:06:06 +0000
Date: Mon, 20 Dec 2010 15:06:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101220140600.GQ6017@pengutronix.de>
References: <AANLkTimRU=-AufgJ0qXBfSSgWiHfaBbnL_e9jdTLVo22@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTimRU=-AufgJ0qXBfSSgWiHfaBbnL_e9jdTLVo22@mail.gmail.com>
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
Subject: Re: nand_boot_test problem
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

Hi Marek,

On Mon, Dec 20, 2010 at 11:46:44AM +0100, Belisko Marek wrote:
> Hi,
> 
> I'm trying to add support for mini2440 to boot from NAND flash.
> I overtake boot code from u-boot and re-use a9m2410 lowlevel_init.S.
> 
> I could load barebox.bin to NAND flash anyway when try to test command
> nand_boot_test 0x31fc0000 262144 512 I get no error just board is reseted.

No idea. Can you add some printfs to see how far you get?

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
