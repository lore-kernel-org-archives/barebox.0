Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YL6zZ-0008CL-VD
 for barebox@lists.infradead.org; Tue, 10 Feb 2015 09:20:26 +0000
Date: Tue, 10 Feb 2015 10:20:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150210092003.GW12209@pengutronix.de>
References: <29A2697B0516A946B1023D5E798DFCF67BAB6E85@mail-ying>
 <20150203201134.GQ12209@pengutronix.de>
 <29A2697B0516A946B1023D5E798DFCF67BAB6F45@mail-ying>
 <20150205101645.GB12209@pengutronix.de>
 <29A2697B0516A946B1023D5E798DFCF67BAB71AD@mail-ying>
 <20150205212335.GF12209@pengutronix.de>
 <29A2697B0516A946B1023D5E798DFCF67BAB72A5@mail-ying>
 <20150209071849.GR12209@pengutronix.de>
 <29A2697B0516A946B1023D5E798DFCF67BAB743C@mail-ying>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <29A2697B0516A946B1023D5E798DFCF67BAB743C@mail-ying>
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
Subject: Re: saveenv & erase with bad blocks present
To: "Boulais, Marc-Andre" <maboulais@rheinmetall.ca>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Marc-Andre,

I just sent an updated series for the nand issues. With this I tested
bootstrapping the board completly from SD card using the nand_bootstrap
script. I also tested 'saveenv' successfully.

On Mon, Feb 09, 2015 at 01:37:26PM +0000, Boulais, Marc-Andre wrote:
> Hi Sascha,
> I start the patched/fixed version in second stage. My PCM049 board is
> programmed with Phytec's BSP Barebox 2013.06.0. Upon entering its
> prompt, I start v 15.02.0 with your patches using tftp and bootm
> commands.
> 
> The "wrong crc on env superblock" message appears after I execute
> v15.02.0 with the bootm comand. It does not appear in the resident
> Barebox startup.
> 
> Note: The first time I tried your patches, I had this error message:
> nand_erase_nand: attempt to erase a bad block at page [...]
> 
> Since we were considering potential problems in the nand driver to
> cause a "false" bad block, I commented out the bad block check in
> function nand_erase_nand() (nand/nand_base.c):

>  	instr->state = MTD_ERASING;
> 
> 	while (len) {
> #if 0
> 		/* Check if we have a bad block, we do not erase bad blocks! */
> 		if (!mtd->allow_erasebad &&
> 				nand_block_checkbad(mtd, ((loff_t) page) <<
> 					chip->page_shift, 0, allowbbt)) {
> 			pr_warn("%s: attempt to erase a bad block at page 0x%08x\n",
> 				    __func__, page);
> 			instr->state = MTD_ERASE_FAILED;
> 			goto erase_exit;
> 		}
> #endif

The way to do this without sourcecode changes is to enable
CONFIG_NAND_ALLOW_ERASE_BAD and do a 'nand0.erasebad=1'

You should make sure to use a consistent barebox version state for both
the MLO and the full barebox later. Unfortunately the ECC layout
information and partition information of the NAND is stored in the
bootloader binaries and not on the device. This makes for a good source
of unpredictable errors.

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
