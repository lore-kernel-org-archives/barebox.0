Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SvmR3-00058C-Qx
 for barebox@lists.infradead.org; Mon, 30 Jul 2012 09:38:48 +0000
Date: Mon, 30 Jul 2012 11:38:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120730093836.GS30009@pengutronix.de>
References: <1343547714-32740-1-git-send-email-marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343547714-32740-1-git-send-email-marc@cpdesign.com.au>
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
Subject: Re: at24 eeprom driver (V2) and misc patches
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

Hi Marc,

On Sun, Jul 29, 2012 at 05:41:47PM +1000, Marc Reilly wrote:
> Hi,
> 
> These patches add an (improved) at24 eeprom driver and some other fixes. The
> eeprom driver has improved write handling that polls the device for write 
> completion (rather than fixed 10ms delay).
> 
> The eeprom driver requires patch 3 and 4. 
> 
> The nand patches fix a build error when BBT is not enabled.

For now I applied patch 1 & 2, but I squashed them into a single commit,
because otherwise we would introduce a build warning (unused function)
between those two patches.

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
