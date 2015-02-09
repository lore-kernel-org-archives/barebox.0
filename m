Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx.rheinmetall.ca ([207.61.105.111])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YKoXG-00059g-4l
 for barebox@lists.infradead.org; Mon, 09 Feb 2015 13:37:59 +0000
From: "Boulais, Marc-Andre" <maboulais@rheinmetall.ca>
Date: Mon, 9 Feb 2015 13:37:26 +0000
Message-ID: <29A2697B0516A946B1023D5E798DFCF67BAB743C@mail-ying>
References: <29A2697B0516A946B1023D5E798DFCF67BAB6E85@mail-ying>
 <20150203201134.GQ12209@pengutronix.de>
 <29A2697B0516A946B1023D5E798DFCF67BAB6F45@mail-ying>
 <20150205101645.GB12209@pengutronix.de>
 <29A2697B0516A946B1023D5E798DFCF67BAB71AD@mail-ying>
 <20150205212335.GF12209@pengutronix.de>
 <29A2697B0516A946B1023D5E798DFCF67BAB72A5@mail-ying>
 <20150209071849.GR12209@pengutronix.de>
In-Reply-To: <20150209071849.GR12209@pengutronix.de>
Content-Language: en-US
MIME-Version: 1.0
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
Subject: RE: saveenv & erase with bad blocks present
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Sascha,
I start the patched/fixed version in second stage. My PCM049 board is programmed with Phytec's BSP Barebox 2013.06.0. Upon entering its prompt, I start v 15.02.0 with your patches using tftp and bootm commands.

The "wrong crc on env superblock" message appears after I execute v15.02.0 with the bootm comand. It does not appear in the resident Barebox startup.

Note: The first time I tried your patches, I had this error message:
nand_erase_nand: attempt to erase a bad block at page [...]

Since we were considering potential problems in the nand driver to cause a "false" bad block, I commented out the bad block check in function nand_erase_nand() (nand/nand_base.c):
 	instr->state = MTD_ERASING;

	while (len) {
#if 0
		/* Check if we have a bad block, we do not erase bad blocks! */
		if (!mtd->allow_erasebad &&
				nand_block_checkbad(mtd, ((loff_t) page) <<
					chip->page_shift, 0, allowbbt)) {
			pr_warn("%s: attempt to erase a bad block at page 0x%08x\n",
				    __func__, page);
			instr->state = MTD_ERASE_FAILED;
			goto erase_exit;
		}
#endif
	....

And then the erase operation appeared to have succeeded. After doing a reset and reloading Barebox v15.02.0, if I modify the environment and then execute "saveenv", my changes do not appear to ve saved if I do another reset...I am starting to think there was indeed a bad block in the bareboxenv NAND partition...I am checking with Phytec now.

Marc-Andre


-----Original Message-----
From: Sascha Hauer [mailto:s.hauer@pengutronix.de] 
Sent: February-09-15 2:19 AM
To: Boulais, Marc-Andre
Cc: barebox@lists.infradead.org
Subject: Re: saveenv & erase with bad blocks present

On Fri, Feb 06, 2015 at 05:03:59PM +0000, Boulais, Marc-Andre wrote:
> Ok, I did erase the nand0.bareboxenv partition and after a reset, partition size for the env looks good: 
> barebox@Phytec phyCORE-OMAP4460:/ ls /dev/nand0.bareboxenv* -l
> crw-------     131072 /dev/nand0.bareboxenv.bb   
> crw-------     131072 /dev/nand0.bareboxenv 
> barebox@Phytec phyCORE-OMAP4460:/ loadenv -d -s loading environment 
> from defaultenv barebox@Phytec phyCORE-OMAP4460:/ saveenv saving 
> environment
> 
> So I can now save the environment without errors. But if I edit the config file and then do "saveenv" and then I reset, my changes are not there anymore as if the saveenv didn't work.
> 
> Furthermore, I have this message " wrong crc on env superblock" that appears  in the boot output...
> What do you think ?

I'll try to reproduce that tomorrow.

Just to be sure: You applied the patches I posted to the list in the meantime. Is the barebox version flashed on your board the version with the patches applied or did you only start the fixed version second stage?

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
