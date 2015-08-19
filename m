Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZS3zG-0007JV-9k
 for barebox@lists.infradead.org; Wed, 19 Aug 2015 14:05:06 +0000
Date: Wed, 19 Aug 2015 16:04:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150819140443.GZ18700@pengutronix.de>
References: <55D442E9.6030306@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <55D442E9.6030306@gmail.com>
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
Subject: Re: delay in the IMXCFG file
To: Igor Plyatov <plyatov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Igor,

On Wed, Aug 19, 2015 at 11:48:41AM +0300, Igor Plyatov wrote:
> Dear all,
> 
> for debugging purposes I need to add some delays into the <BOARD
> NAME>.imxcfg file, but does not know which format it is. It looks
> like some kind of C, but it is confusing.
> 
> Where is defined "wm 32", "soc", "dcdofs", "loadaddr" command and others?

They are interpreted in the imx-image tool, see scripts/imx/README and
scripts/imx/imx-image.c. The imx-image tool converts the commands into a
dcd table which is understood by the Freescale i.MX ROM Code. The ROM
code does not provide a delay command, so what you are looking for does
not exist. All the is is a nop command. This is currently not
implemented in imx-image, you would have to add it.

> 
> Which commands I can use in the IMXCFG file to create very early
> delay, before initialization of DRAM?

As said, there is nop. Otherwise there is a 'check' command to poll for
setting/clearing bits.
See the i.MX reference manual in the "Device Configuration Data (DCD)"
section for further information.

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
