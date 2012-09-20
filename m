Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TEmrF-0008OL-IP
 for barebox@lists.infradead.org; Thu, 20 Sep 2012 19:56:22 +0000
Date: Thu, 20 Sep 2012 21:56:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120920195618.GT6180@pengutronix.de>
References: <1344781832-17978-1-git-send-email-s.hauer@pengutronix.de>
 <20120920185243.GK26553@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120920185243.GK26553@game.jcrosoft.org>
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
Subject: Re: [PATCH] ARM: enable MMU in pbl
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Sep 20, 2012 at 08:52:43PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 16:30 Sun 12 Aug     , Sascha Hauer wrote:
> > The following enables the MMU during decompression which speeds up
> > things significantly.
> 
> Atmel board does not boot
> 
> barebox@Atmel at91sam9m10g45-ek:/ dhcp && nfs
> /opt/work/barebox/build/sam9m10g45ek-compressed/arch/arm/pbl/zbarebox.bin &&
> bootm zbarebox.bin
> phy0: Link is up - 100/Full
> DHCP client bound to address 192.168.200.43
> 
> Filename
> '/opt/work/barebox/build/sam9m10g45ek-compressed/arch/arm/pbl/zbarebox.bin'.
> 	[#################################################################]
> 
> without MMU boot fine

does it work with the v1 version of this patch?

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
