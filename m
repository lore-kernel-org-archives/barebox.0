Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from moutng.kundenserver.de ([212.227.126.186])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TXteV-0008Vz-4C
 for barebox@lists.infradead.org; Mon, 12 Nov 2012 13:02:12 +0000
Message-ID: <50A0F349.6070008@cmotion.eu>
Date: Mon, 12 Nov 2012 14:02:01 +0100
From: Christian Kapeller <christian.kapeller@cmotion.eu>
MIME-Version: 1.0
References: <alpine.LSU.2.00.1211061440560.27068@redbean.intranet.gw-instruments.de>
 <20121112083339.GQ10369@pengutronix.de>
In-Reply-To: <20121112083339.GQ10369@pengutronix.de>
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
Subject: Re: TX53: Not Bootable from next tree
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, g@pengutronix.de, Peter Wippich <pewi@gw-instruments.de>

Hi,

> In the meantime, could you try removing the call to
> imx53_init_lowlevel() and try booting 2nd stage (from U-Boot or
> redboot)?

2nd stage booting TX83-8030 from redboot works with and without call to
imx53_init_lowlevel (boards/karo-tx53/lowlevel.c)

I've also looked at the DCD sequence at the beginning of the redboot and
bb (CONFIG_PBL=y) binaries and saw, that what set's them appart is:

flash_header.entry RB: 0x8FFC0000
flash_header.entry BB: 0x71000000

flash_header.boot_data_size = 0x1fd87;
flash_header.boot_data_size = 0x40000;


Barebox has an additional DCD Item compared to redboot:

arch/arm/boards/karo-tx53/dcd-data-xx30.h line 15:
DCD_NAME_XX30[] = {
	DCD_WR_CMD(0x21c),
	DCD_ITEM(0x53fd4068, 0xffcc0fff),
	DCD_ITEM(0x53fd406c, 0x000fffc3),


The DCD_WR_CMD(0x21c) duplicates the the last entries of the
flash_header_section structure:

arch/arm/boards/karo-tx53/flash_header.h line 68:
	.dcd.command.tag	= DCD_COMMAND_WRITE_TAG,
#ifdef CONFIG_TX53_REV_1011
	.dcd.command.length	= cpu_to_be16(sizeof(struct imx_dcd_command) +
sizeof(dcd_entry)),
#elif defined(CONFIG_TX53_REV_XX30)
	.dcd.command.length	= cpu_to_be16(0x21c),

So the DCD_WR_CMD(0x21c) seems to be superfluous.



I've adjusted entry address, the boot_data_size, and removed the
DCD_WR_CMD entry, to match the flash header to that of redboot, and
flashed that. That didn't show any improvement.

Also here the situation is the same with and without imx53_init_lowlevel.


Cheers,
Christian


-- 
Christian Kapeller
cmotion GmbH
Kriehubergasse 16
1050 Wien / Austria
http://www.cmotion.eu

christian.kapeller@cmotion.eu
Phone: +43 1 789 1096 38

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
