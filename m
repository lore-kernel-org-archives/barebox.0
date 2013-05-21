Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uemwj-00069N-5l
 for barebox@lists.infradead.org; Tue, 21 May 2013 13:49:46 +0000
Date: Tue, 21 May 2013 15:49:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130521134920.GP32299@pengutronix.de>
References: <1368987835-13323-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1368987835-13323-5-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1368987835-13323-5-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 04/11] arm: mvebu: convert Dove to common init
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On Sun, May 19, 2013 at 08:23:48PM +0200, Sebastian Hesselbarth wrote:
> This patch converts Marvell Dove SoC init to make use of common lowlevel
> and init functions. Postcore initcall will now setup memory controller
> base registers to match internal registers base, probe real memory size,
> and setup UART console by config option.
> 
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

This patch breaks bisectibility:

 config:     arm              globalscale_guruplug_defconfig
arch/arm/mach-mvebu/built-in.o: In function `barebox_arm_reset_vector':
lowlevel.c:(.text.barebox_arm_reset_vector+0x0): multiple definition of `barebox_arm_reset_vector'
arch/arm/boards/globalscale-guruplug/built-in.o:lowlevel.c:(.text.barebox_arm_reset_vector+0x0): first defined here
make: *** [barebox] Error 1
------------------------------------------------------------
 config:     arm              globalscale_mirabox_defconfig
arch/arm/mach-mvebu/armada-370-xp.o: In function `mvebu_barebox_entry':
armada-370-xp.c:(.text.mvebu_barebox_entry+0x0): multiple definition of `mvebu_barebox_entry'
arch/arm/mach-mvebu/common.o:common.c:(.text.mvebu_barebox_entry+0x0): first defined here
make[1]: *** [arch/arm/mach-mvebu/built-in.o] Error 1
make: *** [arch/arm/mach-mvebu] Error 2
make: *** Waiting for unfinished jobs....

I'm fine with squashing the rest of this series together in a single
patch. Is this ok with you or do you want to look for a better solution?

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
